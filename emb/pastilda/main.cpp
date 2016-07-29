#include "app.h"
#include "stdio.h"
using namespace Application;

int main()
{
	SEGGER_RTT_ConfigUpBuffer(0, NULL, NULL, 0, SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL);
	SEGGER_RTT_WriteString(0, "\r\nPasTilda 0.1\r\n\r\n");

	App *app = new App();
	while(1) {
		app->process();
	}

	return (0);
}
