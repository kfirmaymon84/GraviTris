#ifndef __IO_HANDLER_H_
#define __IO_HANDLER_H_
#include <stdbool.h>

typedef struct s_buttons
{
	bool isLeftPressed;
	bool isRightPressed;
	bool isDownPressed;
	bool isSpinPressed;
}s_buttons;

void buttonsTick();

#endif //__IO_HANDLER_H_