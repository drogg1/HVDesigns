EESchema Schematic File Version 2
LIBS:ActiveLoad-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ActiveLoad
LIBS:ActiveLoad-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OPA191 U3
U 1 1 59B7E416
P 4950 3500
F 0 "U3" H 5100 3250 60  0000 C CNN
F 1 "OPA191" H 4950 3500 60  0000 C CNN
F 2 "ActiveLoad:SOT-23-5" H 4950 3500 60  0001 C CNN
F 3 "" H 4950 3500 60  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L MCP4726 U1
U 1 1 59B7E652
P 2600 3250
F 0 "U1" H 2800 3000 60  0000 C CNN
F 1 "MCP4726" H 2600 3500 60  0000 C CNN
F 2 "ActiveLoad:SOT-23-6" H 2600 3250 60  0001 C CNN
F 3 "" H 2600 3250 60  0001 C CNN
	1    2600 3250
	-1   0    0    -1  
$EndComp
$Comp
L NDTL03N150C Q1
U 1 1 59B7EDB7
P 6050 3450
F 0 "Q1" H 6250 3525 50  0000 L CNN
F 1 "NDTL03N150C" H 6250 3450 50  0000 L CNN
F 2 "ActiveLoad:TO-3P-3L" H 6250 3375 50  0001 L CIN
F 3 "" H 6050 3450 50  0000 L CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 59B7EE31
P 6150 4350
F 0 "R4" H 6180 4370 50  0000 L CNN
F 1 "100k" H 6180 4310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6150 4350 50  0001 C CNN
F 3 "" H 6150 4350 50  0000 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59B7EE58
P 6150 4500
F 0 "#PWR01" H 6150 4250 50  0001 C CNN
F 1 "GND" H 6150 4350 50  0000 C CNN
F 2 "" H 6150 4500 50  0000 C CNN
F 3 "" H 6150 4500 50  0000 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59B7EF8E
P 3100 3250
F 0 "#PWR02" H 3100 3000 50  0001 C CNN
F 1 "GND" H 3100 3100 50  0000 C CNN
F 2 "" H 3100 3250 50  0000 C CNN
F 3 "" H 3100 3250 50  0000 C CNN
	1    3100 3250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R3
U 1 1 59B7EFBF
P 5650 3500
F 0 "R3" H 5680 3520 50  0000 L CNN
F 1 "100" H 5680 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5650 3500 50  0001 C CNN
F 3 "" H 5650 3500 50  0000 C CNN
	1    5650 3500
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 59B7F253
P 4950 2650
F 0 "#PWR03" H 4950 2500 50  0001 C CNN
F 1 "VCC" H 4950 2800 50  0000 C CNN
F 2 "" H 4950 2650 50  0000 C CNN
F 3 "" H 4950 2650 50  0000 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 59B7F387
P 3400 3350
F 0 "#PWR04" H 3400 3200 50  0001 C CNN
F 1 "VDD" H 3400 3500 50  0000 C CNN
F 2 "" H 3400 3350 50  0000 C CNN
F 3 "" H 3400 3350 50  0000 C CNN
	1    3400 3350
	0    1    1    0   
$EndComp
Text Label 3100 3150 0    60   ~ 0
VDAC
Text Label 1950 3150 0    60   ~ 0
VREF
$Comp
L R_Small R2
U 1 1 59B7F404
P 1800 3150
F 0 "R2" H 1830 3170 50  0000 L CNN
F 1 "2.2k" H 1830 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0000 C CNN
	1    1800 3150
	-1   0    0    1   
$EndComp
$Comp
L R_Small R1
U 1 1 59B7F446
P 1550 3150
F 0 "R1" H 1580 3170 50  0000 L CNN
F 1 "2.2k" H 1580 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1550 3150 50  0001 C CNN
F 3 "" H 1550 3150 50  0000 C CNN
	1    1550 3150
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR05
U 1 1 59B7F475
P 1550 2950
F 0 "#PWR05" H 1550 2800 50  0001 C CNN
F 1 "VDD" H 1550 3100 50  0000 C CNN
F 2 "" H 1550 2950 50  0000 C CNN
F 3 "" H 1550 2950 50  0000 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
Text Label 1950 3350 0    60   ~ 0
SDA
Text Label 1950 3250 0    60   ~ 0
SCL
$Comp
L C_Small C10
U 1 1 59B80156
P 5100 2850
F 0 "C10" H 5110 2920 50  0000 L CNN
F 1 "0.1uF" H 5110 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0000 C CNN
	1    5100 2850
	1    0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 59B801C3
P 5350 3050
F 0 "#PWR06" H 5350 2800 50  0001 C CNN
F 1 "GND" H 5350 2900 50  0000 C CNN
F 2 "" H 5350 3050 50  0000 C CNN
F 3 "" H 5350 3050 50  0000 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 59B80249
P 3150 3500
F 0 "C3" H 3160 3570 50  0000 L CNN
F 1 "10uF" H 3160 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3150 3500 50  0001 C CNN
F 3 "" H 3150 3500 50  0000 C CNN
	1    3150 3500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 59B803A4
P 3150 3650
F 0 "#PWR07" H 3150 3400 50  0001 C CNN
F 1 "GND" H 3150 3500 50  0000 C CNN
F 2 "" H 3150 3650 50  0000 C CNN
F 3 "" H 3150 3650 50  0000 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 59B80717
P 6150 2800
F 0 "P6" H 6150 2900 50  0000 C CNN
F 1 "HV+" V 6250 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6150 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0000 C CNN
	1    6150 2800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R6
U 1 1 59B80F6E
P 7000 4300
F 0 "R6" H 7030 4320 50  0000 L CNN
F 1 "10M" H 7030 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7000 4300 50  0001 C CNN
F 3 "" H 7000 4300 50  0000 C CNN
	1    7000 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59B81107
P 7000 4500
F 0 "#PWR08" H 7000 4250 50  0001 C CNN
F 1 "GND" H 7000 4350 50  0000 C CNN
F 2 "" H 7000 4500 50  0000 C CNN
F 3 "" H 7000 4500 50  0000 C CNN
	1    7000 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59B81F4E
P 4950 3950
F 0 "#PWR09" H 4950 3700 50  0001 C CNN
F 1 "GND" H 4950 3800 50  0000 C CNN
F 2 "" H 4950 3950 50  0000 C CNN
F 3 "" H 4950 3950 50  0000 C CNN
	1    4950 3950
	1    0    0    -1  
$EndComp
Text Label 4200 3250 0    60   ~ 0
VSET
$Comp
L LMP2231 U4
U 1 1 59B82FB4
P 7900 4250
F 0 "U4" H 7700 3800 60  0000 C CNN
F 1 "LMP2231" H 7850 4250 60  0000 C CNN
F 2 "ActiveLoad:SOT-23-5" H 7900 4250 60  0001 C CNN
F 3 "" H 7900 4250 60  0001 C CNN
	1    7900 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59B83032
P 7900 4700
F 0 "#PWR010" H 7900 4450 50  0001 C CNN
F 1 "GND" H 7900 4550 50  0000 C CNN
F 2 "" H 7900 4700 50  0000 C CNN
F 3 "" H 7900 4700 50  0000 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR011
U 1 1 59B83060
P 7900 3500
F 0 "#PWR011" H 7900 3350 50  0001 C CNN
F 1 "VDD" H 7900 3650 50  0000 C CNN
F 2 "" H 7900 3500 50  0000 C CNN
F 3 "" H 7900 3500 50  0000 C CNN
	1    7900 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 59B83B81
P 7350 5200
F 0 "R7" H 7380 5220 50  0000 L CNN
F 1 "10k" H 7380 5160 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7350 5200 50  0001 C CNN
F 3 "" H 7350 5200 50  0000 C CNN
	1    7350 5200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 59B83D85
P 7350 5350
F 0 "#PWR012" H 7350 5100 50  0001 C CNN
F 1 "GND" H 7350 5200 50  0000 C CNN
F 2 "" H 7350 5350 50  0000 C CNN
F 3 "" H 7350 5350 50  0000 C CNN
	1    7350 5350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 59B84798
P 8650 4250
F 0 "R9" H 8680 4270 50  0000 L CNN
F 1 "1k" H 8680 4210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0000 C CNN
	1    8650 4250
	0    1    1    0   
$EndComp
$Comp
L C_Small C14
U 1 1 59B84930
P 9150 4400
F 0 "C14" H 9160 4470 50  0000 L CNN
F 1 "0.1uF" H 9160 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9150 4400 50  0001 C CNN
F 3 "" H 9150 4400 50  0000 C CNN
	1    9150 4400
	-1   0    0    1   
$EndComp
$Comp
L MCP3421 U5
U 1 1 59B84D87
P 10000 4350
F 0 "U5" H 10350 4050 60  0000 C CNN
F 1 "MCP3421" H 10000 4350 60  0000 C CNN
F 2 "ActiveLoad:SOT-23-6" H 10000 4350 60  0001 C CNN
F 3 "" H 10000 4350 60  0001 C CNN
	1    10000 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59B84E64
P 9150 4600
F 0 "#PWR013" H 9150 4350 50  0001 C CNN
F 1 "GND" H 9150 4450 50  0000 C CNN
F 2 "" H 9150 4600 50  0000 C CNN
F 3 "" H 9150 4600 50  0000 C CNN
	1    9150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59B8512A
P 10000 4850
F 0 "#PWR014" H 10000 4600 50  0001 C CNN
F 1 "GND" H 10000 4700 50  0000 C CNN
F 2 "" H 10000 4850 50  0000 C CNN
F 3 "" H 10000 4850 50  0000 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR015
U 1 1 59B851B4
P 10000 3500
F 0 "#PWR015" H 10000 3350 50  0001 C CNN
F 1 "VDD" H 10000 3650 50  0000 C CNN
F 2 "" H 10000 3500 50  0000 C CNN
F 3 "" H 10000 3500 50  0000 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
Text Label 10650 4450 0    60   ~ 0
SCL
Text Label 10650 4250 0    60   ~ 0
SDA
$Comp
L CONN_01X02 P7
U 1 1 59B856B9
P 9100 5100
F 0 "P7" H 9100 5250 50  0000 C CNN
F 1 "CONN_01X02" V 9200 5100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 9100 5100 50  0001 C CNN
F 3 "" H 9100 5100 50  0000 C CNN
	1    9100 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59B8578E
P 8850 5200
F 0 "#PWR016" H 8850 4950 50  0001 C CNN
F 1 "GND" H 8850 5050 50  0000 C CNN
F 2 "" H 8850 5200 50  0000 C CNN
F 3 "" H 8850 5200 50  0000 C CNN
	1    8850 5200
	1    0    0    -1  
$EndComp
Text Label 3850 3150 0    60   ~ 0
VDAC
$Comp
L C_Small C12
U 1 1 59B88FB9
P 8100 3700
F 0 "C12" H 8110 3770 50  0000 L CNN
F 1 "0.1uF" H 8110 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8100 3700 50  0001 C CNN
F 3 "" H 8100 3700 50  0000 C CNN
	1    8100 3700
	1    0    0    1   
$EndComp
$Comp
L C_Small C15
U 1 1 59B89584
P 10150 3700
F 0 "C15" H 10160 3770 50  0000 L CNN
F 1 "0.1uF" H 10160 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10150 3700 50  0001 C CNN
F 3 "" H 10150 3700 50  0000 C CNN
	1    10150 3700
	1    0    0    1   
$EndComp
$Comp
L C_Small C13
U 1 1 59B896B0
P 8350 3700
F 0 "C13" H 8360 3770 50  0000 L CNN
F 1 "1uF" H 8360 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8350 3700 50  0001 C CNN
F 3 "" H 8350 3700 50  0000 C CNN
	1    8350 3700
	1    0    0    1   
$EndComp
$Comp
L C_Small C16
U 1 1 59B89711
P 10400 3700
F 0 "C16" H 10410 3770 50  0000 L CNN
F 1 "10uF" H 10410 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10400 3700 50  0001 C CNN
F 3 "" H 10400 3700 50  0000 C CNN
	1    10400 3700
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 59B8A8A3
P 1950 2500
F 0 "P2" H 1950 2650 50  0000 C CNN
F 1 "CONN_01X02" V 2050 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 1950 2500 50  0001 C CNN
F 3 "" H 1950 2500 50  0000 C CNN
	1    1950 2500
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR017
U 1 1 59B8A8AB
P 2250 2850
F 0 "#PWR017" H 2250 2600 50  0001 C CNN
F 1 "GND" H 2250 2700 50  0000 C CNN
F 2 "" H 2250 2850 50  0000 C CNN
F 3 "" H 2250 2850 50  0000 C CNN
	1    2250 2850
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C8
U 1 1 59B8A8B2
P 2050 2850
F 0 "C8" H 2060 2920 50  0000 L CNN
F 1 "0.1uF" H 2060 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2050 2850 50  0001 C CNN
F 3 "" H 2050 2850 50  0000 C CNN
	1    2050 2850
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 59B8C6B6
P 8350 3900
F 0 "#PWR018" H 8350 3650 50  0001 C CNN
F 1 "GND" H 8350 3750 50  0000 C CNN
F 2 "" H 8350 3900 50  0000 C CNN
F 3 "" H 8350 3900 50  0000 C CNN
	1    8350 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59B8CF39
P 10400 3900
F 0 "#PWR019" H 10400 3650 50  0001 C CNN
F 1 "GND" H 10400 3750 50  0000 C CNN
F 2 "" H 10400 3900 50  0000 C CNN
F 3 "" H 10400 3900 50  0000 C CNN
	1    10400 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 59B8D921
P 5350 2850
F 0 "C11" H 5360 2920 50  0000 L CNN
F 1 "10uF" H 5360 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5350 2850 50  0001 C CNN
F 3 "" H 5350 2850 50  0000 C CNN
	1    5350 2850
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR020
U 1 1 59B90E4F
P 4300 2500
F 0 "#PWR020" H 4300 2350 50  0001 C CNN
F 1 "VCC" H 4300 2650 50  0000 C CNN
F 2 "" H 4300 2500 50  0000 C CNN
F 3 "" H 4300 2500 50  0000 C CNN
	1    4300 2500
	0    1    1    0   
$EndComp
$Comp
L ST662 U2
U 1 1 59B91CF6
P 3100 1750
F 0 "U2" H 3300 1450 60  0000 C CNN
F 1 "ST662" H 3100 2050 60  0000 C CNN
F 2 "ActiveLoad:SO-8" H 3100 1750 60  0001 C CNN
F 3 "" H 3100 1750 60  0001 C CNN
	1    3100 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 59B920CB
P 3750 1600
F 0 "#PWR021" H 3750 1350 50  0001 C CNN
F 1 "GND" H 3750 1450 50  0000 C CNN
F 2 "" H 3750 1600 50  0000 C CNN
F 3 "" H 3750 1600 50  0000 C CNN
	1    3750 1600
	0    -1   -1   0   
$EndComp
Text Label 3600 1800 0    60   ~ 0
VCP
$Comp
L VDD #PWR022
U 1 1 59B92357
P 3650 1900
F 0 "#PWR022" H 3650 1750 50  0001 C CNN
F 1 "VDD" H 3650 2050 50  0000 C CNN
F 2 "" H 3650 1900 50  0000 C CNN
F 3 "" H 3650 1900 50  0000 C CNN
	1    3650 1900
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 59B926F8
P 2550 1600
F 0 "C1" H 2560 1670 50  0000 L CNN
F 1 "220nF" H 2560 1520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2550 1600 50  0001 C CNN
F 3 "" H 2550 1600 50  0000 C CNN
	1    2550 1600
	-1   0    0    1   
$EndComp
$Comp
L C_Small C2
U 1 1 59B929A6
P 2550 1900
F 0 "C2" H 2560 1970 50  0000 L CNN
F 1 "220nF" H 2560 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2550 1900 50  0001 C CNN
F 3 "" H 2550 1900 50  0000 C CNN
	1    2550 1900
	-1   0    0    1   
$EndComp
$Comp
L C_Small C4
U 1 1 59B92F94
P 3600 2050
F 0 "C4" H 3610 2120 50  0000 L CNN
F 1 "4.7uF" H 3610 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3600 2050 50  0001 C CNN
F 3 "" H 3600 2050 50  0000 C CNN
	1    3600 2050
	-1   0    0    1   
$EndComp
$Comp
L C_Small C6
U 1 1 59B9319D
P 4050 2050
F 0 "C6" H 4060 2120 50  0000 L CNN
F 1 "4.7uF" H 4060 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4050 2050 50  0001 C CNN
F 3 "" H 4050 2050 50  0000 C CNN
	1    4050 2050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 59B9339B
P 3600 2250
F 0 "#PWR023" H 3600 2000 50  0001 C CNN
F 1 "GND" H 3600 2100 50  0000 C CNN
F 2 "" H 3600 2250 50  0000 C CNN
F 3 "" H 3600 2250 50  0000 C CNN
	1    3600 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 59B93973
P 4050 1650
F 0 "C5" H 4060 1720 50  0000 L CNN
F 1 "100nF" H 4060 1570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4050 1650 50  0001 C CNN
F 3 "" H 4050 1650 50  0000 C CNN
	1    4050 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	3100 3250 3050 3250
Wire Wire Line
	6150 3650 6150 4250
Wire Wire Line
	6150 4500 6150 4450
Wire Wire Line
	3050 3350 3400 3350
Wire Wire Line
	3300 3150 3050 3150
Wire Wire Line
	1900 3150 2150 3150
Wire Wire Line
	1550 2950 1550 3050
Wire Wire Line
	1550 3000 1800 3000
Wire Wire Line
	1800 3000 1800 3050
Connection ~ 1550 3000
Wire Wire Line
	1800 3250 2150 3250
Wire Wire Line
	1550 3350 2150 3350
Wire Wire Line
	1550 3350 1550 3250
Wire Wire Line
	3150 3400 3150 3350
Connection ~ 3150 3350
Wire Wire Line
	3150 3650 3150 3600
Wire Wire Line
	6150 3000 6150 3250
Connection ~ 6150 3050
Wire Wire Line
	5450 3500 5550 3500
Wire Wire Line
	5750 3500 5850 3500
Wire Wire Line
	4950 2650 4950 3100
Wire Wire Line
	4950 3950 4950 3900
Wire Wire Line
	6150 4200 4400 4200
Wire Wire Line
	4400 4200 4400 3750
Wire Wire Line
	4400 3750 4450 3750
Connection ~ 6150 4200
Wire Wire Line
	3850 3250 4450 3250
Wire Wire Line
	5100 2950 5100 3000
Wire Wire Line
	5100 2700 5100 2750
Wire Wire Line
	7000 4400 7000 4500
Wire Wire Line
	7900 4700 7900 4650
Wire Wire Line
	7900 3500 7900 3850
Wire Wire Line
	7000 3600 7000 4200
Wire Wire Line
	7000 3050 6150 3050
Wire Wire Line
	6650 4000 7400 4000
Connection ~ 7000 4000
Wire Wire Line
	7350 4500 7350 5100
Wire Wire Line
	7350 4500 7400 4500
Connection ~ 7350 5050
Wire Wire Line
	8450 5050 8450 4250
Wire Wire Line
	8400 4250 8550 4250
Wire Wire Line
	7350 5350 7350 5300
Wire Wire Line
	9150 4500 9150 4600
Wire Wire Line
	9150 4550 9400 4550
Wire Wire Line
	9400 4550 9400 4450
Connection ~ 9150 4550
Wire Wire Line
	8750 4250 9400 4250
Wire Wire Line
	9150 4250 9150 4300
Connection ~ 9150 4250
Connection ~ 8450 4250
Wire Wire Line
	10000 4850 10000 4800
Wire Wire Line
	10000 3500 10000 3900
Wire Wire Line
	10850 4250 10600 4250
Wire Wire Line
	10850 4450 10600 4450
Wire Wire Line
	8900 5050 8850 5050
Wire Wire Line
	8850 5050 8850 4250
Connection ~ 8850 4250
Wire Wire Line
	8850 5200 8850 5150
Wire Wire Line
	8850 5150 8900 5150
Connection ~ 4950 2700
Wire Wire Line
	7900 3550 8350 3550
Wire Wire Line
	8350 3550 8350 3600
Connection ~ 7900 3550
Wire Wire Line
	8100 3600 8100 3550
Connection ~ 8100 3550
Wire Wire Line
	8350 3800 8350 3900
Wire Wire Line
	8100 3800 8100 3850
Wire Wire Line
	8100 3850 8350 3850
Connection ~ 8350 3850
Wire Wire Line
	10000 3550 10400 3550
Wire Wire Line
	10400 3550 10400 3600
Connection ~ 10000 3550
Wire Wire Line
	10150 3600 10150 3550
Connection ~ 10150 3550
Wire Wire Line
	10400 3800 10400 3900
Wire Wire Line
	10400 3850 10150 3850
Wire Wire Line
	10150 3850 10150 3800
Connection ~ 10400 3850
Wire Wire Line
	5350 2950 5350 3050
Wire Wire Line
	5100 3000 5350 3000
Connection ~ 5350 3000
Wire Wire Line
	5350 2700 5350 2750
Connection ~ 5100 2700
Wire Wire Line
	4950 2700 5350 2700
Wire Wire Line
	3550 1800 4050 1800
Wire Wire Line
	3550 1900 3650 1900
Wire Wire Line
	2550 1800 2650 1800
Wire Wire Line
	2650 1700 2550 1700
Wire Wire Line
	2550 1500 2650 1500
Wire Wire Line
	2650 1500 2650 1600
Wire Wire Line
	2650 1900 2650 2000
Wire Wire Line
	2650 2000 2550 2000
Wire Wire Line
	4050 1750 4050 1950
Wire Wire Line
	3600 1950 3600 1900
Connection ~ 3600 1900
Wire Wire Line
	3600 2150 3600 2250
Wire Wire Line
	3600 2200 4050 2200
Wire Wire Line
	4050 2200 4050 2150
Connection ~ 3600 2200
$Comp
L VDD #PWR024
U 1 1 59B94070
P 4050 1500
F 0 "#PWR024" H 4050 1350 50  0001 C CNN
F 1 "VDD" H 4050 1650 50  0000 C CNN
F 2 "" H 4050 1500 50  0000 C CNN
F 3 "" H 4050 1500 50  0000 C CNN
	1    4050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1500 4050 1550
Connection ~ 4050 1800
$Comp
L CONN_01X02 P5
U 1 1 59B962A7
P 4050 2550
F 0 "P5" H 4050 2700 50  0000 C CNN
F 1 "CONN_01X02" V 4150 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Right" H 4050 2550 50  0001 C CNN
F 3 "" H 4050 2550 50  0000 C CNN
	1    4050 2550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 59BD133E
P 1850 3700
F 0 "P8" H 1850 3850 50  0000 C CNN
F 1 "CONN_01X02" V 1950 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 1850 3700 50  0001 C CNN
F 3 "" H 1850 3700 50  0000 C CNN
	1    1850 3700
	0    -1   1    0   
$EndComp
Wire Wire Line
	1800 3500 1800 3350
Connection ~ 1800 3350
Wire Wire Line
	1900 3500 1900 3250
Connection ~ 1900 3250
Wire Wire Line
	4600 2600 4250 2600
Text Label 4350 2600 0    60   ~ 0
VCP
Wire Wire Line
	4250 2500 4300 2500
$Comp
L CONN_01X02 P1
U 1 1 59B8788F
P 3650 3200
F 0 "P1" H 3650 3350 50  0000 C CNN
F 1 "CONN_01X02" V 3750 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Right" H 3650 3200 50  0001 C CNN
F 3 "" H 3650 3200 50  0000 C CNN
	1    3650 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 3150 4100 3150
Wire Wire Line
	1900 2700 1900 3150
Wire Wire Line
	1950 2850 1900 2850
Connection ~ 1900 2850
Wire Wire Line
	2150 2850 2250 2850
Wire Wire Line
	2200 2850 2200 2700
Wire Wire Line
	2200 2700 2000 2700
Connection ~ 2200 2850
$Comp
L CONN_01X02 P3
U 1 1 59BDC29C
P 3150 4250
F 0 "P3" H 3150 4400 50  0000 C CNN
F 1 "CONN_01X02" V 3250 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3150 4250 50  0001 C CNN
F 3 "" H 3150 4250 50  0000 C CNN
	1    3150 4250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 59BDC376
P 3400 4450
F 0 "#PWR025" H 3400 4200 50  0001 C CNN
F 1 "GND" H 3400 4300 50  0000 C CNN
F 2 "" H 3400 4450 50  0000 C CNN
F 3 "" H 3400 4450 50  0000 C CNN
	1    3400 4450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR026
U 1 1 59BDC3ED
P 3400 4050
F 0 "#PWR026" H 3400 3900 50  0001 C CNN
F 1 "VDD" H 3400 4200 50  0000 C CNN
F 2 "" H 3400 4050 50  0000 C CNN
F 3 "" H 3400 4050 50  0000 C CNN
	1    3400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4300 3400 4300
Wire Wire Line
	3400 4300 3400 4450
Wire Wire Line
	3400 4200 3350 4200
Wire Wire Line
	3400 4050 3400 4200
$Comp
L CONN_01X02 P4
U 1 1 59BE2F0D
P 3650 1300
F 0 "P4" H 3650 1450 50  0000 C CNN
F 1 "CONN_01X02" V 3750 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Right" H 3650 1300 50  0001 C CNN
F 3 "" H 3650 1300 50  0000 C CNN
	1    3650 1300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3750 1600 3700 1600
Wire Wire Line
	3550 1600 3600 1600
Wire Wire Line
	3600 1600 3600 1500
Wire Wire Line
	3700 1500 3700 1700
Connection ~ 3700 1600
Wire Wire Line
	3700 1700 3550 1700
$Comp
L C_Small C7
U 1 1 59DCE344
P 4100 3450
F 0 "C7" H 4110 3520 50  0000 L CNN
F 1 "0.1uF" H 4110 3370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0000 C CNN
	1    4100 3450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR027
U 1 1 59DCE40B
P 4100 3600
F 0 "#PWR027" H 4100 3350 50  0001 C CNN
F 1 "GND" H 4100 3450 50  0000 C CNN
F 2 "" H 4100 3600 50  0000 C CNN
F 3 "" H 4100 3600 50  0000 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3600 4100 3550
Wire Wire Line
	4100 3350 4100 3250
Connection ~ 4100 3250
$Comp
L CONN_01X01 P9
U 1 1 59DCEFCD
P 7000 2850
F 0 "P9" H 7000 2950 50  0000 C CNN
F 1 "HV+P" V 7100 2850 50  0000 C CNN
F 2 "ActiveLoad:677-millmax-pin-socket" H 7000 2850 50  0001 C CNN
F 3 "" H 7000 2850 50  0000 C CNN
	1    7000 2850
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 59DCF065
P 7000 3400
F 0 "P10" H 7000 3500 50  0000 C CNN
F 1 "HV+N" V 7100 3400 50  0000 C CNN
F 2 "ActiveLoad:677-millmax-pin-socket" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0000 C CNN
	1    7000 3400
	0    -1   -1   0   
$EndComp
$Comp
L POT-RESCUE-ActiveLoad RV1
U 1 1 59DD2B69
P 7950 5200
F 0 "RV1" H 7950 5120 50  0000 C CNN
F 1 "POT" H 7950 5200 50  0000 C CNN
F 2 "ActiveLoad:PVG5A-10turnpot" H 7950 5200 50  0001 C CNN
F 3 "" H 7950 5200 50  0000 C CNN
	1    7950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5050 7750 5050
Wire Wire Line
	7750 5050 7750 5200
Wire Wire Line
	7750 5200 7800 5200
Wire Wire Line
	7950 5050 8450 5050
$Comp
L CONN_01X01 P11
U 1 1 59DDB7BB
P 6650 4700
F 0 "P11" H 6650 4800 50  0000 C CNN
F 1 "GND" V 6750 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6650 4700 50  0001 C CNN
F 3 "" H 6650 4700 50  0000 C CNN
	1    6650 4700
	0    1    1    0   
$EndComp
$Comp
L C_Small C9
U 1 1 59E607C2
P 3300 3500
F 0 "C9" H 3310 3570 50  0000 L CNN
F 1 "10uF" H 3310 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0000 C CNN
	1    3300 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 3400 3300 3350
Connection ~ 3300 3350
Wire Wire Line
	3300 3600 3300 3650
Wire Wire Line
	3300 3650 3150 3650
$Comp
L C_Small C17
U 1 1 59E61C71
P 3550 4250
F 0 "C17" H 3560 4320 50  0000 L CNN
F 1 "10uF" H 3560 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3550 4250 50  0001 C CNN
F 3 "" H 3550 4250 50  0000 C CNN
	1    3550 4250
	1    0    0    1   
$EndComp
$Comp
L C_Small C18
U 1 1 59E61FB1
P 3800 4250
F 0 "C18" H 3810 4320 50  0000 L CNN
F 1 "4.7uF" H 3810 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0000 C CNN
	1    3800 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	3400 4400 3800 4400
Wire Wire Line
	3800 4400 3800 4350
Connection ~ 3400 4400
Wire Wire Line
	3550 4350 3550 4400
Connection ~ 3550 4400
Wire Wire Line
	3800 4100 3800 4150
Wire Wire Line
	3400 4100 3800 4100
Connection ~ 3400 4100
Wire Wire Line
	3550 4100 3550 4150
Connection ~ 3550 4100
$Comp
L C_Small C19
U 1 1 59E63B78
P 6650 4300
F 0 "C19" H 6660 4370 50  0000 L CNN
F 1 "0.1uF" H 6660 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0000 C CNN
	1    6650 4300
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 4400 6650 4500
Wire Wire Line
	6650 4450 7000 4450
Connection ~ 7000 4450
Connection ~ 6650 4450
Wire Wire Line
	6650 4200 6650 4000
Text Notes 2525 2925 0    60   ~ 0
Sets Reference Voltage for\nElectronic Load
Text Notes 2300 2250 0    60   ~ 0
Creates 12V rail for \nelectronic load op amp
Text Notes 4000 2850 0    60   ~ 0
Electronic load op\namp supply
Text Notes 5325 3875 0    60   ~ 0
ISET = VSET/R4
Text Notes 6075 2600 0    60   ~ 0
Connect to HV to be \nloaded or measured
Text Notes 7050 3200 0    60   ~ 0
Connect 100G \nHV Resistor
Text Notes 7600 5475 0    60   ~ 0
Gain Control\nVo = 1 + RV1/R7
Text Notes 6125 5075 0    50   ~ 0
Vmeas = HV*(R6/(100G+R6))\n\nR6 = 10M => ~100 uV/V
Text Notes 8000 4550 0    50   ~ 0
Low Ibias\nLow offset
Text Notes 10125 4800 0    50   ~ 0
18-bit Sigma-Delta ADC
Text Notes 10125 4975 0    50   ~ 0
I2C Address\n1101000
Text Notes 2325 3800 0    50   ~ 0
12-bit DAC\nI2C Address\n1100011
Text Notes 3100 4725 0    60   ~ 0
5V external power
Text Notes 7075 6900 0    65   ~ 0
This board is designed to sink currents up to 50 uA from a HV supply. \nIt can also measure a HV with only 10 pA loading per volt.\nReference supply needed to calibrate HV measurement.
Text Notes 1725 4000 0    50   ~ 0
External\nControl
Text Notes 6250 3675 0    50   ~ 0
HV\nMOSFET
Text Notes 4600 4350 0    50   ~ 0
ILSB = (5V/4096)/100k = ~12 nA
$EndSCHEMATC