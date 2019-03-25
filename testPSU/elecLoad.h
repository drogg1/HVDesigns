/*
 * elecLoad.h
 *
 *  Created on: Mar 5, 2019
 *      Author: User
 */

#ifndef ELECLOAD_H_
#define ELECLOAD_H_

#include <stdint.h>

int elecLoad_init();
int setLoadDAC(uint16_t dacValue);

#endif /* ELECLOAD_H_ */
