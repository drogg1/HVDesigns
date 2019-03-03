/*
 * hvmeas.c
 *
 *  Created on: Mar 1, 2019
 *      Author: User
 *
 *      Used to read value from MCP3421 18-bit delta-sigma ADC on
 *      Active Load board thats reads the divided and amplified
 *      high voltage on last stage while only drawing ~10pA/V.
 *
 *      MCP3421 I2C device address is 1101000.
 */

#include "hvmeas.h"
#include <stdint.h>
#include <stdio.h>
#include <msp430.h>
#include "i2c.h"
#include "defines.h"
#include <stdlib.h>

/* Configuration Register Masks */

//If read mode, low indicates latest conversion available, in write, setting to 1 starts new conv in one-shot mode
#define RDY		(1<<7)

//1 continuous conversion, 0 one-shot conversion
#define OC		(1<<4)

//Sample rate selection bits
#define S_0		(0*0x4u)	//240 sps (12 bits)
#define S_1		(1*0x4u)	//60 sps (14 bits)
#define S_2		(2*0x4u)	//15 sps (16 bits)
#define S_3		(3*0x4u)	//3.75 sps (18 bits)

//PGA selection bits
#define G_0		(0*0x1u)	//1 V/V
#define G_1		(1*0x1u)	//2 V/V
#define G_2		(2*0x1u)	//4 V/V
#define G_3		(3*0x1u)	//8 V/V

/* Used to configure ADC.  Sets sampling mode, rate, and gain. New conversion begins after. */
int hvmeas_init(void)
{
	int err;
	struct i2c_device MCP3421;
	struct i2c_data data;
	uint8_t write_cmd[1];

	MCP3421.address = 0b01101000;

	write_cmd[0] = OC | S_3 | G_0;	//continuous sampling, 3.75 sps (18bit), 1 V/V

	data.tx_buf = write_cmd;
	data.tx_len = ARRAY_SIZE(write_cmd);

	err = i2c_transfer(&MCP3421, &data);

	return err;
}

//Read last sample
uint32_t readHVMeasADC()
{
	int err;
	struct i2c_device MCP3421;
	struct i2c_data data;
	uint8_t rx_data[4];

	MCP3421.address = 0b01101000;

	data.rx_len = ARRAY_SIZE(rx_data);
	data.rx_buf = (uint8_t *) rx_data;

	err = i2c_transfer(&MCP3421, &data);

	if(err == 0)
	{
		uint32_t value = (((uint32_t)rx_data[0] & 0x3)<<16)|((uint32_t)rx_data[1]<<8)|rx_data[2];
		return value;
	}
	else
	{
		return 0;
	}
}
