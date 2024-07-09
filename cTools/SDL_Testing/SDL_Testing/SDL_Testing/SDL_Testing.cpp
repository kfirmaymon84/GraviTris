// SDL_Testing.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <time.h>

#include "commonDisplayHandler.h"
#include "displayHandler.h"
#include "drawObjects.h"

void delay_ms(uint32_t timeout) {
    timeout += std::clock();
    while(std::clock() < timeout) continue;
}
extern uint32_t memoryBuffer[8192];

struct PowerUps_S powerUps = { true, true, false };
int main(int arc, char* argv[])
{

    displayInit();

    clrBuff(240,240);

    //draw8ColorBars();
    //drawBitmap(numbers[0], 0, 0, 16, 24, white);
    drawPowerUps(&powerUps, true);
    //drawGameBlock(10, 10, 0x24);
    //drawBorder(10, 10, 100, 100, 0xf, 0x2);
    drawScore(10000, true);
    for (int i = 0; i < 1000; i++) {
        drawScore(10000+i, false);
        delay_ms(10);
    }
    
    
    //drawEmpty(0, 10, 24, 5);
    //drawMemory();

    return EXIT_SUCCESS;
}
