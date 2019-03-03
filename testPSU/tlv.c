/*
 * tlv.c
 *
 *  Created on: Aug 31, 2016
 *      Author: User
 */

#include "tlv.h"
#include <msp430.h>
#include <stdint.h>
#include <stddef.h>

static uint16_t _calculate_checksum(uint16_t *address, size_t len);

/**
* brief Verify the TLV data in flash
* return 0 if TLV data is valid, -1 otherwise
*/
int tlv_verify(void)
{
    return (TLV_CHECKSUM + _calculate_checksum((uint16_t *) 0x10c2, 62));
}

static uint16_t _calculate_checksum(uint16_t *data, size_t len)
{
    uint16_t crc = 0;

    len = len >> 1;

    while (len-- > 0) {
        crc ^= *(data++);
    }

    return crc;
}
