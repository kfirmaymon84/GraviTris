#include "ioHandler.h"
#include "gpioHandler.h"

s_buttons buttons;
extern XGpio gpio;

void buttonsTick() {
	// Input ========================
	//Controlls Aerrows: Right Left Down, Spin: Left control ket
	buttons.isRightPressed = gpio_readPin(&gpio, PORTB_CH, BTN_RIGHT);
	buttons.isLeftPressed = gpio_readPin(&gpio, PORTB_CH, BTN_LEFT);
	buttons.isDownPressed = gpio_readPin(&gpio, PORTB_CH, BTN_DOWN);
	buttons.isSpinPressed = gpio_readPin(&gpio, PORTB_CH, BTN_SPIN);
}