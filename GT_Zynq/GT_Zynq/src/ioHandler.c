#include "ioHandler.h"

s_buttons buttons;

void buttonsTick() {
	// Input ========================
	//Controlls Aerrows: Right Left Down, Spin: Left control ket
	buttons.isRightPressed = false;
	buttons.isLeftPressed = false;
	buttons.isDownPressed = false;
	buttons.isSpinPressed = false;
}