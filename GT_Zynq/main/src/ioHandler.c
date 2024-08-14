#include "ioHandler.h"
#include "gpioHandler.h"
#include "xgpiops.h"
#include <stdbool.h>
#include <sleep.h>
#include <xil_printf.h>
#include "stdbool.h"
#include "Adafruit_MLX90393.h"
#include <math.h>

bool between(int x, int valLow, int valHigh) ;

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

#define DEG_0_LOW   50
#define DEG_0_HIGH  110
#define DEG_90_LOW -30
#define DEG_90_HIGH 30
#define DEG_180_LOW -120
#define DEG_180_HIGH -60


void initDisplayRotetion(){

    while(MLX90393__init()){
        xil_printf("MLX Init Failed");
        usleep(100 * 1000);
    }
}

enum rotationEnum getDisplayRotetion(){
    float x,y,z;
    MLX90393_readData(&x, &y, &z);
    double alpha = atan2(y, x) * 180/3.141;
    int alphaRound = alpha;
    xil_printf("Alpha = %d, ",alphaRound);

//ToDo: Test rotetion direction
    if(between(alphaRound, DEG_0_LOW, DEG_0_HIGH)){
        xil_printf("0 Deg\n");
        return rotation_0Deg;
    } else if (between(alphaRound, DEG_90_LOW, DEG_90_HIGH)) {
        xil_printf("90 Deg\n");
        return rotation_90Deg;
    } else if (between(alphaRound, DEG_180_LOW, DEG_180_HIGH)) {
        xil_printf("180 Deg\n");
        return rotation_180Deg;
    } else if(alphaRound > 160 || alphaRound < -160){
        xil_printf("270 Deg\n");
        return rotation_270Deg;
    } 
}
  

bool between(int x, int valLow, int valHigh) {
  if (x >= valLow && x <= valHigh)
    return true;

  return false;
}

void delay_ms(uint32_t timeout) {
    usleep(timeout*1000);
}