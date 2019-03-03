#include <msp430.h>
#include <stdint.h>
#include <stdio.h>
#include "board.h"
#include "defines.h"
#include "i2c.h"
#include "timer.h"
#include "tlv.h"
#include "uart.h"
#include "watchdog.h"
#include "icDAC.h"
#include "hvmeas.h"


char* itoa(int num, char* str, int base);

/*
 * main.c
 */
int main(void) {
	if(board_init() == 0)
	{
		const uint32_t HVsetpoint = 700;		//Desired voltage at last stage
		uint32_t dacv = HVsetpoint * 4096;
		dacv = 4096 - (dacv/930);
		char dacvalue[10];
		itoa(dacv,dacvalue,10);
		uart_puts("DAC Code:  ");
		uart_puts(dacvalue);
		uart_puts("\n");

		//uint32_t result;
		//BOARDLED blink, set DAC value, and read and output HV ADC
		while(1)
		{
			//watchdog_pet();
			LEDON();

			setICDAC((uint16_t)dacv);
			//result = readHVMeasADC();

			/*
			if(result > 0)
			{
				uart_puts("\nHV:  ");
				//Convert int to string
				char sample[10];
				itoa(result,sample,10);
				//Write result out
				uart_puts(sample);
				uart_putchar('\n');
			}
			*/

			//delay(500);
			LEDOFF();
			delay(500);

			uart_puts("Here!\n");
		}
	}
	return 0;
}

void reverse(char str[], int length){
	unsigned int start = 0;
	unsigned int end = length -1;
	int temp;
	while(start < end)
	{
		temp = str[start];
		str[start] = str[end];
		str[end] = temp;
		start++;
		end--;
	}
}

char* itoa(int num, char* str, int base)
{
	unsigned int i = 0;
	int remainder;

	if(num == 0)
	{
		str[i++] = '0';
		str[i] = '\0';
		return str;
	}

	while(num != 0 )
	{
		remainder = num % base;
		str[i++] = (remainder > 9)? (remainder-10) + 'a' : remainder + '0';
		num = num/base;
	}

	reverse(str,i);

	str[i] = '\0';

	return str;
}

