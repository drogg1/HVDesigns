/*
 * i2c.c
 *
 *  Created on: Feb 27, 2019
 *      Author: User
 */

#include "i2c.h"
int i2c_init(void)
{
	//Hold in reset
	UCB0CTL1 = UCSWRST;

	// I2C Mode, 7-bit addressing, Master mode
	UCB0CTL0 = UCMST + UCMODE_3 + UCSYNC;

	// BRCLK = SMCLK,
	UCB0CTL1 |= UCSSEL_2;

	//Standard speed - 100kHz is BRCLK = SMCLK = 8MHz / 80
	UCB0BR0 = 80;
	UCB0BR1 = 0;

	//Release reset
	UCB0CTL1 &= ~(UCSWRST);

	return 0;
}

int i2c_transfer(const struct i2c_device *dev, struct i2c_data *data)
{
	int err = 0;

	/* Set the slave device address */
	UCB0I2CSA = dev->address;

	/* Transmit data if there is any */
	if(data->tx_len > 0)
	{
		err = _transmit(dev, (const uint8_t *) data->tx_buf, data->rx_len);
	}

	/* Receive data if there is any */
	if((err == 0) && (data->rx_len > 0))
	{
		err = _receive(dev, (uint8_t *) data->rx_buf, data->rx_len);
	}
	else
	{
		/* No bytes to receive, send stop condition */
		UCB0CTL1 |= UCTXSTP;
	}
	return err;
}

static int _transmit(const struct i2c_device *dev, const uint8_t *buf, size_t nbytes)
{
	int err = 0;

	/* Send start condition */
	UCB0CTL1 |= UCTR | UCTXSTT;

	/* Wait for start condition to be sent and ready to transmit interrupt */
	while((UCB0CTL1 & UCTXSTT) && ((IFG2 & UCB0TXIFG) == 0));

	/* Check for ACK */
	err = _check_ack(dev);

	/* If no error and bytes left to send, transmit data */
	while((err == 0) && (nbytes > 0))
	{
		UCB0TXBUF = *buf;	//Load data in buffer
		while ((IFG2 & UCB0TXIFG) == 0)	//Wait for ACK
		{
			err = _check_ack(dev);
			if(err < 0)
			{
				//If NACK, break
				break;
			}
		}
		buf++;
		nbytes--;
	}
	return err;
}

static int _receive(const struct i2c_device *dev, uint8_t *buf, size_t nbytes)
{
	int err = 0;

	/* Send start condition */
	UCB0CTL1 &= ~UCTR;
	UCB0CTL1 |= UCTXSTT;

	/* Wait for the start condition to be sent*/
	while(UCB0CTL1 & UCTXSTT);

	/* If only one byte to receive, set stop bit as soon as start condition has been sent */
	if(nbytes == 1)
	{
		UCB0CTL1 |= UCTXSTP;
	}

	/* Chekc for ACK */
	err = _check_ack(dev);

	/* If no error and bytes left to receive, receive rest */
	while((err == 0) && (nbytes > 0))
	{
		/* Wait for data */
		while((IFG2 & UCB0RXIFG) == 0);

		*buf = UCB0RXBUF;	//Stuff in buffer
		buf++;	//Increment buffer pointer
		nbytes--;	//Update num bytes left

		/* Again, if only one byte elft to receive,
		 * send stop condition
		 */
		if(nbytes == 1)
		{
			UCB0CTL1 |= UCTXSTP;
		}
	}
	return err;
}
static int _check_ack(const struct i2c_device *dev)
{
	int err = 0;

	/* Check for ACK by seeing if received a NACK*/
	if(UCB0STAT & UCNACKIFG)
	{
		/* Stop the transmission */
		UCB0CTL1 |= UCTXSTP;

		/* Clear the interrupt flag */
		UCB0STAT &= ~UCNACKIFG;

		/* Set the error code */
		err = -1;
	}
	return err;
}
