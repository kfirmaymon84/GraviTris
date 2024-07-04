#include <iostream>
#include <stdint.h>

void memoryMap32();
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

const uint8_t WIDTH = 240;
const uint8_t HEIGHT = 240;
const int BARS = 8;
const int BAR_WIDTH = WIDTH / BARS;
uint8_t barColor[BARS] = {white, yellow, teal, green, fuchsia, red, blue, black};

uint8_t data = 0x00;
uint16_t address = 0x0000;
bool isEven = false;
uint8_t firstPixel = 0x00;
int main()
{
	memoryMap32();
	return 1;
}


void memoryMap32(){
    FILE* destFile = fopen("MemoryMap.coe", "wb");
	fprintf(destFile, "memory_initialization_radix=16;\n");
	fprintf(destFile, "memory_initialization_vector=\n");

    fprintf(destFile, "%08X\n",(WIDTH<<8 + HEIGHT));
    
	uint16_t pixCounter = 0;
	uint32_t pixel = 0;
	for (int h = 0; h < HEIGHT; h++)
	{
		for (int w = 0; w < WIDTH; w++) {
			uint8_t idx = w / BAR_WIDTH;
			uint8_t c = barColor[idx];
			uint8_t pixPos = (pixCounter%8);

			if (pixPos == 0)
				pixel =0;

			pixel |= (uint32_t)(c << ( (7-pixPos) *4 ));

			if(pixPos == 7){
				fprintf(destFile, "%08X\n",pixel);
			}
			
            pixCounter++;
		}
	}

    fclose(destFile);
}