#include "ioHandler.h"
#include <Windows.h>
#include <time.h>
#include <iostream>
using namespace std;

struct s_buttons buttons;

void buttonsTick() {
	// Input ========================
	//Controlls Aerrows: Right Left Down, Spin: Left control ket
	buttons.isRightPressed = (0x8000 & GetAsyncKeyState(VK_RIGHT)) != 0;
	buttons.isLeftPressed = (0x8000 & GetAsyncKeyState(VK_LEFT)) != 0;
	buttons.isDownPressed = (0x8000 & GetAsyncKeyState(VK_DOWN)) != 0;
	buttons.isSpinPressed = (0x8000 & GetAsyncKeyState(VK_LCONTROL)) != 0;
}

enum displayOrientation getDisplayRotetion() {
	static enum displayOrientation orientation = display_0Deg;

	if ((0x8000 & GetAsyncKeyState(0x30)) != 0) //	0 Key
		orientation = display_0Deg;
	else if ((0x8000 & GetAsyncKeyState(0x31)) != 0) //	1 Key
		orientation =  display_90Deg;
	else if ((0x8000 & GetAsyncKeyState(0x32)) != 0) //	2 Key
		orientation = display_180Deg;
	else if ((0x8000 & GetAsyncKeyState(0x33)) != 0) //	3 Key
		orientation = display_270Deg;
	
	return orientation;
}

void delay_ms(uint32_t timeout) {
	timeout += std::clock();
	while (std::clock() < timeout) continue;
}