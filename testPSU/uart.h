/*
 * uart.h
 *
 *  Created on: Feb 27, 2019
 *      Author: User
 */

#ifndef UART_H_
#define UART_H_

#include <msp430.h>
#include <stdio.h>
#include <stdint.h>

typedef struct
{
	uint32_t baud;
} uart_config_t;

struct baud_value
{
	uint32_t baud;
	uint32_t UCAxBR0;
	uint32_t UCAxBR1;
	uint32_t UCAxMCTL;
};

int uart_init(uart_config_t *config);
int uart_getchar(void);
int uart_putchar(int c);
int uart_puts(const char *str);

#endif /* UART_H_ */


