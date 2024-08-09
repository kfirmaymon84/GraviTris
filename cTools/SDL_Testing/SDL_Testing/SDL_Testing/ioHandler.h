#ifndef __IO_HANDLER_H_
#define __IO_HANDLER_H_

#include <time.h>
#include <stdint.h>
#include "displayHandler.h"

struct s_buttons
{
	bool isLeftPressed;
	bool isRightPressed;
	bool isDownPressed;
	bool isSpinPressed;
};

void buttonsTick();
enum displayOrientation getDisplayRotetion();
void delay_ms(uint32_t timeout);

#endif //__IO_HANDLER_H_