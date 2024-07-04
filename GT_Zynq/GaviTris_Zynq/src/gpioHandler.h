#ifndef __GPIO_HANDLER_H_
#define __GPIO_HANDLER_H_

#include "xgpio.h"

#define MEMORY_OUT_PIN_CH 1
#define TFT_DRIVER_OUT_PIN_CH 1

//AXI_GPIO1
//PortA
#define TFT_DRIVER_DATA 0       // 0-7 8bit
#define TFT_DRIVER_OVERRIDE 8
#define TFT_DRIVER_START 9
#define TFT_DRIVER_DC 10
#define TFT_DRIVER_WRX 11
#define NENABLE 12
#define DBG_LED_0 13
#define DBG_LED_1 14
#define DBG_LED_2 15

//PortB
#define TFT_DRIVER_READY 0
#define DBG_SW 1

void gpio_pinSet(XGpio *InstancePtr, unsigned int Channel, uint8_t pin);
void gpio_pinClear(XGpio *InstancePtr, unsigned int Channel, uint8_t pin);
void gpio_pinToggle(XGpio *InstancePtr, unsigned int Channel, uint8_t pin);
void gpio_portSetMask(XGpio *InstancePtr, unsigned int Channel, uint32_t mask);
void gpio_portClearMask(XGpio *InstancePtr, unsigned int Channel, uint32_t mask);

#endif //__GPIO_HANDLER_H_
