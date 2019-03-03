/*
 * hvmeas.h
 *
 *  Created on: Mar 1, 2019
 *      Author: User
 */

#ifndef HVMEAS_H_
#define HVMEAS_H_

#include <stdint.h>

int hvmeas_init(void);
uint32_t readHVMeasADC();

#endif /* HVMEAS_H_ */
