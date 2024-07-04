#include "commonDisplayHandler.h"
#include <stdint.h>
#include <stdio.h>
#include "stdbool.h"

//#define FPGA
#include "displayHandler.h"


const uint16_t colorPallet[] = { BLACK, MAROON, GREEN, OLIVE,
                            NAVY, PURPLE, TEAL, SILVER,
                            GRAY, RED, LIME, YELLOW,
                            BLUE, FUCHSIA, AQUA, WHITE };

//############################# Common Display Handler //#############################

void tft_SetDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
	setDisplayWindow(x, y, x + width, y + height);
}

// draw 8 color bar to memory
void draw8ColorBars() {

    const int BAR_WIDTH = DISPLAY_WIDTH / 8;
    uint8_t barColor[8] = { white, yellow, teal, green, fuchsia, red, blue, black };

    setDisplayWindow(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT);

    uint16_t pixelCounter = 0;
    for (int h = 0; h < DISPLAY_HEIGHT; h++)
    {
        for (int w = 0; w < DISPLAY_WIDTH; w++) {
            uint8_t idx = w / BAR_WIDTH;

            writePixel(pixelCounter++, barColor[idx]);
        }
    }
}

uint8_t drawBitmap(uint8_t* img, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color) {
    setDisplayWindow(x, y, width, height);

    uint16_t pixel2Draw = width * height;
    uint16_t byteCounter = 0;
    uint8_t pixel = 0x00;
    uint32_t u32Pixels = 0;
    //uint8_t idx = 7; // bit mask select
    uint8_t bitPixels = img[byteCounter];
    uint16_t u32Idx = 1;

    uint8_t byteIdx = 0;
    for (int i = 0; i < pixel2Draw; i++) {
        uint8_t b = img[byteIdx];
        for (uint8_t bitIdx = 8; bitIdx > 0; bitIdx--) {
            if (b & (0x01 << (bitIdx - 1))) {
                u32Pixels |= color << ((bitIdx-1)*4);
            }
        }

        i += 7;
        byteIdx++;
        write32ToMemory(u32Idx++, u32Pixels);
        u32Pixels = 0;
    }

    return 1;
}

uint8_t drawGameBlock(uint8_t x, uint8_t y, uint8_t colors) {
    setDisplayWindow(x, y, 10, 10);

    uint8_t borderColor = white;
    uint8_t color1 = colors >> 4;
    uint8_t color2 = colors & 0x0F;
    uint16_t pixelCounter = 0;
    for (uint8_t line = 0; line < 10; line++) {
        // Draw line 0 and last full color 1
        if (line == 0 || line == 9) {
            for(int i=0;i<10;i++){
                writePixel((line * 10) + i, borderColor);
            }

            pixelCounter += 10;
        }
        else if (line == 1 || line == 2 || line == 7 || line == 8) {
            // draw line 1,2,7,8
            for (int i = 0; i < 10; i++) {
                if(i==0 || i == 9)
                    writePixel((line * 10) + i, borderColor);
                else
                    writePixel((line * 10) + i, color1);
            }
            pixelCounter += 10;
        }
        else if (line == 3 || line == 6) {
            // draw lines 3, 6
            for (int i = 0; i < 10; i++) {
                if (i == 1 || i == 2 || i == 7 || i == 8)
                    writePixel((line * 10) + i, color1);
                else
                    writePixel((line * 10) + i, borderColor);
            }
            pixelCounter += 10;
        }
        else
        {
            // draw lines 4, 5
            for (int i = 0; i < 10; i++) {
                if (i == 1 || i == 2 || i == 7 || i == 8)
                    writePixel((line * 10) + i, color1);
                else if(i == 4 || i == 5)
                    writePixel((line * 10) + i, color2);
                else
                    writePixel((line * 10) + i, borderColor);
            }
            pixelCounter += 10;
        }
    }
    return 1;
}

uint8_t drawBorder(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color1, uint8_t color2) {
    //if width or height less then 6, box is too small.
    if (width < 6 || height < 6)
        return 0;

    //Set x,y, width, height
    takeOverride();
    setDisplayWindow(x, y, width, height);
    releaseOverride();
    
    uint16_t pixelCounter = 0;
    for (uint8_t line = 0; line < height; line++) {
        // Draw line 1 and last full color 1
        if (line == 0 || line == (height - 1)) {
            for (uint8_t i = 0; i < width; i++) {
                //color1
                writePixel(pixelCounter, color1);
                pixelCounter++;
            }
        }// Draw line 2 and last - 1, first and last pixel are color 1 all the rest are color 2.
        else if (line == 1 || line == (height - 2)) {
            for (uint8_t i = 0; i < width; i++) {
                uint8_t idx = pixelCounter % width;
                if (idx == 0 || idx == (width - 1)) {
                    //color1
                    writePixel(pixelCounter, color1);
                }
                else {
                    //color2
                    writePixel(pixelCounter, color2);
                }
                pixelCounter++;
            }
        }// Draw line 3 and last - 2, first thierd to last - 2 and last pixel are color 1, secound amd last - 1 are color 2.
        else if (line == 2 || line == (height - 3)) {
            for (uint8_t i = 0; i < width; i++) {
                uint8_t idx = pixelCounter % width;
                if (idx == 1 || idx == (width - 2)) {
                    //color2
                    writePixel(pixelCounter, color2);
                }
                else {
                    //color1
                    writePixel(pixelCounter, color1);
                }
                pixelCounter++;
            }
        }else {
            for (uint8_t i = 0; i < width; i++) {
                uint8_t idx = pixelCounter % width;
                if (idx == 0 || idx == 2 || idx == (width - 3) || idx == (width - 1)) {
                    //color1
                    writePixel(pixelCounter++, color1);
                }
                else if (idx == 1 || idx == (width - 2)) {
                    //color2
                    writePixel(pixelCounter++, color2);
                }
                else {
                    pixelCounter++;
                }
            }
        }
    }//End of for lines
    return 1;
}

void drawEmpty(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
    clrBuff(width, height);
    setDisplayWindow(x, y, width, height);
}

void drawScore( uint16_t score, bool isDrawBorder){
    if(isDrawBorder){

    }else{

    }
}