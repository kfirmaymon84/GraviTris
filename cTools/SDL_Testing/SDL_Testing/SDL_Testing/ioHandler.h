#ifndef __IO_HANDLER_H_
#define __IO_HANDLER_H_

#include <time.h>
#include <stdint.h>
#include "displayHandler.h"

enum rotationEnum {
	rotation_0Deg = 0,
	rotation_90Deg = 1,
	rotation_180Deg = 2,
	rotation_270Deg = 3
};

struct s_buttons
{
	bool isLeftPressed;
	bool isRightPressed;
	bool isDownPressed;
	bool isSpinPressed;
};

void buttonsTick();
enum rotationEnum getDisplayRotetion();
void delay_ms(uint32_t timeout);

#endif //__IO_HANDLER_H_