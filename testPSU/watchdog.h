/*
 * watchdog.h
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#ifndef WATCHDOG_H_
#define WATCHDOG_H_

/**
 * brief Disable the watchdog timer module
 */
void watchdog_disable(void);

/**
 * brief Enable the watchdog timer module
 * The watchdog timeout is set to an interval of 32768 cycles
 */
void watchdog_enable(void);

/**
 * brief Pet the watchdog
 */
void watchdog_pet(void);

#endif /* WATCHDOG_H_ */
