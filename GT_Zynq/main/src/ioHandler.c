#include "ioHandler.h"
#include "gpioHandler.h"
#include "xgpiops.h"
#include <stdbool.h>

s_buttons buttons;
extern XGpio gpio;
extern XGpioPs gpioPs;

void buttonsTick() {
	// Input ========================
	//Controlls Aerrows: Right Left Down, Spin: Left control ket
    if(XGpioPs_ReadPin(&gpioPs, BTN_RIGHT) == 0){
        buttons.isRightPressed = true;
    }else{
        buttons.isRightPressed = false;
    }
        
    if(XGpioPs_ReadPin(&gpioPs, BTN_LEFT) == 0){
        buttons.isLeftPressed = true;
    }else{
        buttons.isLeftPressed = false;
    }

    if(XGpioPs_ReadPin(&gpioPs, BTN_DOWN) == 0){
        buttons.isDownPressed = true;
    }else{
        buttons.isDownPressed = false;
    }
	
	if(XGpioPs_ReadPin(&gpioPs, BTN_SPIN) == 0){
        buttons.isSpinPressed = true;
    }else{
        buttons.isSpinPressed = false;
    }
	
}