#ifndef __DISPLAY_HANDLER_H_
#define __DISPLAY_HANDLER_H_

#include <stdint.h>

enum displayOrientation {
    display_0Deg = 0,
    display_90Deg,
    display_180Deg,
    display_270Deg
};

//######### common Display function #########
void displayInit();
void setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height);
void clrBuff(uint8_t width, uint8_t height);
void writeByteToMemory(uint16_t address, uint8_t data);
void write32ToMemory(uint16_t address, uint32_t data);
void writePixel(uint16_t pixelNumber, uint8_t color);
uint8_t getPixel(uint16_t pixelNumber);

void drawMemory();
void override_clearScreen();

void override_rotateScreen(uint8_t orientation);


#endif //__DISPLAY_HANDLER_H_
