EESchema Schematic File Version 4
LIBS:HVTest-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L power:GND #PWR040
U 1 1 58506565
P 7900 4150
F 0 "#PWR040" H 7900 3900 50  0001 C CNN
F 1 "GND" H 7900 4000 50  0000 C CNN
F 2 "" H 7900 4150 50  0000 C CNN
F 3 "" H 7900 4150 50  0000 C CNN
	1    7900 4150
	1    0    0    -1  
$EndComp
NoConn ~ 8750 4300
NoConn ~ 8850 4300
Text GLabel 8550 4800 3    60   UnSpc ~ 0
SWITCH
Text GLabel 8650 4800 3    60   UnSpc ~ 0
P1W
Text GLabel 9700 3950 2    60   UnSpc ~ 0
P0W
Text GLabel 9700 3850 2    60   UnSpc ~ 0
RIN
$Comp
L power:+3V3 #PWR041
U 1 1 585067DC
P 8550 3200
F 0 "#PWR041" H 8550 3050 50  0001 C CNN
F 1 "+3V3" H 8550 3340 50  0000 C CNN
F 2 "" H 8550 3200 50  0000 C CNN
F 3 "" H 8550 3200 50  0000 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
Text HLabel 7550 3750 0    60   BiDi ~ 0
SDA
Text HLabel 7550 3650 0    60   Input ~ 0
SCL
$Comp
L power:GND #PWR042
U 1 1 585068A8
P 9400 3250
F 0 "#PWR042" H 9400 3000 50  0001 C CNN
F 1 "GND" H 9400 3100 50  0000 C CNN
F 2 "" H 9400 3250 50  0000 C CNN
F 3 "" H 9400 3250 50  0000 C CNN
	1    9400 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C22
U 1 1 585068B7
P 9150 3250
F 0 "C22" H 9175 3350 50  0000 L CNN
F 1 "0.1uF" H 9175 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9188 3100 50  0001 C CNN
F 3 "" H 9150 3250 50  0000 C CNN
	1    9150 3250
	0    -1   -1   0   
$EndComp
$Comp
L HVTest:MAX4704 U8
U 1 1 58516167
P 4400 2350
F 0 "U8" H 4800 1850 60  0000 C CNN
F 1 "MAX4704" H 4400 2350 60  0000 C CNN
F 2 "HVTest:QFN-12-1EP_3x3mm_Pitch0.5mm" H 4400 2350 60  0001 C CNN
F 3 "" H 4400 2350 60  0000 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L HVTest:MAX4704 U9
U 1 1 58516246
P 4400 5600
F 0 "U9" H 4800 5100 60  0000 C CNN
F 1 "MAX4704" H 4400 5600 60  0000 C CNN
F 2 "HVTest:QFN-12-1EP_3x3mm_Pitch0.5mm" H 4400 5600 60  0001 C CNN
F 3 "" H 4400 5600 60  0000 C CNN
	1    4400 5600
	1    0    0    -1  
$EndComp
Text Notes 8300 2850 0    60   ~ 0
Dual digipot for setting pulse width\nand delay resistances
$Comp
L power:+3V3 #PWR043
U 1 1 58516DE0
P 3200 5400
F 0 "#PWR043" H 3200 5250 50  0001 C CNN
F 1 "+3V3" H 3200 5540 50  0000 C CNN
F 2 "" H 3200 5400 50  0000 C CNN
F 3 "" H 3200 5400 50  0000 C CNN
	1    3200 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR044
U 1 1 58516DF7
P 3200 2150
F 0 "#PWR044" H 3200 2000 50  0001 C CNN
F 1 "+3V3" H 3200 2290 50  0000 C CNN
F 2 "" H 3200 2150 50  0000 C CNN
F 3 "" H 3200 2150 50  0000 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 58516E12
P 3200 2400
F 0 "C15" H 3225 2500 50  0000 L CNN
F 1 "0.1uF" H 3225 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3238 2250 50  0001 C CNN
F 3 "" H 3200 2400 50  0000 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 58516EB3
P 3200 5650
F 0 "C16" H 3225 5750 50  0000 L CNN
F 1 "0.1uF" H 3225 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3238 5500 50  0001 C CNN
F 3 "" H 3200 5650 50  0000 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 58516F29
P 3200 2650
F 0 "#PWR045" H 3200 2400 50  0001 C CNN
F 1 "GND" H 3200 2500 50  0000 C CNN
F 2 "" H 3200 2650 50  0000 C CNN
F 3 "" H 3200 2650 50  0000 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 58516F46
P 3200 5900
F 0 "#PWR046" H 3200 5650 50  0001 C CNN
F 1 "GND" H 3200 5750 50  0000 C CNN
F 2 "" H 3200 5900 50  0000 C CNN
F 3 "" H 3200 5900 50  0000 C CNN
	1    3200 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 585170D1
P 5150 6000
F 0 "#PWR047" H 5150 5750 50  0001 C CNN
F 1 "GND" H 5150 5850 50  0000 C CNN
F 2 "" H 5150 6000 50  0000 C CNN
F 3 "" H 5150 6000 50  0000 C CNN
	1    5150 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 58517136
P 4550 6350
F 0 "#PWR048" H 4550 6100 50  0001 C CNN
F 1 "GND" H 4550 6200 50  0000 C CNN
F 2 "" H 4550 6350 50  0000 C CNN
F 3 "" H 4550 6350 50  0000 C CNN
	1    4550 6350
	1    0    0    -1  
$EndComp
Text GLabel 4150 4850 0    60   UnSpc ~ 0
ICAP2
$Comp
L Device:C C17
U 1 1 585173F3
P 3500 6750
F 0 "C17" H 3525 6850 50  0000 L CNN
F 1 "1nF" H 3525 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3538 6600 50  0001 C CNN
F 3 "" H 3500 6750 50  0000 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
Text GLabel 3600 7250 0    60   UnSpc ~ 0
ICAP1
$Comp
L Device:C C19
U 1 1 58517AC2
P 3800 6750
F 0 "C19" H 3825 6850 50  0000 L CNN
F 1 "220pF" H 3825 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3838 6600 50  0001 C CNN
F 3 "" H 3800 6750 50  0000 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 58517F1C
P 3200 6750
F 0 "C13" H 3225 6850 50  0000 L CNN
F 1 "3.3nF" H 3225 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3238 6600 50  0001 C CNN
F 3 "" H 3200 6750 50  0000 C CNN
	1    3200 6750
	1    0    0    -1  
$EndComp
Text Label 3800 6550 1    60   ~ 0
INO2
Text Label 3500 6550 1    60   ~ 0
INO1
Text Label 3200 6550 1    60   ~ 0
INO0
Text Label 3550 5750 0    60   ~ 0
INO2
Text Label 4400 6450 1    60   ~ 0
INO1
Text Label 4400 4900 1    60   ~ 0
INO0
Text HLabel 5150 5450 2    60   Input ~ 0
INTS1
Text HLabel 4550 4850 1    60   Input ~ 0
INTS0
$Comp
L Device:C C12
U 1 1 5851976E
P 3200 3450
F 0 "C12" H 3225 3550 50  0000 L CNN
F 1 "1nF" H 3225 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3238 3300 50  0001 C CNN
F 3 "" H 3200 3450 50  0000 C CNN
	1    3200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 585197EB
P 3500 3450
F 0 "C14" H 3525 3550 50  0000 L CNN
F 1 "470pF" H 3525 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3538 3300 50  0001 C CNN
F 3 "" H 3500 3450 50  0000 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5851985D
P 3800 3450
F 0 "C18" H 3825 3550 50  0000 L CNN
F 1 "220pF" H 3825 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3838 3300 50  0001 C CNN
F 3 "" H 3800 3450 50  0000 C CNN
	1    3800 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5851A3C0
P 4550 3100
F 0 "#PWR049" H 4550 2850 50  0001 C CNN
F 1 "GND" H 4550 2950 50  0000 C CNN
F 2 "" H 4550 3100 50  0000 C CNN
F 3 "" H 4550 3100 50  0000 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5851A43D
P 5150 2750
F 0 "#PWR050" H 5150 2500 50  0001 C CNN
F 1 "GND" H 5150 2600 50  0000 C CNN
F 2 "" H 5150 2750 50  0000 C CNN
F 3 "" H 5150 2750 50  0000 C CNN
	1    5150 2750
	1    0    0    -1  
$EndComp
Text HLabel 5150 2200 2    60   Input ~ 0
PWS1
Text HLabel 4550 1600 1    60   Input ~ 0
PWS0
Text Label 3550 2500 0    60   ~ 0
PNO2
Text Label 4400 3200 1    60   ~ 0
PNO1
Text Label 4400 1650 1    60   ~ 0
PNO0
Text GLabel 3600 3850 0    60   UnSpc ~ 0
CIN
Text Label 3200 3250 1    60   ~ 0
PNO0
Text Label 3500 3250 1    60   ~ 0
PNO1
Text Label 3800 3250 1    60   ~ 0
PNO2
Text GLabel 4150 1600 0    60   UnSpc ~ 0
RIN
Text Notes 1950 5750 0    60   ~ 0
Analog switch to select\nintegration capacitor
Text Notes 1950 2500 0    60   ~ 0
Analog switch to select\npulse width timing cap
$Comp
L conn:CONN_01X02 P11
U 1 1 58539293
P 9000 4600
F 0 "P11" H 9000 4750 50  0000 C CNN
F 1 "CONN_01X02" V 9100 4600 50  0001 C CNN
F 2 "HVTest:Pin_Header_Straight_SMT_02x01D" H 9000 4600 50  0001 C CNN
F 3 "" H 9000 4600 50  0000 C CNN
	1    9000 4600
	1    0    0    -1  
$EndComp
$Comp
L conn:CONN_01X02 P12
U 1 1 585395C9
P 9450 4350
F 0 "P12" H 9450 4500 50  0000 C CNN
F 1 "CONN_01X02" V 9550 4350 50  0001 C CNN
F 2 "HVTest:Pin_Header_Straight_SMT_02x01D" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0000 C CNN
	1    9450 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3850 7900 3950
Wire Wire Line
	7900 3850 8050 3850
Wire Wire Line
	8050 3950 7900 3950
Connection ~ 7900 3950
Wire Wire Line
	7900 4050 8050 4050
Connection ~ 7900 4050
Wire Wire Line
	9350 3950 9500 3950
Wire Wire Line
	8650 4300 8650 4550
Wire Wire Line
	8550 4300 8550 4650
Wire Wire Line
	8550 3200 8550 3250
Wire Wire Line
	8850 3250 8850 3300
Connection ~ 8550 3250
Wire Wire Line
	8750 3300 8750 3250
Connection ~ 8750 3250
Wire Wire Line
	8650 3300 8650 3250
Connection ~ 8650 3250
Wire Wire Line
	7550 3650 8050 3650
Wire Wire Line
	7550 3750 8050 3750
Wire Wire Line
	3200 5400 3200 5450
Wire Wire Line
	3200 5900 3200 5800
Wire Wire Line
	5050 5750 5150 5750
Wire Wire Line
	5150 5750 5150 5900
Wire Wire Line
	5050 5900 5150 5900
Connection ~ 5150 5900
Wire Wire Line
	4550 6350 4550 6250
Wire Wire Line
	4150 4850 4250 4850
Wire Wire Line
	4250 4650 4250 4850
Wire Wire Line
	4400 4550 4400 4950
Wire Wire Line
	3200 6900 3200 7000
Wire Wire Line
	3800 7000 3800 6900
Wire Wire Line
	3500 6900 3500 7000
Wire Wire Line
	3650 7000 3650 7250
Wire Wire Line
	3500 6350 3500 6600
Wire Wire Line
	3200 6350 3200 6600
Wire Wire Line
	3800 6350 3800 6600
Wire Wire Line
	4400 6500 4400 6250
Wire Wire Line
	3500 5750 3750 5750
Wire Wire Line
	5150 5450 5050 5450
Wire Wire Line
	4550 4850 4550 4950
Wire Wire Line
	3200 5450 3750 5450
Connection ~ 3200 5450
Wire Wire Line
	3500 2500 3750 2500
Wire Wire Line
	4400 3250 4400 3000
Wire Wire Line
	4550 3100 4550 3000
Wire Wire Line
	5050 2500 5150 2500
Wire Wire Line
	5150 2500 5150 2650
Wire Wire Line
	5050 2650 5150 2650
Connection ~ 5150 2650
Wire Wire Line
	5150 2200 5050 2200
Wire Wire Line
	4550 1600 4550 1700
Wire Wire Line
	4400 1300 4400 1700
Wire Wire Line
	3200 2650 3200 2550
Wire Wire Line
	3200 2150 3200 2200
Wire Wire Line
	3200 2200 3750 2200
Connection ~ 3200 2200
Wire Wire Line
	3800 2950 3800 3300
Wire Wire Line
	3500 2950 3500 3300
Wire Wire Line
	3200 2950 3200 3300
Wire Wire Line
	3200 3600 3200 3700
Wire Wire Line
	3800 3700 3800 3600
Wire Wire Line
	3500 3600 3500 3700
Connection ~ 3500 3700
Wire Wire Line
	3600 3850 3650 3850
Wire Wire Line
	3650 3850 3650 3700
Connection ~ 3650 3700
Wire Wire Line
	3650 7250 3600 7250
Wire Wire Line
	4150 1600 4250 1600
Wire Wire Line
	4250 1400 4250 1600
Wire Wire Line
	9300 3250 9400 3250
Connection ~ 8850 3250
Wire Wire Line
	9350 3850 9400 3850
Wire Wire Line
	8550 4650 8800 4650
Connection ~ 8550 4650
Wire Wire Line
	9500 4150 9500 3950
Connection ~ 9500 3950
Wire Wire Line
	9400 3850 9400 4150
Connection ~ 9400 3850
Wire Wire Line
	8650 4550 8800 4550
Connection ~ 8650 4550
$Comp
L conn:CONN_01X02 P9
U 1 1 5853AA87
P 3850 1350
F 0 "P9" H 3850 1500 50  0000 C CNN
F 1 "CONN_01X02" V 3950 1350 50  0001 C CNN
F 2 "HVTest:Pin_Header_Straight_SMT_02x01D" H 3850 1350 50  0001 C CNN
F 3 "" H 3850 1350 50  0000 C CNN
	1    3850 1350
	-1   0    0    1   
$EndComp
$Comp
L conn:CONN_01X02 P10
U 1 1 5853BB24
P 3750 4600
F 0 "P10" H 3750 4750 50  0000 C CNN
F 1 "CONN_01X02" V 3850 4600 50  0001 C CNN
F 2 "HVTest:Pin_Header_Straight_SMT_02x01D" H 3750 4600 50  0001 C CNN
F 3 "" H 3750 4600 50  0000 C CNN
	1    3750 4600
	-1   0    0    1   
$EndComp
Text Notes 3200 1400 0    50   ~ 0
Switch Bypass
Text Notes 3100 4650 0    50   ~ 0
Switch Bypass
Text Notes 9150 4550 0    50   ~ 0
Digipot Bypasses
$Comp
L HVTest:MCP4651T U10
U 1 1 585064E9
P 8700 3800
F 0 "U10" H 9100 3450 60  0000 C CNN
F 1 "MCP4651T" H 8700 3800 60  0000 C CNN
F 2 "KB1LQC:QFN-16-4x4" H 8700 3800 60  0001 C CNN
F 3 "" H 8700 3800 60  0000 C CNN
	1    8700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7000 3500 7000
Connection ~ 3500 7000
Connection ~ 3650 7000
Wire Wire Line
	3950 4550 4400 4550
Wire Wire Line
	3950 4650 4250 4650
Connection ~ 4250 4850
Wire Wire Line
	4050 1400 4250 1400
Connection ~ 4250 1600
Wire Wire Line
	4050 1300 4400 1300
Wire Wire Line
	3200 3700 3500 3700
Wire Wire Line
	8550 3250 8650 3250
Text Notes 7250 3450 0    50   ~ 0
I2C Address\n"0101A2A1A0"\n"0101111" <- Configured As
Text Notes 6550 1800 0    50   ~ 0
3.3 V Supply current\n0.25 mA (MCP461T)\n1 uA (MAX4704)
NoConn ~ 4250 6250
NoConn ~ 4250 3000
Wire Wire Line
	7900 3950 7900 4050
Wire Wire Line
	7900 4050 7900 4150
Wire Wire Line
	8550 3250 8550 3300
Wire Wire Line
	8750 3250 8850 3250
Wire Wire Line
	8650 3250 8750 3250
Wire Wire Line
	5150 5900 5150 6000
Wire Wire Line
	3200 5450 3200 5500
Wire Wire Line
	5150 2650 5150 2750
Wire Wire Line
	3200 2200 3200 2250
Wire Wire Line
	3500 3700 3650 3700
Wire Wire Line
	3650 3700 3800 3700
Wire Wire Line
	8850 3250 9000 3250
Wire Wire Line
	8550 4650 8550 4800
Wire Wire Line
	9500 3950 9700 3950
Wire Wire Line
	9400 3850 9700 3850
Wire Wire Line
	8650 4550 8650 4800
Wire Wire Line
	3500 7000 3650 7000
Wire Wire Line
	3650 7000 3800 7000
Wire Wire Line
	4250 4850 4250 4950
Wire Wire Line
	4250 1600 4250 1700
$EndSCHEMATC
