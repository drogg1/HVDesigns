/*
 * adc10.c
 *
 *  Created on: Feb 28, 2019
 *      Author: User
 */

#include <msp430.h>
#include <stdint.h>
#include "adc10.h"

void adc10_init(void)
{
	// Internal reference, 64 cycle sample, 200 ksps, ref always on, single conversion, 1.5V reference, reference on, ADC on, interrupt on
	ADC10CTL0 = SREF_1 + ADC10SHT_3 + REFON + ADC10ON + ADC10IE;
	// Channel 0, trigger on ADC10SC bit, binary, not inverted, /1 divider, MCLK, single channel single coversion
	ADC10CTL1 = INCH_0 + ADC10DIV_0 + ADC10SSEL_2 + CONSEQ_0;
	// Enable analog inputs 0,3,4,5
	ADC10AE0 = BIT0 + BIT3 + BIT4 + BIT5;
	// Data tranfer control registers
	// One-block transfers, not continuous
	//ADC10DTC0 = 0;
	// number of transfers per block
	// 1 Transfer
	//ADC10DTC1 = 1;
}

/* Single Conversion on specific channel*/
/*
 * CONSEQx == 00
 * ADC10ON = 1
 * INCHx = channel to convert
 * ENC set to HIGH
 * ADC10SA set to high to trigger conversion
 * sample for 64 clock cycles (1 us * 64 = 64 us)
 * convert for 12 clock cycles
 * result written to ADC10MEM and ADC10IFG is set
 * Data transfer controller moves result to desired loc in one CPU MCLK cycle
 * Only enable DTC when ADC10 is disabled
 */
uint16_t singConv(uint16_t channel)
{
	uint16_t result;

	//Clear channel bits
	ADC10CTL1 &= 0x0FFF;
	//Set channel bits
	//TODO: sanitize channel numbers
	ADC10CTL1 |= (channel << 12);

	ADC10CTL0 |= ENC | ADC10SC;	//Enable and start conversion

	//Enter low power mode to wait for conversion
	__bis_SR_register(CPUOFF + GIE);

	result = ADC10MEM;

	return result;
}

//Tranfer block start address - ADC10SA
//Conversion location - ADC10MEM
//Busy bit in ADC10CTL1 - ADC10BUSY
//Start conversion bit in ADC10CTL0 - ADC10SC
//Enable conversion bit in ADC10CTL0 - ENC
/*Sample start code
 * ADC10CTL0 |= ENC + ADC10SC;
 * __bis_SR_register(CPUOFF + GIE);	//LPM0 with interrupts
 * value = ADC10MEM;
 *
 * #pragma vector=ADC10_VECTOR
 * __interrupt void ADC!0_ISR(void)
 * {
 * 	__bic_SR_register_on_exit(CPUOFF);  //Wake up
 * }
 */

