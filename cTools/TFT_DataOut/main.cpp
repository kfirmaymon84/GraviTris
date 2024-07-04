#include <iostream>
#include <stdint.h>
#include <stdio.h>
void printColor(FILE* fp, uint16_t Color);

void printColor(FILE* fp, uint16_t Color){
	fprintf(fp, "%02X\n",(Color >> 8) & 0x00ff);
	fprintf(fp, "%02X\n",Color  & 0x00ff);
}

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

uint16_t colorValue[]= {
	0x0000, //-- 0.   Black    0x0000
	0x7861, //-- 1.   Maroon   0x7861
	0x23e1, //-- 2.   Green    0x23e1
	0x7c02, //-- 3.   Olive    0x7c02
	0x100f, //-- 4.   Navy     0x100f
	0x784f, //-- 5.   Purple   0x784f
	0x2bef, //-- 6.   Teal     0x2bef
	0xbdf7, //-- 7.   Silver   0xbdf7
	0x8410, //-- 8.   Gray     0x8410
	0xf143, //-- 9.   Red      0xf143
	0x4fe4, //-- 10.A Lime     0x4fe4
	0xffe5, //-- 11.B Yellow   0xffe5
	0x301f, //-- 12.C Blue     0x301f
	0xf11f, //-- 13.D Fuchsia  0xf11f
	0x57ff, //-- 14.E Aqua     0x57ff
	0xffff  //-- 15.F White    0xffff	
};

const uint8_t WIDTH = 240;
const uint8_t HEIGHT = 240;
const int BARS = 8;
const int BAR_WIDTH = WIDTH / BARS;
uint8_t barColor[BARS] = {white, yellow, teal, green, fuchsia, red, blue, black};

int main(){
    FILE* destFile = fopen("ExpectedTFT_DataOut.txt", "wb");
 	fprintf(destFile, "2C\n");
	uint16_t pixCounter = 0;

	for (int h = 0; h < HEIGHT; h++)
	{
		for (int w = 0; w < WIDTH; w++) {
            pixCounter++;
			uint8_t idx = w / BAR_WIDTH;
			uint16_t pix = colorValue[barColor[idx]];
			printColor(destFile, pix);
		}
	}
    fclose(destFile);
	return 1;
}