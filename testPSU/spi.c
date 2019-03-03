/*
 * spi.c
 *
 *  Created on: Feb 27, 2019
 *      Author: User
 *
 *      Simple bit-bang SPI at ~500 baud
 */
#include <msp430.h>
#include <stdint.h>
#include <stdio.h>
#include "timer.h"

#define SCLK	BIT1	//P2.1
#define MOSI	BIT2	//P2.2
#define ICCSN	BIT0	//P2.0

void shift_in_ic(uint16_t data)
{
	/**
	* SPIMODE0
	*/

	P2OUT &= ~ICCSN;		// Set CSN low
	P2OUT &= ~SCLK;			// Set SCLK Low

	int i;
	for(i = 12; i > 0; i--)
	{
		// Decide whether to set or not
		if((data >> i-1) & 0x1)
		{
			P2OUT |= MOSI;	// Set MOSI High
		}
		else
		{
			P2OUT &= ~MOSI;	// Set MOSI Low
		}

		delay(1);

		P2OUT |= SCLK;		// Set SCLK High

		delay(1);

		P2OUT &= ~SCLK;		// Set SCLK Low
	}
	P2OUT |= ICCSN;		// Set CSN High
}

/*SPI Peripheral not on correct pins for this board */
/*
void setupSPI(void)
{
    //Using UCA0 SPI interface
    //CSn P1.5
    //SCLK P1.4 as UCA0CLK
    //MOSI P1.2 as UCA0SIMO
    //MODE0

    //Setting up USCI registers for SPI
    UCA0CTL1 = UCSWRST;     //Enable reset state
    UCA0CTL0 = UCCKPH + UCMSB + UCMST + UCSYNC; //3-pin, MSB first, 8-bit SPI master
    UCA0CTL1 |= UCSSEL_2;  //Set USCI clock as SMCLK;
    //16-bit value of UCA0BR0 (low byte) and UCA0BR1 (high byte) is multiplied by 256
    // to get the prescaler
    UCA0BR0 |= 0x08;
    UCA0BR1 = 0;

    //Setting up the pins on port 1
	P1OUT |= BIT5;  //Set CSn High
	P1DIR |= BIT5;  //Set CSn as an output
	P1SEL = BIT2 | BIT4;  //Set the port 1 selection registers to use the optional functions
	P1SEL2 = BIT2 | BIT4;

    UCA0CTL1 &= ~UCSWRST;  //Clear reset state
}

void shiftIn(uint16_t dacValue)
{
    dacValue = dacValue & 0x0fff;
    P1OUT &= (~BIT5);   //Set CSn low
    while(!(IFG2 & UCA0TXIFG)); // Wait until buffer is ready
    UCA0TXBUF = dacValue >> 8;  //Send high byte
    while(UCA0STAT & UCBUSY); //Wait until first transmission is over
    UCA0TXBUF = dacValue & 0x00ff;  //Send low byte
    while(UCA0STAT & UCBUSY); //Wait until second transmission is over
    P1OUT |= BIT5;  //Deselect CSn
}
*/

