#ifndef __IO_HANDLER_H_
#define __IO_HANDLER_H_
#include <stdbool.h>
#include "stdint.h"

enum rotationEnum {
	rotation_0Deg = 0,
	rotation_90Deg = 1,
	rotation_180Deg = 2,
	rotation_270Deg = 3
};

typedef struct s_buttons
{
	bool isLeftPressed;
	bool isRightPressed;
	bool isDownPressed;
	bool isSpinPressed;
}s_buttons;

void buttonsTick();
void initDisplayRotetion();
enum rotationEnum getDisplayRotetion();
void delay_ms(uint32_t timeout);

#endif //__IO_HANDLER_H_