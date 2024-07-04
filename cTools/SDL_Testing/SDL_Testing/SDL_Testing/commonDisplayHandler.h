#ifndef _COMMON_DISPLAY_HANDLER_H_
#define _COMMON_DISPLAY_HANDLER_H_

#include "stdint.h"

#define DISPLAY_WIDTH 240
#define DISPLAY_HEIGHT 240

enum colors
{
    black = 0,
    maroon,
    green,
    olive,
    navy_blue,
    purple,
    teal,
    silver,
    gray,
    red,
    lime_green,
    yellow,
    blue,
    fuchsia,
    aqua_light,
    white,
};

#define BLACK   0x0000
#define MAROON  0x7861
#define GREEN   0x23e1
#define OLIVE   0x7c02
#define NAVY    0x100f
#define PURPLE  0x784f
#define TEAL    0x2bef
#define SILVER  0xbdf7
#define GRAY    0x8410
#define RED     0xf143
#define LIME    0x4fe4
#define YELLOW  0xffe5
#define BLUE    0x301f
#define FUCHSIA 0xf11f
#define AQUA    0x57ff
#define WHITE   0xffff

void draw8ColorBars();
uint8_t drawBitmap(uint8_t* img, uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color);
uint8_t drawGameBlock(uint8_t x, uint8_t y, uint8_t colors);
uint8_t drawBorder(uint8_t x, uint8_t y, uint8_t width, uint8_t height, uint8_t color1, uint8_t color2);
void drawEmpty(uint8_t x, uint8_t y, uint8_t width, uint8_t height);

#endif //_COMMON_DISPLAY_HANDLER_H_