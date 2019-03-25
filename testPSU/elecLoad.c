/*
 * elecLoad.c
 *
 *  Created on: Mar 4, 2019
 *      Author: User
  *      Used to set a DC load current up to ~3.3 uA at the HV output using the
  *      MSCP4726 12-bit DAC, an op amp, a 1500 V rated MOSFET, and a 100k resistor.
 *
 *      MCP4726 I2C device address is 1100011.
 */

#include "elecLoad.h"
#include <stdint.h>
#include <stdio.h>
#include <msp430.h>
#include "i2c.h"
#include "defines.h"
#include <stdlib.h>

/* Bit Masks */

//Command bits
#define C_0		(0*0x40u)	//Write Volatile DAC Register
#define C_2		(2*0x20u)	//Write Volatile Memory
#define C_3		(3*0x20u)	//Write All Memory
#define C_4		(4*0x20u)	//Write Volatile Configuration Bits

//Power down mode bits
#define PD_0	(0*0x2u)	//Normal operation
#define PD_1	(1*0x2u)	//Power down, 1k to ground
#define PD_2	(2*0x2u)	//Power down, 125k to ground
#define PD_3	(3*0x2u)	//Power down, 640k to ground

//Reference bits
#define VDD		(0*0x8u)	//VRL = VDD
#define VREFU	(2*0x8u)	//VRL = VREF (Unbuffered)
#define VREFB	(3*0x8u)	//VRL = VREF (Buffered)

//Gain bits
#define G_1		(0*0x1)		//Gain of 1
#define G_2		(1*0x1)		//Gain of 2	(Not applicable when using VDD as VRL)

/* Write DAC to 0 and set configuration bits. */
int elecLoad_init()
{
	int err;
	struct i2c_device MCP4726;
	struct i2c_data data;
	uint8_t write_cmd[3];

	MCP4726.address = 0b01100011;

	write_cmd[0] = C_2 | VDD | PD_3 | G_1;
	write_cmd[1] = 0;
	write_cmd[2] = 0;

	data.tx_buf = write_cmd;
	data.tx_len = 3;
	data.rx_len = 0;

	err = i2c_transfer(&MCP4726, &data);

	return err;
}

/* Used to the DAC output and determine Power Down state. */
int setLoadDAC(uint16_t dacValue)
{
	int err;
	struct i2c_device MCP4726;
	struct i2c_data data;
	uint8_t write_cmd[2];

	MCP4726.address = 0b01100011;
	uint8_t highByte = (0xF & (dacValue >> 8));
	uint8_t lowByte = (0xFF & dacValue);

	write_cmd[0] = C_0 | (PD_0 << 3) | highByte;	//Write DAC Vol Register, Normal operation
	write_cmd[1] = lowByte;

	data.tx_buf = write_cmd;
	data.tx_len = 2;
	data.rx_len = 0;

	err = i2c_transfer(&MCP4726, &data);

	return err;
}
