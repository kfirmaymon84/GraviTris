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

#include "platform.h"
#include "stdbool.h"
#include "xgpiops.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <sleep.h>
#include <stdint.h>
#include <stdio.h>
#include <xil_types.h>

#include "sleep.h"
#include "xbram.h"
#include "xgpio.h"
#include "xiicps.h"
#include "xuartps.h"


#include "Adafruit_MLX90393.h"
#include "commonDisplayHandler.h"
#include "displayHandler.h"
#include "drawObjects.h"
#include "gameEngine.h"
#include "gpioHandler.h"


void initGPIO();
void initBram();
void initI2C();

XGpio gpio;
XGpioPs gpioPs;
XIicPs iicPs;
XBram Bram; /* The Instance of the BRAM Driver */
bool temp = true;
int main() {
  init_platform();

  initGPIO();
  initBram();
  initI2C();
  xil_printf("Start\n");

  while (1) {
    char c;
    print("Enter cmd: \n");

    // c = XUartLite_RecvByte(XPAR_AXI_UARTLITE_0_BASEADDR);
    c = XUartPs_RecvByte(XPAR_XUARTPS_0_BASEADDR);
    xil_printf("Got-> %c\n", c);

    switch (c) {
    case '0':
      // Init display
      gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, DBG_LED_1);
      displayInit();
      usleep(1000); // Delay 1 millisec
      gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, DBG_LED_1);
      break;
    case '1':
      // Clear screen
      override_8bar();
      usleep(1000); // Delay 1 millisec	// Release override
      break;
    case '2': // TEST 1
      override_clearScreen();
      usleep(1000); // Delay 1 millisec
      break;
    case '3': // TEST 2
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
    case '8':
      drawBorder(10, 10, 100, 100, white, green);
      break;
    case '9':
      drawScore(10000, true);
      usleep(3000000);
      for (int i = 0; i < 100; i++) {
        drawScore(10000 + i, false);
        usleep(30000);
      }
    case 'i':
      xil_printf("Btn50 = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, 50));
      xil_printf("Btn51 = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, 51));
      xil_printf("BtnLeft = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, BTN_LEFT));
      xil_printf("BtnRight = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, BTN_RIGHT));
      xil_printf("BtnDown = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, BTN_DOWN));
      xil_printf("BtnSpin = 0x%08X\n", XGpioPs_ReadPin(&gpioPs, BTN_SPIN));

      xil_printf("PORTB = 0x%08X\n", gpio_portRead(&gpio, 2));
      XGpioPs_WritePin(&gpioPs, 7, temp);
      temp = !(temp);
      break;
    case 'q':
      override_rotateScreen(display_0Deg);
      break;
    case 'w':
      override_rotateScreen(display_90Deg);
      break;
    case 'e':
      override_rotateScreen(display_180Deg);
      break;
    case 'r':
      override_rotateScreen(display_270Deg);
      break;
    case 'g':
      displayInit();
      usleep(1000); // Delay 1 millisec
      override_clearScreen();
      gameTick();
    default:
      break;
    }
    usleep(500000);
  }

  cleanup_platform();
  return 0;
}

void initGPIO() {
  int status;
  XGpio_Config *gpioConfig;
  gpioConfig = XGpio_LookupConfig(XPAR_AXI_GPIO_0_BASEADDR);
  if (gpioConfig == NULL)
    xil_printf("GPIO Config Error...");

  status = XGpio_CfgInitialize(&gpio, gpioConfig, gpioConfig->BaseAddress);
  if (status != XST_SUCCESS)
    xil_printf("GPIO initialization Failed...\r\n");

  XGpioPs_Config *gpioPsConfig;
  gpioPsConfig = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_BASEADDR);
  status = XGpioPs_CfgInitialize(&gpioPs, gpioPsConfig, gpioPsConfig->BaseAddr);
  if (status != XST_SUCCESS)
    xil_printf("Device Init Failed\n");

  XGpioPs_SetDirectionPin(&gpioPs, BTN_LEFT, 0);
  XGpioPs_SetDirectionPin(&gpioPs, BTN_RIGHT, 0);
  XGpioPs_SetDirectionPin(&gpioPs, BTN_DOWN, 0);
  XGpioPs_SetDirectionPin(&gpioPs, BTN_SPIN, 0);

  XGpioPs_SetDirectionPin(&gpioPs, 50, 0);
  XGpioPs_SetDirectionPin(&gpioPs, 51, 0);
  XGpioPs_SetDirectionPin(&gpioPs, 7, 1);
  XGpioPs_SetOutputEnablePin(&gpioPs, 7, 1);
}

void initBram() {
  XBram_Config *ConfigPtr;
  int Status;

  ConfigPtr = XBram_LookupConfig(XPAR_AXI_BRAM_0_BASEADDRESS);
  if (ConfigPtr == (XBram_Config *)NULL) {
    xil_printf("BRAM Config Error...");
  }

  Status = XBram_CfgInitialize(&Bram, ConfigPtr, ConfigPtr->CtrlBaseAddress);
  if (Status != XST_SUCCESS) {
    xil_printf("BRAM initialization Error...");
  }
}

void initI2C() {
  int Status;
  XIicPs_Config *ConfigPtr;

#define IIC_SCLK_RATE 100000
#define SLV_MON_LOOP_COUNT 0x00FFFFFF /**< Slave Monitor Loop Count*/

  ConfigPtr = XIicPs_LookupConfig(XPAR_I2C0_BASEADDR);
  if (ConfigPtr == (XIicPs_Config *)NULL) {
    xil_printf("I2C Config Error...");
  }

  Status = XIicPs_CfgInitialize(&iicPs, ConfigPtr, ConfigPtr->BaseAddress);
  if (Status != XST_SUCCESS) {
    xil_printf("I2C initialization Error...");
  }

  XIicPs_SetSClk(&iicPs, IIC_SCLK_RATE);
  // u8 *ptr = {0x17,0x2f};
  // for(uint8_t i = 0x01;i<127;i++){
  //     Status = XIicPs_MasterSendPolled(&iicPs, ptr, 1, i);
  //     if(Status == 0)
  //         xil_printf("Found IC, Status = %d, Add = %2X\n",Status,i);
  //     sleep(0.1);
  // }
    float x, y, z;
    int16_t Mx,My,Mz;
    while(MLX90393__init()){
        xil_printf("MLX Init Failed");
        usleep(100 * 1000);
    }
    while (1) {
        MLX90393_readData(&x, &y, &z);
        Mx = x;
        My = y;
        Mz = z;
        xil_printf("X=%d, Y=%d, Z=%d\n", Mx, My, Mz);
        usleep(100 * 1000);
    }
}