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

#define RX_BUF_SIZE 32
#define RX_BUF_MASK 0x1F

const struct baud_value baud_tbl[] =
{
		{9600, 109, 0 , 0x2}
};

static volatile uint8_t rxBufIn;
static volatile uint8_t rxBufOut;
static uint8_t rxBuf[RX_BUF_SIZE];
static volatile uint8_t entries;

int uart_init(uart_config_t *config)
{
	int status = -1;

	/* USCI should be in reset before configuring - only configure once */
	if(UCA0CTL1 & UCSWRST)
	{
		rxBufIn = 0;
		rxBufOut = 0;
		entries= 0;
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
		//IE2 |= UCA0RXIE;
		status = 0;
	}
	return status;
}

/* Get one character or return -1 */
int uart_getchar(void)
{
	int chr = rxBuf[rxBufOut++];
	rxBufOut &= RX_BUF_MASK;
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
//UART Receive ISR
__attribute__((interrupt(USCIAB0RX_VECTOR))) void USCI0RX_ISR(void)
{
	///if(IFG2 & UCA0RXIFG)
	//{
		entries++;
		rxBuf[rxBufIn++] = UCA0RXBUF;
		rxBufIn &= RX_BUF_MASK;
		//IFG2 &= ~UCA0RXIFG;
		__bic_SR_register_on_exit(LPM0_bits);
	//}
}
