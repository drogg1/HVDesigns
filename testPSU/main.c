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
#include "elecLoad.h"


uint32_t HVsetpoint = 600;		//Desired voltage at last stage
const uint16_t loadCurrnA = 000;		//Desired load current in nA

char* itoa(int num, char* str, int base);

/*
 * main.c
 */
int main(void) {
	if(board_init() == 0)
	{
		/*
		uart_puts("Enter desired voltage at anode:  ");
		//Wait until receive a character
		IE2 |= UCA0RXIE;
		__bis_SR_register(LPM0_bits + GIE);
		//while((IFG2 & UCA0RXIFG) == 0);
		int valBuf[20];
		int i = 0;
		//Process received characters
		valBuf[i] = uart_getchar();
		while(valBuf[i] != '\0')
		{
			valBuf[++i] = uart_getchar();
		}
		//uart_putchar(receivedChar);
		i= 0;
		int power = 1;
		int temp = 0;
		uint32_t setVoltage = 0;
		while(valBuf[i] >= '0' && valBuf[i] <= '9' && power < 5)
		{
			temp = (valBuf[i] - '0');
			setVoltage = setVoltage + temp;
			setVoltage = setVoltage * power;
			power *= 10;
			i++;
			//uart_putchar(receivedChar);
		}

		char setstring[10];
		itoa(setVoltage,setstring,10);
		uart_puts("Received value:  ");
		uart_puts(setstring);
		uart_puts("\n");
		//Limit
		if(setVoltage > 930)
		{
			setVoltage = 930;
		}
		HVsetpoint = setVoltage;
		*/
		//Set desired HV output
		uint32_t dacv = HVsetpoint * 2048;
		dacv = 2048 - (dacv/921);
		char dacvalue[10];
		itoa(dacv,dacvalue,10);
		uart_puts("DAC Code:  ");
		uart_puts(dacvalue);
		uart_puts("\n");

		//Set DC load using electronic load

		uint16_t loaddacv = (loadCurrnA / 8) & 0xFFF;
		itoa(loaddacv,dacvalue,10);
		uart_puts("Load DAC Code:  ");
		uart_puts(dacvalue);
		uart_puts("\n");
		setLoadDAC(loaddacv);

		volatile uint32_t result;
		//BOARDLED blink, set DAC value, and read and output HV ADC
		while(1)
		{
			//watchdog_pet();
			LEDON();

			setICDAC((uint16_t)dacv);
			result = readHVMeasADC();
			result = result/35;

			itoa(dacv,dacvalue,10);
			uart_puts("DAC Code:  ");
			uart_puts(dacvalue);
			uart_puts("\n");

			//if(result > -1)
			//{
				uart_puts("\nHV:  ");
				//Convert int to string
				char sample[10];
				itoa(result,sample,10);
				//Write result out
				uart_puts(sample);
				uart_putchar('\n');
			//}
			//delay(500);
			LEDOFF();
			delay(2000);
			/*
			dacv += 10;

			if (dacv > 2047)
			{
				dacv = 0;
			}
			*/
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

