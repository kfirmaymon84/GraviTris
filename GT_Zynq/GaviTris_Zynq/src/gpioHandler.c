#include "gpioHandler.h"

void gpio_pinSet(XGpio *InstancePtr, unsigned int Channel, uint8_t pin){
    uint32_t portState = XGpio_DiscreteRead(InstancePtr, Channel);
    XGpio_DiscreteWrite(InstancePtr, Channel, (portState | (0x1 << pin)));
}


void gpio_pinClear(XGpio *InstancePtr, unsigned int Channel, uint8_t pin){
    uint32_t portState = XGpio_DiscreteRead(InstancePtr, Channel);
    XGpio_DiscreteWrite(InstancePtr, Channel, (portState & ~(0x1 << pin)));
}

void gpio_pinToggle(XGpio *InstancePtr, unsigned int Channel, uint8_t pin){
    uint32_t portState = XGpio_DiscreteRead(InstancePtr, Channel);
    XGpio_DiscreteWrite(InstancePtr, Channel, (portState ^ (0x1 << pin)));
}

// only pins that set to 1 will set, pins that be 0 will not be change.
void gpio_portSetMask(XGpio *InstancePtr, unsigned int Channel, uint32_t mask){
    uint32_t portState = XGpio_DiscreteRead(InstancePtr, Channel);
    XGpio_DiscreteWrite(InstancePtr, Channel, (portState | mask));
}

// only pins that set to 1 will clear, pins that be 0 will not be change.
void gpio_portClearMask(XGpio *InstancePtr, unsigned int Channel, uint32_t mask){
    uint32_t portState = XGpio_DiscreteRead(InstancePtr, Channel);
    XGpio_DiscreteWrite(InstancePtr, Channel, (portState & ~mask));
}