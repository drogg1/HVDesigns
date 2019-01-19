EESchema Schematic File Version 4
LIBS:HVTest-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L HVTest:HIROSE-DF12 J5
U 1 1 5850FEBD
P 8200 3750
F 0 "J5" H 8650 2900 60  0000 C CNN
F 1 "HIROSE-DF12" H 8200 3750 60  0000 C CNN
F 2 "HVTest:CheetahSocket" H 8200 3650 60  0000 C CNN
F 3 "" H 8200 3750 60  0001 C CNN
	1    8200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR066
U 1 1 58510005
P 9300 3050
F 0 "#PWR066" H 9300 2800 50  0001 C CNN
F 1 "GND" H 9300 2900 50  0000 C CNN
F 2 "" H 9300 3050 50  0000 C CNN
F 3 "" H 9300 3050 50  0000 C CNN
	1    9300 3050
	0    -1   -1   0   
$EndComp
Text HLabel 2800 4050 0    50   Output ~ 0
SPI1_SSa
Text HLabel 2800 3850 0    50   Output ~ 0
SPI1_SCK
Text HLabel 2800 3950 0    50   Output ~ 0
SPI1_MOSI
NoConn ~ 8900 3350
NoConn ~ 8900 3450
NoConn ~ 8900 3550
NoConn ~ 8900 3650
NoConn ~ 8900 3750
NoConn ~ 8900 3850
NoConn ~ 8900 3950
NoConn ~ 8900 4050
NoConn ~ 8900 4150
NoConn ~ 8900 4250
NoConn ~ 8900 4350
NoConn ~ 8900 4450
NoConn ~ 7500 4450
NoConn ~ 7500 4350
NoConn ~ 7500 4250
NoConn ~ 7500 4150
NoConn ~ 7500 3750
NoConn ~ 7500 3650
NoConn ~ 7500 3550
NoConn ~ 7500 3450
NoConn ~ 7500 3350
$Comp
L conn:CONN_01X03 P14
U 1 1 5879274E
P 6050 4750
F 0 "P14" H 6050 4950 50  0000 C CNN
F 1 "CONN_01X03" V 6150 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6050 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0000 C CNN
	1    6050 4750
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR067
U 1 1 58792865
P 6800 2950
F 0 "#PWR067" H 6800 2800 50  0001 C CNN
F 1 "+3V3" H 6800 3090 50  0000 C CNN
F 2 "" H 6800 2950 50  0000 C CNN
F 3 "" H 6800 2950 50  0000 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
$Comp
L HVTest:TLP293-4 U11
U 1 1 587930F4
P 4700 4100
F 0 "U11" H 4900 3650 60  0000 C CNN
F 1 "TLP293-4" H 4700 4600 60  0000 C CNN
F 2 "SMD_Packages:SO-16-N" H 4700 4100 60  0001 C CNN
F 3 "" H 4700 4100 60  0001 C CNN
	1    4700 4100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 58793416
P 5300 4450
F 0 "R43" V 5380 4450 50  0000 C CNN
F 1 "1k" V 5300 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5230 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0000 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 58793460
P 5500 4450
F 0 "R44" V 5580 4450 50  0000 C CNN
F 1 "1k" V 5500 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5430 4450 50  0001 C CNN
F 3 "" H 5500 4450 50  0000 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 58793490
P 5700 4450
F 0 "R45" V 5780 4450 50  0000 C CNN
F 1 "1k" V 5700 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5630 4450 50  0001 C CNN
F 3 "" H 5700 4450 50  0000 C CNN
	1    5700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR068
U 1 1 58793596
P 5300 4700
F 0 "#PWR068" H 5300 4450 50  0001 C CNN
F 1 "GND" H 5300 4550 50  0000 C CNN
F 2 "" H 5300 4700 50  0000 C CNN
F 3 "" H 5300 4700 50  0000 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
NoConn ~ 5150 4350
NoConn ~ 5150 4450
$Comp
L Device:R R42
U 1 1 5879443B
P 4050 3550
F 0 "R42" V 4130 3550 50  0000 C CNN
F 1 "10k" V 4050 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3980 3550 50  0001 C CNN
F 3 "" H 4050 3550 50  0000 C CNN
	1    4050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 58794D73
P 4150 4650
F 0 "#PWR069" H 4150 4400 50  0001 C CNN
F 1 "GND" H 4150 4500 50  0000 C CNN
F 2 "" H 4150 4650 50  0000 C CNN
F 3 "" H 4150 4650 50  0000 C CNN
	1    4150 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5879502A
P 3850 3550
F 0 "R41" V 3930 3550 50  0000 C CNN
F 1 "10k" V 3850 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3780 3550 50  0001 C CNN
F 3 "" H 3850 3550 50  0000 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5879505D
P 3650 3550
F 0 "R40" V 3730 3550 50  0000 C CNN
F 1 "10k" V 3650 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3580 3550 50  0001 C CNN
F 3 "" H 3650 3550 50  0000 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3050 9000 3050
Wire Wire Line
	9000 3050 9000 3150
Wire Wire Line
	9000 3250 8900 3250
Connection ~ 9000 3050
Wire Wire Line
	8900 3150 9000 3150
Connection ~ 9000 3150
Wire Wire Line
	7200 3050 7350 3050
Wire Wire Line
	7500 3150 7350 3150
Wire Wire Line
	7350 3050 7350 3150
Connection ~ 7350 3050
Wire Wire Line
	7350 3250 7500 3250
Connection ~ 7350 3150
Wire Wire Line
	6800 2950 6800 3050
Wire Wire Line
	6800 3050 7100 3050
Wire Wire Line
	5150 3950 6050 3950
Wire Wire Line
	5150 4250 5300 4250
Wire Wire Line
	5300 4250 5300 4300
Wire Wire Line
	5150 4050 5500 4050
Wire Wire Line
	5500 4050 5500 4300
Wire Wire Line
	5150 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4300
Wire Wire Line
	5150 3750 5950 3750
Wire Wire Line
	6250 3750 6250 3850
Wire Wire Line
	6250 3850 6450 3850
Wire Wire Line
	5150 4150 6150 4150
Wire Wire Line
	6250 4150 6250 4050
Wire Wire Line
	6250 4050 6650 4050
Wire Wire Line
	6150 4550 6150 4150
Connection ~ 6150 4150
Wire Wire Line
	6050 4550 6050 3950
Connection ~ 6050 3950
Wire Wire Line
	5950 4550 5950 3750
Connection ~ 5950 3750
Wire Wire Line
	5300 4600 5300 4650
Wire Wire Line
	5300 4650 5500 4650
Wire Wire Line
	5700 4650 5700 4600
Wire Wire Line
	5500 4600 5500 4650
Connection ~ 5500 4650
Connection ~ 5300 4650
Wire Wire Line
	4150 3850 4150 4050
Wire Wire Line
	4150 4250 4250 4250
Wire Wire Line
	4150 4050 4250 4050
Connection ~ 4150 4250
Wire Wire Line
	4150 3850 4250 3850
Connection ~ 4150 4050
Wire Wire Line
	3650 3250 3650 3350
Wire Wire Line
	3650 3350 3850 3350
Wire Wire Line
	4050 3350 4050 3400
Wire Wire Line
	3850 3400 3850 3350
Connection ~ 3850 3350
Wire Wire Line
	4050 3700 4050 3750
Wire Wire Line
	3450 3750 4050 3750
Wire Wire Line
	3450 4150 3650 4150
Wire Wire Line
	2800 3950 3850 3950
Connection ~ 4050 3750
Wire Wire Line
	3850 3700 3850 3950
Connection ~ 3850 3950
Wire Wire Line
	3650 4150 3650 3700
Connection ~ 3650 4150
NoConn ~ 4250 4450
NoConn ~ 4250 4350
Text GLabel 3650 3250 1    60   UnSpc ~ 0
VIC
Connection ~ 3650 3350
Text Notes 4450 3500 0    60   ~ 0
Opto-isolation
Text Notes 5600 5300 0    60   ~ 0
Potential connection to GPIO
Wire Wire Line
	2800 4050 3450 4050
Wire Wire Line
	2800 3850 3450 3850
Wire Wire Line
	3450 3850 3450 3750
Wire Wire Line
	3450 4050 3450 4150
Text HLabel 6550 3650 1    60   Input ~ 0
MSPMOSI
Text HLabel 6450 3650 1    60   Input ~ 0
MSPSCLK
Text HLabel 6650 3650 1    60   Input ~ 0
~ICCSN
Wire Wire Line
	6450 3650 6450 3850
Connection ~ 6450 3850
Wire Wire Line
	6550 3650 6550 3950
Connection ~ 6550 3950
Wire Wire Line
	6650 3650 6650 4050
Connection ~ 6650 4050
$Comp
L conn:CONN_01X01 P23
U 1 1 5891701B
P 6500 4750
F 0 "P23" H 6500 4850 50  0000 C CNN
F 1 "CONN_01X01" V 6600 4750 50  0000 C CNN
F 2 "HVTest:Pin_Header_Straight_1x01" H 6500 4750 50  0001 C CNN
F 3 "" H 6500 4750 50  0000 C CNN
	1    6500 4750
	0    -1   -1   0   
$EndComp
$Comp
L conn:CONN_01X01 P24
U 1 1 589170B8
P 6650 4750
F 0 "P24" H 6650 4850 50  0000 C CNN
F 1 "CONN_01X01" V 6750 4750 50  0000 C CNN
F 2 "HVTest:Pin_Header_Straight_1x01" H 6650 4750 50  0001 C CNN
F 3 "" H 6650 4750 50  0000 C CNN
	1    6650 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR070
U 1 1 58917386
P 6500 5000
F 0 "#PWR070" H 6500 4750 50  0001 C CNN
F 1 "GND" H 6500 4850 50  0000 C CNN
F 2 "" H 6500 5000 50  0000 C CNN
F 3 "" H 6500 5000 50  0000 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5000 6500 4950
Wire Wire Line
	6650 4950 6650 5000
Wire Wire Line
	6650 5000 6500 5000
$Comp
L conn:CONN_01X02 P25
U 1 1 5893B04C
P 7150 2750
F 0 "P25" H 7150 2900 50  0000 C CNN
F 1 "CONN_01X02" V 7250 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0000 C CNN
	1    7150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 3050 7100 2950
Wire Wire Line
	7200 2950 7200 3050
Wire Wire Line
	9000 3050 9300 3050
Wire Wire Line
	9000 3150 9000 3250
Wire Wire Line
	7350 3050 7500 3050
Wire Wire Line
	7350 3150 7350 3250
Wire Wire Line
	6150 4150 6250 4150
Wire Wire Line
	6050 3950 6550 3950
Wire Wire Line
	5950 3750 6250 3750
Wire Wire Line
	5500 4650 5700 4650
Wire Wire Line
	5300 4650 5300 4700
Wire Wire Line
	4150 4250 4150 4650
Wire Wire Line
	4150 4050 4150 4250
Wire Wire Line
	3850 3350 4050 3350
Wire Wire Line
	4050 3750 4250 3750
Wire Wire Line
	3850 3950 4250 3950
Wire Wire Line
	3650 4150 4250 4150
Wire Wire Line
	3650 3350 3650 3400
Wire Wire Line
	6450 3850 7500 3850
Wire Wire Line
	6550 3950 7500 3950
Wire Wire Line
	6650 4050 7500 4050
Text Notes 9150 3700 0    60   ~ 0
Connector to MCA10\nOptional connections to 3.3V supply
Text Notes 2300 4500 0    60   ~ 0
Currently outputs are buffered to \ndecrease rise time to enable consistent\nSPI communication
$EndSCHEMATC