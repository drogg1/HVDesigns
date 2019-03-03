/*
 * icDAC.c
 *
 *  Created on: Feb 28, 2019
 *      Author: User
 */

#include "icDAC.h"
#include <stdio.h>
#include <stdint.h>
#include "spi.h"

//Default constructor
void icDAC_init(void)
{
	setICDAC(0xFFF);	//Sets output to max for minimum ref current
}

//Load input and DAC registers and upate output
void setICDAC(uint16_t value)
{
	value = value & 0x0FFF;	//Limit to 12 bits
	shift_in_ic(value);
}

//Output high impedance, reference set to 1.214
void icDACShutdown()
{
	shift_in_ic(0xFFF);
}
