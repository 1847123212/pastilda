#ifndef __STAT_H__
#define __STAT_H__

typedef long off_t;

#ifdef USE_RTT
	#include "SEGGER_RTT.h"
#else

	#define SEGGER_RTT_ConfigUpBuffer(a,b,c,d, e)
	#define SEGGER_RTT_WriteString(a,b)

#endif

#endif
