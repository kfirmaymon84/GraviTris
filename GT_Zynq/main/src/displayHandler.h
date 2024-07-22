#ifndef __DISPLAY_HANDLER_H_
#define __DISPLAY_HANDLER_H_

#include "gpioHandler.h"

enum displayOrientation{
    display_0Deg = 0,
    display_90Deg,
    display_180Deg,
    display_270Deg
};
//Function declaration

//TFT Handler functions
void writePort(uint8_t data);
void writeCommand(uint8_t cmd);
void writeData(uint8_t data);
void resetDisplay();
void enterSleep();
void exitSleep();
void takeOverride();
void releaseOverride();
void displayInit();

//Display override functions
void override_clearScreen();
void override_8bar();
void override_writeColor(unsigned long color);
void override_rotateScreen(uint8_t orientation);

//RTL control functions
void setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height);
void write32ToMemory(uint16_t offset, uint32_t data);
void writePixel(uint16_t pixelNumber, uint8_t color);
void drawMemory();
void clearScreen();
void clrBuff(uint8_t width, uint8_t height);
// End function declaration

#endif //__DISPLAY_HANDLER_H_
