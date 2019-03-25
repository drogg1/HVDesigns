/*
 * board.c
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#include "watchdog.h"
#include "board.h"
#include "timer.h"
#include "tlv.h"
#include "i2c.h"
#include "uart.h"
#include "icDAC.h"
#include "hvmeas.h"
#include <msp430.h>
#include "elecLoad.h"

/**
* brief Initialize all board dependant functionality
* return 0 on success, -1 otherwise
*/
int board_init(void)
{
    watchdog_disable();

    if (tlv_verify() != 0) {
        /* Calibration data is corrupted...hang */
        while(1);
    }

    /* Configure the clock module */
    DCOCTL = 0;
    BCSCTL1 = CALBC1_8MHZ;	// Load calibrated 8MHZ settings
    DCOCTL = CALDCO_8MHZ;
    BCSCTL2 |= DIVS_0; 		// SMCLK = MCLK/1 = 8MHz
    BCSCTL3 |= LFXT1S_2;	// Configure ACLK to to be sourced from VLO = ~12KHz

    /* Initialize the timer module */
    if (timer_init() != 0)
    {
    	/* Timers could not be initialized...hang */
    	while(1);
    }

    /* Configure Digital IO */
    P1SEL &= ~BIT0;	// LED On board red LED
    P1SEL2 &= ~BIT0;
    P1DIR |= BIT0;
    LEDON();


    /* Bit-bang SPI pin setup */
    P2SEL &= ~BIT1;	// SCLK SPI clock
    P2DIR |= BIT1;
    P2SEL &= ~BIT2;	// MOSI SPI Master Out Slave In
    P2DIR |= BIT2;

    /* UART Setup */

    //USCI A
    //Config P1.1(RXD) and P1.2(TXD) for UART
    P1SEL |= BIT1 + BIT2;	//UCA0RXD, UCA0TXD
	P1SEL2 |= BIT1 + BIT2;
    P1DIR |= BIT2;	//outputs
    P1OUT &= ~(BIT2);	//cleared
    P1REN  |= 0x02;

    uart_config_t config;
    config.baud = 9600;
    if(uart_init(&config) != 0)
	{
		while(1);
	}
    uart_puts("UART Initialized.  Setting up rest of board.\n");

    /* I2C Setup */

    //Config P1.6 (SCL) and P1.7 (SDA) for I2C
    P1SEL |= BIT6 + BIT7;
    P1SEL2 |= BIT6 + BIT7;

    if(i2c_init() != 0)
    {
    	while(1);
    }

    /* HV Measurement Setup */
    hvmeas_init();

    /* Electronic Load Setup */
    elecLoad_init();

    /* Global interrupt enable */
    __enable_interrupt();		//Needed for blocking delays in following icDac code

    /* Setup IC DAC */
    P2SEL &= ~BIT0;	// ICCSN Switch IC DAC shift register CSn
   	P2DIR |= BIT0;
    icDAC_init();

	uart_puts("Board setup complete.  Enabling interrupts and returning to main.\n");

    //watchdog_enable();

    return 0;
}


void LEDON(void)
{
	P1OUT |= BIT0;	//P1.0 for launchpad
}

void LEDOFF(void)
{
	P1OUT &= ~BIT0;	//P1.0 for launchpad
}

/*	Launchpad button input interrupt
__attribute__((interrupt(PORT1_VECTOR))) void port1_isr(void)
{

	if(P1IFG & BIT3)
	{
		P1IFG &= ~BIT3;
	}
}
*/
