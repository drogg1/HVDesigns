/*
 * i2c.h
 *
 *  Created on: Feb 27, 2019
 *      Author: User
 */

#ifndef I2C_H_
#define I2C_H_

#include <stdint.h>
#include <msp430.h>
#include <stdio.h>

struct i2c_device
{
	uint8_t address;
};

struct i2c_data
{
	const void *tx_buf;
	size_t tx_len;
	void *rx_buf;
	size_t rx_len;
};

int i2c_init(void);
int i2c_transfer(const struct i2c_device *dev, struct i2c_data *data);
static int _transmit(const struct i2c_device *dev, const uint8_t *buf, size_t nbytes);
static int _receive(const struct i2c_device *dev, uint8_t *buf, size_t nbytes);
static int _check_ack(const struct i2c_device *dev);

#endif /* I2C_H_ */



