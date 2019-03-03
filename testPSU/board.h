/*
 * board.h
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#ifndef BOARD_H_
#define BOARD_H_

/**
* brief Initialize all board dependant functionality
* return 0 on success, -1 otherwise
*/
int board_init(void);
void LEDON(void);
void LEDOFF(void);

#define REDLED 0	//P1.0 for launchpad

#endif /* BOARD_H_ */


