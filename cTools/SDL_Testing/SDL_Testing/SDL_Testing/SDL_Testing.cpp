// SDL_Testing.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <time.h>

#include "gameEngine.h"

//#define GRID_WIDTH 4
//uint8_t grid1[GRID_WIDTH * GRID_WIDTH] = { 0 };
//

//void printGrid() {
//    for (uint8_t y = 0; y < GRID_WIDTH; y++) {
//        for (uint8_t x = 0; x < GRID_WIDTH; x++) {
//            printf("%1d, ", grid1[y * GRID_WIDTH + x]);
//        }
//        printf("\n");
//    }
//    printf("\n");
//}

int main(int arc, char* argv[])
{
    //GAME TICK run in main.
    gameTick();

    return EXIT_SUCCESS;
}
