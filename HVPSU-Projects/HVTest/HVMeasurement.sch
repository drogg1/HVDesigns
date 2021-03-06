EESchema Schematic File Version 4
LIBS:HVTest-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
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
L Device:R R48
U 1 1 5879B2E7
P 4050 3650
F 0 "R48" V 4130 3650 50  0000 C CNN
F 1 "10M" V 4050 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3980 3650 50  0001 C CNN
F 3 "" H 4050 3650 50  0000 C CNN
	1    4050 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 5879B377
P 4050 3900
F 0 "#PWR071" H 4050 3650 50  0001 C CNN
F 1 "GND" H 4050 3750 50  0000 C CNN
F 2 "" H 4050 3900 50  0000 C CNN
F 3 "" H 4050 3900 50  0000 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
Text Notes 2900 3500 0    60   ~ 0
128 mV @ 1206V worse \ncase 1% tolerances
$Comp
L HVTest:LTC2050 U12
U 1 1 587A0ABF
P 5000 3650
F 0 "U12" H 4800 3200 60  0000 C CNN
F 1 "LTC2050" H 4950 3650 60  0000 C CNN
F 2 "HVTest:TSOT-23-5" H 5000 3650 60  0001 C CNN
F 3 "" H 5000 3650 60  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R50
U 1 1 587A0B68
P 4850 4400
F 0 "R50" V 4930 4400 50  0000 C CNN
F 1 "220k" V 4850 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4780 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0000 C CNN
	1    4850 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR072
U 1 1 587A0B93
P 5000 4100
F 0 "#PWR072" H 5000 3850 50  0001 C CNN
F 1 "GND" H 5000 3950 50  0000 C CNN
F 2 "" H 5000 4100 50  0000 C CNN
F 3 "" H 5000 4100 50  0000 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 587A0BB1
P 4400 4850
F 0 "#PWR073" H 4400 4600 50  0001 C CNN
F 1 "GND" H 4400 4700 50  0000 C CNN
F 2 "" H 4400 4850 50  0000 C CNN
F 3 "" H 4400 4850 50  0000 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R49
U 1 1 587A0BDA
P 4400 4650
F 0 "R49" V 4480 4650 50  0000 C CNN
F 1 "10k" V 4400 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4330 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0000 C CNN
	1    4400 4650
	-1   0    0    1   
$EndComp
Text Notes 4700 4650 0    60   ~ 0
Av = 23 => 23*128 mV = 2.944 FS
$Comp
L power:+3V3 #PWR074
U 1 1 587A109A
P 5000 2900
F 0 "#PWR074" H 5000 2750 50  0001 C CNN
F 1 "+3V3" H 5000 3040 50  0000 C CNN
F 2 "" H 5000 2900 50  0000 C CNN
F 3 "" H 5000 2900 50  0000 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R51
U 1 1 587A1CC2
P 5850 3650
F 0 "R51" V 5930 3650 50  0000 C CNN
F 1 "1k" V 5850 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5780 3650 50  0001 C CNN
F 3 "" H 5850 3650 50  0000 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
Text Notes 3600 2550 0    60   ~ 0
12.7 nA @ 1206 V = 15.3 uW\n6.3 nA @ 600 V = 3.78 uW\nworse case 1% tolerances
$Comp
L Device:C C75
U 1 1 587A249E
P 5250 3150
F 0 "C75" H 5275 3250 50  0000 L CNN
F 1 "0.1uF" H 5275 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5288 3000 50  0001 C CNN
F 3 "" H 5250 3150 50  0000 C CNN
	1    5250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR075
U 1 1 587A24C1
P 5400 3350
F 0 "#PWR075" H 5400 3100 50  0001 C CNN
F 1 "GND" H 5400 3200 50  0000 C CNN
F 2 "" H 5400 3350 50  0000 C CNN
F 3 "" H 5400 3350 50  0000 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C76
U 1 1 587A2991
P 5550 3150
F 0 "C76" H 5575 3250 50  0000 L CNN
F 1 "1uF" H 5575 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5588 3000 50  0001 C CNN
F 3 "" H 5550 3150 50  0000 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L HVTest-rescue:CONN_01X02-conn P15
U 1 1 587A31B3
P 6350 4100
F 0 "P15" H 6350 4250 50  0000 C CNN
F 1 "CONN_01X02" V 6450 4100 50  0000 C CNN
F 2 "HVTest:Pin_Header_Straight_SMT_02x01D" H 6350 4100 50  0001 C CNN
F 3 "" H 6350 4100 50  0000 C CNN
	1    6350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR076
U 1 1 587A322C
P 6100 4250
F 0 "#PWR076" H 6100 4000 50  0001 C CNN
F 1 "GND" H 6100 4100 50  0000 C CNN
F 2 "" H 6100 4250 50  0000 C CNN
F 3 "" H 6100 4250 50  0000 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
$Comp
L HVTest:LTC2451 U13
U 1 1 587A9BDF
P 7450 3650
F 0 "U13" H 7850 3300 60  0000 C CNN
F 1 "LTC2451" H 7450 3650 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-8-1EP_2x3mm_Pitch0.5mm" H 7450 3650 60  0001 C CNN
F 3 "" H 7450 3650 60  0001 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C78
U 1 1 587A9D42
P 6700 3900
F 0 "C78" H 6725 4000 50  0000 L CNN
F 1 "0.1uF" H 6725 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6738 3750 50  0001 C CNN
F 3 "" H 6700 3900 50  0000 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR077
U 1 1 587A9DE0
P 6700 4250
F 0 "#PWR077" H 6700 4000 50  0001 C CNN
F 1 "GND" H 6700 4100 50  0000 C CNN
F 2 "" H 6700 4250 50  0000 C CNN
F 3 "" H 6700 4250 50  0000 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C79
U 1 1 587AA083
P 6950 3150
F 0 "C79" H 6975 3250 50  0000 L CNN
F 1 "0.1uF" H 6975 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6988 3000 50  0001 C CNN
F 3 "" H 6950 3150 50  0000 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C77
U 1 1 587AA0F1
P 6650 3150
F 0 "C77" H 6675 3250 50  0000 L CNN
F 1 "1uF" H 6675 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6688 3000 50  0001 C CNN
F 3 "" H 6650 3150 50  0000 C CNN
	1    6650 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR078
U 1 1 587AA138
P 6800 3400
F 0 "#PWR078" H 6800 3150 50  0001 C CNN
F 1 "GND" H 6800 3250 50  0000 C CNN
F 2 "" H 6800 3400 50  0000 C CNN
F 3 "" H 6800 3400 50  0000 C CNN
	1    6800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR079
U 1 1 587AAC09
P 6650 2900
F 0 "#PWR079" H 6650 2750 50  0001 C CNN
F 1 "+3V3" H 6650 3040 50  0000 C CNN
F 2 "" H 6650 2900 50  0000 C CNN
F 3 "" H 6650 2900 50  0000 C CNN
	1    6650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3900 4050 3800
Wire Wire Line
	4050 3250 4050 3400
Wire Wire Line
	4050 3400 4500 3400
Connection ~ 4050 3400
Wire Wire Line
	4400 4800 4400 4850
Wire Wire Line
	4400 3900 4400 4400
Wire Wire Line
	4400 3900 4500 3900
Wire Wire Line
	4400 4400 4700 4400
Connection ~ 4400 4400
Wire Wire Line
	5000 4400 5600 4400
Wire Wire Line
	5600 4400 5600 3650
Wire Wire Line
	5500 3650 5600 3650
Wire Wire Line
	5000 4050 5000 4100
Wire Wire Line
	5000 2900 5000 2950
Connection ~ 5600 3650
Wire Wire Line
	6000 3650 6100 3650
Wire Wire Line
	5250 3300 5400 3300
Wire Wire Line
	5400 3300 5400 3350
Connection ~ 5400 3300
Wire Wire Line
	5000 2950 5250 2950
Wire Wire Line
	5550 2950 5550 3000
Wire Wire Line
	5250 3000 5250 2950
Connection ~ 5250 2950
Wire Wire Line
	6100 4250 6100 4150
Wire Wire Line
	6100 4150 6150 4150
Wire Wire Line
	6150 4050 6100 4050
Wire Wire Line
	6100 4050 6100 3650
Connection ~ 6100 3650
Wire Wire Line
	6700 3650 6700 3750
Connection ~ 6700 3650
Wire Wire Line
	6700 4050 6700 4200
Wire Wire Line
	6650 3300 6650 3350
Wire Wire Line
	6650 3350 6800 3350
Wire Wire Line
	6950 3350 6950 3300
Wire Wire Line
	6800 3350 6800 3400
Connection ~ 6800 3350
Wire Wire Line
	6650 2900 6650 2950
Wire Wire Line
	6650 2950 6950 2950
Wire Wire Line
	7700 2950 7700 3150
Wire Wire Line
	7350 3150 7350 2950
Connection ~ 7350 2950
Wire Wire Line
	6950 3000 6950 2950
Connection ~ 6950 2950
Connection ~ 5000 2950
Connection ~ 6650 2950
Wire Wire Line
	8350 3600 8100 3600
Wire Wire Line
	8350 3700 8100 3700
Text HLabel 8350 3700 2    60   BiDi ~ 0
SDA
Text HLabel 8350 3600 2    60   BiDi ~ 0
SCL
Wire Wire Line
	6700 4200 7350 4200
Wire Wire Line
	7750 4200 7750 4150
Connection ~ 6700 4200
Wire Wire Line
	7650 4150 7650 4200
Connection ~ 7650 4200
Wire Wire Line
	7550 4150 7550 4200
Connection ~ 7550 4200
Wire Wire Line
	7350 4150 7350 4200
Connection ~ 7350 4200
Text Notes 8150 3950 0    50   ~ 0
I2C Address\n"0010100"
Text Notes 5700 2600 0    50   ~ 0
3.3 V supply current\n0.8 mA (LTC2050)\n0.4 mA (LTC2451)
Text Notes 3000 3100 0    60   ~ 0
Connect 100G Res
$Comp
L HVTest-rescue:CONN_01X01-conn P18
U 1 1 5889AE54
P 4050 3050
AR Path="/5889AE54" Ref="P18"  Part="1" 
AR Path="/5879B204/5889AE54" Ref="P18"  Part="1" 
F 0 "P18" H 4050 3150 50  0000 C CNN
F 1 "CONN_01X01" V 4150 3050 50  0000 C CNN
F 2 "HVTest:Pin_Header_Straight_1x01" H 4050 3050 50  0001 C CNN
F 3 "" H 4050 3050 50  0000 C CNN
	1    4050 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3400 4050 3500
Wire Wire Line
	4400 4400 4400 4500
Wire Wire Line
	5600 3650 5700 3650
Wire Wire Line
	5400 3300 5550 3300
Wire Wire Line
	5250 2950 5550 2950
Wire Wire Line
	6100 3650 6700 3650
Wire Wire Line
	6700 3650 6800 3650
Wire Wire Line
	6800 3350 6950 3350
Wire Wire Line
	7350 2950 7700 2950
Wire Wire Line
	6950 2950 7350 2950
Wire Wire Line
	5000 2950 5000 3250
Wire Wire Line
	6650 2950 6650 3000
Wire Wire Line
	6700 4200 6700 4250
Wire Wire Line
	7650 4200 7750 4200
Wire Wire Line
	7550 4200 7650 4200
Wire Wire Line
	7350 4200 7550 4200
Text Notes 7100 6800 0    60   ~ 0
Allows measurement of final HV stage with minimal\nloading (1000V/100Gohm = 10 nA => 10 uW)
$EndSCHEMATC
