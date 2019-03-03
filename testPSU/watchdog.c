/*
 * watchdog.c
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#include "watchdog.h"
#include <msp430.h>

/**
* brief Disable the watchdog timer module
*/
void watchdog_disable(void)
{
	/* Hold the watchdog */
	WDTCTL = WDTPW + WDTHOLD;
}

/**
* brief Enable the watchdog timer module
* The watchdog timeout is set to an interval of 32768 cycles
*/
void watchdog_enable(void)
{
	/* Read the watchdog interrupt flag */
	if (IFG1 & WDTIFG)
	{
		/* Clear if set */
		IFG1 &= ~WDTIFG;
	}

	watchdog_pet();
}

/**
* brief Pet the watchdog
*/
void watchdog_pet(void)
{
	/**
	 * Enable the watchdog with the following settings
	 * - sourced by ACLK
	 * - interval = 32768 / 12000 = 2.73s
	 */
	WDTCTL = WDTPW + (WDTSSEL | WDTCNTCL);
}


