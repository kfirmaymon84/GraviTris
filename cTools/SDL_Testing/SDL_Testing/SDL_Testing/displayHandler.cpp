#include <stdio.h>
#include <string.h>
#include "displayHandler.h"
#include "commonDisplayHandler.h"
#include <stdbool.h>
#include "drawObjects.h"
#include <SDL.h>

SDL_Event event;
SDL_Renderer* renderer;
SDL_Window* window;

/*--Frame memory maping :

--address | Data
------------------
-- 0x00000000 | [16 bit 0][8 bit Width][8 bit height]
-- 0x00000001 | [4 bit pixel 0][4 bit pixel 1][4 bit pixel 2][4 bit pixel 3] = > to[4 bit pixel 7]
-- 0x00000002 | [4 bit pixel 8][4 bit pixel 9][4 bit pixel 10][4 bit pixel 11] = > to[4 bit pixel 15]

-- and continue.*/

uint32_t memoryBuffer[8192] = { 0 };
uint8_t *mem8Ptr = (uint8_t*)memoryBuffer;
uint32_t *mem32Ptr = memoryBuffer;

typedef struct color
{
    uint8_t r;
    uint8_t g;
    uint8_t b;
}color;

const uint16_t my_colorPallet[] = { BLACK, MAROON, GREEN, OLIVE,
                            NAVY, PURPLE, TEAL, SILVER,
                            GRAY, RED, LIME, YELLOW,
                            BLUE, FUCHSIA, AQUA, WHITE };

uint8_t posX = 0, posY = 0;

void displayInit() {
    SDL_Init(SDL_INIT_VIDEO);
    SDL_CreateWindowAndRenderer(DISPLAY_WIDTH, DISPLAY_HEIGHT, 0, &window, &renderer);
    //SDL_Setba //need to select background color????

    //clearScreen();

    ////clearScreen();
    //clrBuff();
    //drawBitmap(spinOut24_24spinOut24_24, 0, 24, 24, 24, white);
    //drawMemory();


    //while (1) {
    //    if (SDL_PollEvent(&event) && event.type == SDL_QUIT)
    //        break;
    //}
    //SDL_DestroyRenderer(renderer);
    //SDL_DestroyWindow(window);
    //SDL_Quit();
}

color get565Color(uint8_t _16bitColor) {
    color ret = { 0 };
    // if color is outside 16 bit return BLACK.
    if(_16bitColor > 0xF)
    {
        return ret;
    }

    //Conver to RGB888 
    ret.r = (((my_colorPallet[_16bitColor] & 0xF800) >> 11) * 527 + 23) >> 6;
    ret.g = (((my_colorPallet[_16bitColor] & 0x07E0) >> 5) * 259 + 33) >> 6;
    ret.b = (((my_colorPallet[_16bitColor] & 0x001F)) * 527 + 23) >> 6;
    return ret;
}

//######### common Display function #########
// Different implementation

void setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
    posX = x;
    posY = y;

    memoryBuffer[0] = (width << 8) + height;
}

void clrBuff() {
    memset(memoryBuffer, 0, sizeof(memoryBuffer));
}

void writeByteToMemory(uint16_t address, uint8_t data) {
    mem8Ptr[address] = data;
}
void write32ToMemory(uint16_t address, uint32_t data) {
    mem32Ptr[address] = data;
}

void writePixel(uint16_t pixelNumber, uint8_t color) {
    //Get buffer u32 index
    uint16_t idx1 = 1 + (pixelNumber / 8);
    //Get 8 pixels from buffer
    uint32_t pixels = memoryBuffer[idx1];
    //Get byte index in u32
    uint8_t byteIdx = 3 - ((pixelNumber % 8) / 2);

    uint8_t *pixelsPtr = (uint8_t*)&memoryBuffer[idx1];

    uint8_t pixel = pixelsPtr[byteIdx];
    if (pixelNumber % 2 == 0)
        pixel = (pixel & 0x0F) + (color<<4);
    else
        pixel = (pixel & 0xF0) + color;

    pixelsPtr[byteIdx] = pixel;
}

uint8_t getPixel(uint16_t pixelNumber) {
    uint16_t idx1 = 1 + (pixelNumber / 8);
    uint32_t pixels = memoryBuffer[idx1];
    uint8_t byteIdx = 3 - ((pixelNumber % 8) / 2);
    uint8_t dualPixel = ((uint8_t*)&pixels)[byteIdx];

    uint8_t pixel = 0;
    if (pixelNumber % 2 == 0)
        pixel = dualPixel >> 4;
    else
        pixel = dualPixel & 0x0F;

    return pixel;
}
// draw canvas from memory
void drawMemory() {
    uint8_t drawWidth = memoryBuffer[0] >> 8;
    uint8_t drawHeight = memoryBuffer[0] & 0xFF;

    uint16_t pixelCount = drawWidth * drawHeight;
    uint16_t pixIdx = 0;
    color pixelColor = { 0 };
    uint8_t xIdx = 0;
    uint8_t yIdx = 0;

    uint8_t idx = 0;
    //SDL_RenderClear(renderer);
    for(int i = 0; i < pixelCount; i++) {
        uint8_t pix = getPixel(pixIdx++);
        pixelColor = get565Color(pix);

        if (xIdx == drawWidth) {
            yIdx++;
        }
        
        xIdx %= drawWidth;
        SDL_SetRenderDrawColor(renderer, pixelColor.r, pixelColor.g, pixelColor.b, 255);
        SDL_RenderDrawPoint(renderer, xIdx + posX, yIdx + posY);
        xIdx++;
    }
    SDL_RenderPresent(renderer);
}

void override_clearScreen() {
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);
    SDL_RenderPresent(renderer);
}
