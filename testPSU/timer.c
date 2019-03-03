/*
 * timer.c
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#include <stdint.h>
#include <msp430.h>
#include "timer.h"

#define TIMER_RESOLUTION_MS 1

/**
 * Initializes timer 1
 */
int timer_init(void)
{
	/* Set timer to use the ACLK, clock divider 8, up-mode to CCR0 */
	TA1CTL = TASSEL_2 | ID_3 | MC_1;

	/* TA1CCR0 set to the interval for the desired resolution based on 8MHz/8 SMCLK */
	TA1CCR0 = 1000;//(1000*TIMER_RESOLUTION_MS) - 1;

	/* Enable CCIE interrupt */
	TA1CCTL0 = CCIE;

	return 0;
}

/**
 * Delay for n * 1 mS
 */
void delay(uint16_t ticks)
{
	_timer_tick = 0;
	if(ticks < 100)
	{
		ticks = 100;
	}
	while(_timer_tick < ticks);
}

// Timer1 A0 interrupt service routine
__attribute__((interrupt(TIMER1_A0_VECTOR))) void timer1_isr(void)
{
  /* Increment the timer tick */
	_timer_tick++;
    /* Clear the interrupt flag */
    TA1CCTL0 &= ~CCIFG;                           // Toggle P1.0
	//__bic_SR_register_on_exit(CPUOFF);
}
