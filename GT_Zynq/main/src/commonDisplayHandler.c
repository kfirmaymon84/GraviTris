#include "commonDisplayHandler.h"
#include <stdint.h>
#include <stdio.h>
#include "stdbool.h"

//#define FPGA
#include "displayHandler.h"
#include "drawObjects.h"

const uint16_t colorPallet[] = { BLACK, MAROON, GREEN, OLIVE,
                            NAVY, PURPLE, TEAL, SILVER,
                            GRAY, RED, LIME, YELLOW,
                            BLUE, FUCHSIA, AQUA, WHITE };

//############################# Common Display Handler //#############################

// void tft_SetDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
// 	setDisplayWindow(x, y, x + width, y + height);
// }

//Draw 8 color bar to memory
void draw8ColorBars() {
    const int BAR_WIDTH = DISPLAY_WIDTH / 8;
    uint8_t barColor[8] = { white, yellow, teal, green, fuchsia, red, blue, black };

    clrBuff(240, 240);
    setDisplayWindow(0, 0, DISPLAY_WIDTH, DISPLAY_HEIGHT);

    uint16_t pixelCounter = 0;
    for (int h = 0; h < DISPLAY_HEIGHT; h++)
    {
        for (int w = 0; w < DISPLAY_WIDTH; w++) {
            uint8_t idx = w / BAR_WIDTH;
            writePixel(pixelCounter++, barColor[idx]);
        }
    }
    drawMemory();
}

uint8_t drawBitmap(uint8_t *img, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color) {
    clrBuff(width, height);
    setDisplayWindow(x, y, width, height);

    uint16_t pixel2Draw = width * height;
    uint32_t u32Pixels = 0;
    uint16_t u32Idx = 1;

    uint8_t byteIdx = 0;
    for (int i = 0; i < pixel2Draw; i++) {
        uint8_t b = img[byteIdx];
        for (uint8_t bitIdx = 8; bitIdx > 0; bitIdx--) {
            if (b & (0x01 << (bitIdx - 1))) {
                u32Pixels |= color << ((bitIdx - 1) * 4);
            }
        }

        i += 7;
        byteIdx++;
        write32ToMemory(u32Idx++, u32Pixels);
        u32Pixels = 0;
    }
    drawMemory();
    return 1;
}

uint8_t drawGameBlock(uint8_t x, uint8_t y, uint8_t colors) {
    clrBuff(10, 10);
    setDisplayWindow(x, y, 10, 10);

    uint8_t borderColor = white;
    uint8_t color1 = colors;
    uint8_t color2 = colors;//colors & 0x0F;
    for (uint8_t line = 0; line < 10; line++) {
        // Draw line 0 and last full color 1
        if (line == 0 || line == 9) {
            for (int i = 0; i < 10; i++) {
                writePixel((line * 10) + i, borderColor);
            }
        }
        else if (line == 1 || line == 2 || line == 7 || line == 8) {
            // draw line 1,2,7,8
            for (int i = 0; i < 10; i++) {
                if (i == 0 || i == 9)
                    writePixel((line * 10) + i, borderColor);
                else
                    writePixel((line * 10) + i, color1);
            }
        }
        else if (line == 3 || line == 6) {
            // draw lines 3, 6
            for (int i = 0; i < 10; i++) {
                if (i == 1 || i == 2 || i == 7 || i == 8)
                    writePixel((line * 10) + i, color1);
                else
                    writePixel((line * 10) + i, borderColor);
            }
        }
        else
        {
            // draw lines 4, 5
            for (int i = 0; i < 10; i++) {
                if (i == 1 || i == 2 || i == 7 || i == 8)
                    writePixel((line * 10) + i, color1);
                else if (i == 4 || i == 5)
                    writePixel((line * 10) + i, color2);
                else
                    writePixel((line * 10) + i, borderColor);
            }
        }
    }
    drawMemory();
    return 1;
}

void clearGameBlock(uint8_t x, uint8_t y) {
    clrBuff(10, 10);
    setDisplayWindow(x, y, 10, 10);
    drawMemory();
}

uint8_t drawBorder(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color1, uint8_t color2) {
    //if width or height less then 6, box is too small.
    if (width < 6 || height < 6)
        return 0;

    clrBuff(width, height);
    //Set x,y, width, height
    setDisplayWindow(x, y, width, height);

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
        }
        else {
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
    drawMemory();
    return 1;
}

void drawEmpty(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
    clrBuff(width, height);
    setDisplayWindow(x, y, width, height);
    drawMemory();
}

void drawScore(uint16_t score, bool isDrawBorder) {
    //Board parameters
    const uint8_t xPos = 5;
    const uint8_t yPos = 5;
    const uint8_t digitWidth = 16;
    const uint8_t digitHeight = 24;
    const uint8_t width = 6 + (5 * digitWidth);
    const uint8_t height = 6 + digitHeight;
    const uint8_t color1 = white;
    const uint8_t color2 = green;

    //Preset board
    if (isDrawBorder) {
        drawEmpty(xPos, yPos, width, height);
        drawBorder(xPos, yPos, width, height, color1, color2);
    }

    //Extract digits from score
    uint8_t digits[5];
    static uint8_t last_digits[5];
    digits[0] = (score / 10000);
    digits[1] = (score / 1000) % 10;
    digits[2] = (score / 100) % 10;
    digits[3] = (score / 10) % 10;
    digits[4] = score % 10;

    uint8_t dig_xPos = xPos + 3;
    uint8_t dig_yPos = yPos + 3;
    //Draw digits
    for (int i = 0; i < 5; i++) {
        //xil_printf("%d, x=%d, y=%d\n", digits[i], dig_xPos + (i * digitWidth), dig_yPos);
        if (digits[i] != last_digits[i] || isDrawBorder == true) {
            //Stor new digit to last digits buffer
            last_digits[i] = digits[i];
            //Clear digit space
            drawEmpty(dig_xPos + (i * digitWidth), dig_yPos, digitWidth, digitHeight);
            //Draw new digit
            drawBitmap((uint8_t*)&numbers[digits[i]][0],
                dig_xPos + (i * digitWidth),
                dig_yPos,
                digitWidth,
                digitHeight,
                white);
        }
    }
}

void drawPowerUps(PowerUps_S *powerUps, bool isDrawBorder) {
    //Board parameters
    const uint8_t xPos = 10;
    const uint8_t yPos = 50;
    const uint8_t iconWidth = 24;
    const uint8_t iconHeight = 24;
    const uint8_t width = 6 + iconWidth;
    const uint8_t height = 6 + (3 * iconHeight);
    const uint8_t color1 = white;
    const uint8_t color2 = blue;

    //Preset board
    if (isDrawBorder) {
        drawEmpty(xPos, yPos, width, height);
        drawBorder(xPos, yPos, width, height, color1, color2);
    }

    if (powerUps->isRotate) {
        drawBitmap((uint8_t*)rotate__iconrotate_icon24_24,
            xPos + 3,
            yPos + 3,
            iconWidth,
            iconHeight,
            white);
    }

    if (powerUps->isSpinOut) {
        drawBitmap((uint8_t*)spinOut24_24spinOut24_24,
            xPos + 3,
            yPos + 3 + iconHeight,
            iconWidth,
            iconHeight,
            white);
    }

    if (powerUps->isShake) {
        drawBitmap((uint8_t*)Shake_icon24_24,
            xPos + 3,
            yPos + 3 + iconHeight + iconHeight,
            iconWidth,
            iconHeight,
            white);
    }
}

void nextPiece(uint8_t piece, bool isDrawBorder) {
    //Board parameters
    const uint8_t xPos = 204;
    const uint8_t yPos = 50;
    const uint8_t width = 36;
    const uint8_t height = 65;
    const uint8_t color1 = white;
    const uint8_t color2 = blue;

    //Preset board
    if (isDrawBorder) {
        drawEmpty(xPos, yPos, width, height);
        drawBorder(xPos, yPos, width, height, color1, color2);
    }
    else {
        drawEmpty(xPos+3, yPos+3, width-6, height-6);
    }

    uint16_t idx = 0;
    for (int px = 0; px < 4; px++) {
        for (int py = 0; py < 4; py++) {
            uint8_t block = tetromino[piece][idx++];
            if (block != 0) {
                uint8_t color = ((piece + 1) << 4) + (piece + 1);
                drawGameBlock(xPos + (py*10), //X
                    yPos + 10 + (px*10),//Y
                    color);//Color

                //posToDel[idx++] = ((py * 16) + nCurrentX);
            }
        }
    }
}