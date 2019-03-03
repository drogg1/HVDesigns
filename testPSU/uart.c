/*
 * uart.c
 *
 *  Created on: Feb 27, 2019
 *      Author: User
 */

#include "uart.h"
#include <msp430.h>
#include <stdio.h>
#include <stdint.h>
#include "defines.h"

const struct baud_value baud_tbl[] =
{
		{9600, 109, 0 , 0x2}
};

int uart_init(uart_config_t *config)
{
	int status = -1;

	/* USCI should be in reset before configuring - only configure once */
	if(UCA0CTL1 & UCSWRST)
	{
		//size_t i;

		//8N1 UART mode
		UCA0CTL0 = 0;

		/* Set clock source to SMCLK */
		UCA0CTL1 |= UCSSEL1;
/*
		// Find the settings from the baud rate table
		for(i = ARRAY_SIZE(baud_tbl); i > 0; i--)
		{
			if(baud_tbl[i].baud == config->baud){
				break;
			}
		}
		if(i < ARRAY_SIZE(baud_tbl))
		{
			// Set the baud rate
			UCA0BR0 = baud_tbl[i].UCAxBR0;
			UCA0BR1 = baud_tbl[i].UCAxBR1;
			UCA0MCTL = baud_tbl[i].UCAxMCTL;

			// Enable the peripheral
			UCA0CTL1 &= ~UCSWRST;
			status = 0;
		}
*/
		//Settings for use at 9600 baud with an 8MHz clock
		UCA0BR0 = 0x41;
		UCA0BR1 = 0x03;
		UCA0MCTL = UCBRS_2 | UCBRF_0;

		// Enable the peripheral
		UCA0CTL1 &= ~UCSWRST;
		status = 0;
	}
	return status;
}

/* Get one character or return -1 */
int uart_getchar(void)
{
	int chr = -1;
	if(IFG2 & UCA0RXIFG)
	{
		chr = UCA0RXBUF;
	}
	return chr;
}

/* Send one character */
int uart_putchar(int c)
{
	/* Wait until the transmit buffer is ready */
	while(!(IFG2 & UCA0TXIFG));

	/* Transmit one character */
	UCA0TXBUF = (char ) c;	//cast to char

	return 0;
}

/* Send a string */
int uart_puts(const char *str)
{
	int status = -1;

	if(str != NULL)
	{
		status = 0;
		while(*str != '\0')
		{
			/* Wait for buffer to be ready */
			while(!(IFG2 & UCA0TXIFG));

			/* Transmit data */
			UCA0TXBUF = *str;	//Write first character

			/* If line-feed, add a carriage return */
			if(*str == '\n')
			{
				/* Wait for buffer */
				while(!(IFG2 & UCA0TXIFG));
				UCA0TXBUF = '\r';
			}
			str++;	//Increment buffer pointer
		}
	}
	return status;
}

