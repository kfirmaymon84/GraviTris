/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

#include "xuartps.h"
#include "xbram.h"
#include "xgpio.h"
#include "sleep.h"

#include "gpioHandler.h"
#include "displayHandler.h"
#include "commonDisplayHandler.h"
#include "drawObjects.h"

void initGPIO();
void initBram();

XGpio gpio;
XBram Bram;	/* The Instance of the BRAM Driver */

int main()
{
    init_platform();

    initGPIO();
    initBram();

    xil_printf("Start\n");

    while(1){
		char c;
		print("Enter cmd: ");

		// c = XUartLite_RecvByte(XPAR_AXI_UARTLITE_0_BASEADDR);
        c = XUartPs_RecvByte(XPAR_XUARTPS_0_BASEADDR);
		// xil_printf("Got-> %c at %d\n",c, millisCounter);

		switch (c) {
			case '0':
				// Init display
				gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, DBG_LED_1);
				displayInit();
				usleep(1000); //Delay 1 millisec
				gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, DBG_LED_1);
				break;
			case '1':
				//Clear screen
				override_8bar();
				usleep(1000); //Delay 1 millisec	// Release override
			break;
			case '2': //TEST 1
				override_clearScreen();
				usleep(1000); //Delay 1 millisec
			break;
			case '3': //TEST 2
				drawMemory();
			break;
			case '4':
				draw8ColorBars();
				break;
			case '5':
				drawBitmap(numbers[0], 0, 0, 16, 24, white);
				break;
			case '6':
				drawBitmap(rotate__iconrotate_icon24_24, 0, 0, 24, 24, white);
				break;
			case '7':
				clearScreen();
				break;

			default:
			break;
		}
		usleep(500000);
	}



    // }
    cleanup_platform();
    return 0;
}

void initGPIO(){
    int status;
	XGpio_Config *gpioConfig;
	gpioConfig = XGpio_LookupConfig(XPAR_AXI_GPIO_0_BASEADDR);
	if(gpioConfig==NULL) xil_printf("GPIO Config Error...");

	status =XGpio_CfgInitialize(&gpio, gpioConfig, gpioConfig->BaseAddress);
	if (status!=XST_SUCCESS) xil_printf("GPIO initialization Failed...\r\n");

}

void initBram(){
    XBram_Config *ConfigPtr;
	int Status;

    ConfigPtr = XBram_LookupConfig(XPAR_AXI_BRAM_0_BASEADDRESS);
	if (ConfigPtr == (XBram_Config *) NULL) {
		xil_printf("BRAM Config Error...");
	}

	Status = XBram_CfgInitialize(&Bram, ConfigPtr,
				     ConfigPtr->CtrlBaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("BRAM Config Error...");
	}

}