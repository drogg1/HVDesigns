/*
 * timer.h
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */



#ifndef TIMER_H_
#define TIMER_H_

#include <stdint.h>
#include <msp430.h>

static volatile uint16_t _timer_tick = 0;

int timer_init(void);
void delay(uint16_t ticks);

#endif /* TIMER_H_ */
