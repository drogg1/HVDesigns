EESchema Schematic File Version 2
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
LIBS:HVTest
LIBS:CsIPMTBreakout
LIBS:CsIPSU-socket-cache
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
L R11265U-PMT-socket U1
U 1 1 5A1348B2
P 6375 5325
F 0 "U1" H 6575 4625 60  0000 C CNN
F 1 "R11265U-PMT-socket" H 6375 6075 60  0000 C CNN
F 2 "CsIPMTBreakout:R11265U-PMT-socket" H 6375 5325 60  0001 C CNN
F 3 "" H 6375 5325 60  0000 C CNN
	1    6375 5325
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P1
U 1 1 5A1348E0
P 4875 5475
F 0 "P1" H 4875 6025 50  0000 C CNN
F 1 "CONN_01X10" V 4975 5475 50  0000 C CNN
F 2 "HVTest:Pin_Header_Straight_1x10_Pitch2.54mm-narrowforhv" H 4875 5475 50  0001 C CNN
F 3 "" H 4875 5475 50  0000 C CNN
	1    4875 5475
	-1   0    0    -1  
$EndComp
Text GLabel 5125 5525 2    50   UnSpc ~ 0
ST2
Text GLabel 5125 5425 2    50   UnSpc ~ 0
ST4
Text GLabel 5125 5325 2    50   UnSpc ~ 0
ST5
Text GLabel 5125 5225 2    50   UnSpc ~ 0
ST6
Text GLabel 5125 5125 2    50   UnSpc ~ 0
ST7
Text GLabel 5175 5025 2    50   UnSpc ~ 0
ST8
Text GLabel 5125 5925 2    50   UnSpc ~ 0
ST9
Text GLabel 5125 5825 2    50   UnSpc ~ 0
ST10
Text GLabel 5125 5725 2    50   UnSpc ~ 0
ST12
Wire Wire Line
	5125 5925 5075 5925
Wire Wire Line
	5075 5825 5125 5825
Wire Wire Line
	5075 5725 5125 5725
Wire Wire Line
	5075 5625 5125 5625
Wire Wire Line
	5075 5525 5125 5525
Wire Wire Line
	5075 5425 5125 5425
Wire Wire Line
	5075 5325 5125 5325
Wire Wire Line
	5075 5225 5125 5225
Wire Wire Line
	5075 5125 5125 5125
Wire Wire Line
	5075 5025 5175 5025
Text GLabel 5825 4925 0    50   UnSpc ~ 0
ST2
Text GLabel 5825 5125 0    50   UnSpc ~ 0
ST4
Text GLabel 5825 5325 0    50   UnSpc ~ 0
ST5
Text GLabel 5825 5525 0    50   UnSpc ~ 0
ST6
Text GLabel 5825 5725 0    50   UnSpc ~ 0
ST7
Text GLabel 5825 5925 0    50   UnSpc ~ 0
ST8
Text GLabel 6925 5925 2    50   UnSpc ~ 0
ST9
Text GLabel 6925 5725 2    50   UnSpc ~ 0
ST10
Text GLabel 7275 5525 2    50   UnSpc ~ 0
ST12
Wire Wire Line
	5925 4725 5825 4725
Wire Wire Line
	5925 4925 5825 4925
Wire Wire Line
	5925 5125 5825 5125
Wire Wire Line
	5825 5325 5925 5325
Wire Wire Line
	5925 5525 5825 5525
Wire Wire Line
	5825 5725 5925 5725
Wire Wire Line
	5925 5925 5825 5925
Wire Wire Line
	6825 5925 6925 5925
Wire Wire Line
	6925 5725 6825 5725
Wire Wire Line
	6825 5525 6925 5525
Wire Wire Line
	6825 4725 7175 4725
Wire Wire Line
	6875 4725 6875 5525
Connection ~ 6875 5525
Wire Wire Line
	6825 5325 6875 5325
Connection ~ 6875 5325
Wire Wire Line
	6825 5125 6875 5125
Connection ~ 6875 5125
Wire Wire Line
	6825 4925 6875 4925
Connection ~ 6875 4925
$Comp
L C_Small C1
U 1 1 5A134C81
P 7275 4725
F 0 "C1" H 7285 4795 50  0000 L CNN
F 1 "0.1uF" H 7285 4645 50  0000 L CNN
F 2 "Capacitors_SMD:C_1812" H 7275 4725 50  0001 C CNN
F 3 "" H 7275 4725 50  0000 C CNN
	1    7275 4725
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A134CEF
P 7475 4925
F 0 "R1" V 7555 4925 50  0000 C CNN
F 1 "1M" V 7475 4925 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7405 4925 50  0001 C CNN
F 3 "" H 7475 4925 50  0000 C CNN
	1    7475 4925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A134D0C
P 7475 5175
F 0 "#PWR01" H 7475 4925 50  0001 C CNN
F 1 "GND" H 7475 5025 50  0000 C CNN
F 2 "" H 7475 5175 50  0000 C CNN
F 3 "" H 7475 5175 50  0000 C CNN
	1    7475 5175
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5A134D33
P 7675 4925
F 0 "C2" H 7685 4995 50  0000 L CNN
F 1 "0.1uF" H 7685 4845 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7675 4925 50  0001 C CNN
F 3 "" H 7675 4925 50  0000 C CNN
	1    7675 4925
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5A134D66
P 7925 4725
F 0 "C3" H 7935 4795 50  0000 L CNN
F 1 "3.3nF" H 7935 4645 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7925 4725 50  0001 C CNN
F 3 "" H 7925 4725 50  0000 C CNN
	1    7925 4725
	0    -1   -1   0   
$EndComp
$Comp
L UFL-CONN J1
U 1 1 5A134DAA
P 8325 4725
F 0 "J1" H 8425 4575 60  0000 C CNN
F 1 "UFL-CONN" H 8325 4875 60  0001 C CNN
F 2 "HVTest:U.FL-R-SMT" H 8325 4725 60  0001 C CNN
F 3 "" H 8325 4725 60  0000 C CNN
	1    8325 4725
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A134DF5
P 8175 4975
F 0 "#PWR02" H 8175 4725 50  0001 C CNN
F 1 "GND" H 8175 4825 50  0000 C CNN
F 2 "" H 8175 4975 50  0000 C CNN
F 3 "" H 8175 4975 50  0000 C CNN
	1    8175 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 4875 8175 4875
Wire Wire Line
	8175 4875 8175 4975
Wire Wire Line
	8025 4725 8175 4725
Wire Wire Line
	7375 4725 7825 4725
Connection ~ 6875 4725
Wire Wire Line
	7475 4725 7475 4775
Connection ~ 7475 4725
Wire Wire Line
	7475 5075 7475 5175
Wire Wire Line
	7475 5125 7675 5125
Wire Wire Line
	7675 5125 7675 5025
Connection ~ 7475 5125
Wire Wire Line
	7675 4825 7675 4725
Connection ~ 7675 4725
Wire Wire Line
	8175 4925 8225 4925
Connection ~ 8175 4925
$Comp
L GND #PWR03
U 1 1 5A13568C
P 5825 4725
F 0 "#PWR03" H 5825 4475 50  0001 C CNN
F 1 "GND" H 5825 4575 50  0000 C CNN
F 2 "" H 5825 4725 50  0000 C CNN
F 3 "" H 5825 4725 50  0000 C CNN
	1    5825 4725
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A1356B3
P 5125 5625
F 0 "#PWR04" H 5125 5375 50  0001 C CNN
F 1 "GND" H 5125 5475 50  0000 C CNN
F 2 "" H 5125 5625 50  0000 C CNN
F 3 "" H 5125 5625 50  0000 C CNN
	1    5125 5625
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5A146277
P 7075 5525
F 0 "R2" V 7155 5525 50  0000 C CNN
F 1 "2M" V 7075 5525 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7005 5525 50  0001 C CNN
F 3 "" H 7075 5525 50  0000 C CNN
	1    7075 5525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7225 5525 7275 5525
Text Notes 7225 4650 0    60   ~ 0
HV
Text Notes 4750 6200 0    60   ~ 0
Connects to\nCSI PSU board
Text Notes 8525 4750 0    60   ~ 0
U.FL Signal Out
Text Notes 7025 6850 0    60   ~ 0
Socket board that fits onto R11265U PMT pins.  Filtered dynode voltages are fed to \nboard from PSU board.  Routes voltages to appropriate PMT pins and provides a \nU.FL signal output.
Text Notes 8200 5775 0    60   ~ 0
Voltage Tapering Scheme\n\n   1 2 3 4 5 6 7 8 9 10 11 12 P\n  2 2 1 1 1 1 1 1 2 0  0  0  0
$EndSCHEMATC
