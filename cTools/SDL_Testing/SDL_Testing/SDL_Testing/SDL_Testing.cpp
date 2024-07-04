// SDL_Testing.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

#include "commonDisplayHandler.h"
#include "displayHandler.h"
#include "drawObjects.h"

extern uint32_t memoryBuffer[8192];
int main(int arc, char* argv[])
{

    displayInit();

    clrBuff();

    //draw8ColorBars();
    //drawBitmap(numbers[0], 0, 0, 16, 24, white);
    //drawBitmap(rotate__iconrotate_icon24_24, 0, 0, 24, 24, white);
    //drawGameBlock(10, 10, 0x24);
    drawBorder(10, 10, 100, 100, 0xf, 0x2);
    drawMemory();
    //drawEmpty(0, 10, 24, 5);
    //drawMemory();

    return EXIT_SUCCESS;
}
