/*
 * icDAC.h
 *
 *  Created on: Feb 28, 2019
 *      Author: User
 */

#ifndef ICDAC_H_
#define ICDAC_H_

#include <stdint.h>

void icDAC_init(void);
void setICDAC(uint16_t value);
void icDACShutdown();

#endif /* ICDAC_H_ */
