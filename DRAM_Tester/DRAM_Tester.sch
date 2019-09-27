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
LIBS:cloudree_arduino
LIBS:cloudree_memory
LIBS:cloudree_switch
LIBS:DRAM_Tester-cache
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
L Nano U1
U 1 1 5C923C5E
P 4700 3850
F 0 "U1" H 4850 4650 60  0000 C CNN
F 1 "Nano" H 4650 4650 60  0000 C CNN
F 2 "Modules:Arduino_Nano" H 4750 3300 60  0001 C CNN
F 3 "" H 4750 3300 60  0001 C CNN
	1    4700 3850
	1    0    0    -1  
$EndComp
NoConn ~ 4300 3150
NoConn ~ 4300 3250
NoConn ~ 4300 3350
NoConn ~ 5100 3150
NoConn ~ 5100 3350
NoConn ~ 5100 4350
NoConn ~ 5100 4450
$Comp
L GND #PWR01
U 1 1 5C923D1C
P 4300 3450
F 0 "#PWR01" H 4300 3200 50  0001 C CNN
F 1 "GND" H 4300 3300 50  0000 C CNN
F 2 "" H 4300 3450 50  0001 C CNN
F 3 "" H 4300 3450 50  0001 C CNN
	1    4300 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5C923D31
P 5100 3250
F 0 "#PWR02" H 5100 3000 50  0001 C CNN
F 1 "GND" H 5100 3100 50  0000 C CNN
F 2 "" H 5100 3250 50  0001 C CNN
F 3 "" H 5100 3250 50  0001 C CNN
	1    5100 3250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 5C923D40
P 5100 3450
F 0 "#PWR03" H 5100 3300 50  0001 C CNN
F 1 "+5V" H 5100 3590 50  0000 C CNN
F 2 "" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0001 C CNN
	1    5100 3450
	0    1    1    0   
$EndComp
Text GLabel 4300 3950 0    60   Output ~ 0
RAS
Text GLabel 4300 3850 0    60   Output ~ 0
CAS
Text GLabel 4300 4050 0    60   Output ~ 0
WE
Text GLabel 5100 3950 2    60   Output ~ 0
G-LED
Text GLabel 5100 3750 2    60   Output ~ 0
R-LED
Text GLabel 5100 3650 2    60   Input ~ 0
SW
Text GLabel 4300 3550 0    60   BiDi ~ 0
D0
Text GLabel 4300 3650 0    60   BiDi ~ 0
D1
Text GLabel 5100 3850 2    60   BiDi ~ 0
D3
Text GLabel 4300 3750 0    60   BiDi ~ 0
D2
Text GLabel 4300 4150 0    60   Output ~ 0
A0
Text GLabel 4300 4250 0    60   Output ~ 0
A1
Text GLabel 4300 4350 0    60   Output ~ 0
A2
Text GLabel 4300 4450 0    60   Output ~ 0
A3
Text GLabel 4300 4550 0    60   Output ~ 0
A4
Text GLabel 5100 4550 2    60   Output ~ 0
A5
Text GLabel 5100 4250 2    60   Output ~ 0
A6
Text GLabel 5100 4150 2    60   Output ~ 0
A7
Text GLabel 5100 4050 2    60   Output ~ 0
A8
NoConn ~ 5100 3550
$Comp
L SW_SPDT SW1
U 1 1 5C923E04
P 6300 3050
F 0 "SW1" H 6300 3450 60  0000 C CNN
F 1 "SW_SPDT" H 6300 3350 60  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 6300 3050 60  0001 C CNN
F 3 "" H 6300 3050 60  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
Text GLabel 6700 3150 2    60   Output ~ 0
SW
$Comp
L +5V #PWR04
U 1 1 5C923EA3
P 5900 3000
F 0 "#PWR04" H 5900 2850 50  0001 C CNN
F 1 "+5V" H 5900 3140 50  0000 C CNN
F 2 "" H 5900 3000 50  0001 C CNN
F 3 "" H 5900 3000 50  0001 C CNN
	1    5900 3000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5C923EBB
P 5900 3100
F 0 "#PWR05" H 5900 2850 50  0001 C CNN
F 1 "GND" H 5900 2950 50  0000 C CNN
F 2 "" H 5900 3100 50  0001 C CNN
F 3 "" H 5900 3100 50  0001 C CNN
	1    5900 3100
	0    1    1    0   
$EndComp
$Comp
L 4464 U2
U 1 1 5C923EF9
P 6300 4150
F 0 "U2" H 6450 4700 60  0000 C CNN
F 1 "4464" H 6150 4700 60  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm_Socket" H 6300 3650 60  0001 C CNN
F 3 "" H 6300 3650 60  0001 C CNN
	1    6300 4150
	1    0    0    -1  
$EndComp
Text GLabel 5850 3850 0    60   BiDi ~ 0
D0
Text GLabel 5850 3950 0    60   BiDi ~ 0
D1
Text GLabel 5850 4250 0    60   Input ~ 0
A6
Text GLabel 5850 4350 0    60   Input ~ 0
A5
Text GLabel 5850 4450 0    60   Input ~ 0
A4
Text GLabel 6750 4550 2    60   Input ~ 0
A7
Text GLabel 6750 4450 2    60   Input ~ 0
A0
Text GLabel 6750 4350 2    60   Input ~ 0
A1
Text GLabel 6750 4250 2    60   Input ~ 0
A2
Text GLabel 6750 4150 2    60   Input ~ 0
A3
Text GLabel 6750 4050 2    60   BiDi ~ 0
D2
Text GLabel 6750 3850 2    60   BiDi ~ 0
D3
Text GLabel 6750 3950 2    60   Input ~ 0
CAS
Text GLabel 5850 4050 0    60   Input ~ 0
WE
Text GLabel 5850 4150 0    60   Input ~ 0
RAS
$Comp
L GND #PWR06
U 1 1 5C923FF0
P 6750 3750
F 0 "#PWR06" H 6750 3500 50  0001 C CNN
F 1 "GND" H 6750 3600 50  0000 C CNN
F 2 "" H 6750 3750 50  0001 C CNN
F 3 "" H 6750 3750 50  0001 C CNN
	1    6750 3750
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 5C92400A
P 5850 4550
F 0 "#PWR07" H 5850 4400 50  0001 C CNN
F 1 "+5V" H 5850 4690 50  0000 C CNN
F 2 "" H 5850 4550 50  0001 C CNN
F 3 "" H 5850 4550 50  0001 C CNN
	1    5850 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5C924024
P 5850 3750
F 0 "#PWR08" H 5850 3500 50  0001 C CNN
F 1 "GND" H 5850 3600 50  0000 C CNN
F 2 "" H 5850 3750 50  0001 C CNN
F 3 "" H 5850 3750 50  0001 C CNN
	1    5850 3750
	0    1    1    0   
$EndComp
$Comp
L KM44256 U3
U 1 1 5C9245BD
P 8050 4150
F 0 "U3" H 8050 4750 60  0000 C CNN
F 1 "KM44256" H 8050 4850 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_Socket" H 8050 4750 60  0001 C CNN
F 3 "" H 8050 4750 60  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
Text GLabel 7600 3700 0    60   BiDi ~ 0
D0
Text GLabel 7600 3800 0    60   BiDi ~ 0
D1
Text GLabel 8500 3900 2    60   BiDi ~ 0
D2
Text GLabel 8500 3800 2    60   BiDi ~ 0
D3
Text GLabel 7600 3900 0    60   Input ~ 0
WE
Text GLabel 7600 4000 0    60   Input ~ 0
RAS
Text GLabel 7600 4200 0    60   Input ~ 0
A0
Text GLabel 7600 4300 0    60   Input ~ 0
A1
Text GLabel 7600 4400 0    60   Input ~ 0
A2
Text GLabel 7600 4500 0    60   Input ~ 0
A3
Text GLabel 8500 4200 2    60   Input ~ 0
A8
Text GLabel 8500 4300 2    60   Input ~ 0
A7
Text GLabel 8500 4400 2    60   Input ~ 0
A6
Text GLabel 8500 4500 2    60   Input ~ 0
A5
Text GLabel 8500 4600 2    60   Input ~ 0
A4
NoConn ~ 7600 4100
Text GLabel 8500 4000 2    60   Input ~ 0
CAS
$Comp
L GND #PWR09
U 1 1 5C924779
P 8500 3700
F 0 "#PWR09" H 8500 3450 50  0001 C CNN
F 1 "GND" H 8500 3550 50  0000 C CNN
F 2 "" H 8500 3700 50  0001 C CNN
F 3 "" H 8500 3700 50  0001 C CNN
	1    8500 3700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 5C924795
P 8500 4100
F 0 "#PWR010" H 8500 3850 50  0001 C CNN
F 1 "GND" H 8500 3950 50  0000 C CNN
F 2 "" H 8500 4100 50  0001 C CNN
F 3 "" H 8500 4100 50  0001 C CNN
	1    8500 4100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR011
U 1 1 5C9247B1
P 7600 4600
F 0 "#PWR011" H 7600 4450 50  0001 C CNN
F 1 "+5V" H 7600 4740 50  0000 C CNN
F 2 "" H 7600 4600 50  0001 C CNN
F 3 "" H 7600 4600 50  0001 C CNN
	1    7600 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5C924A23
P 7850 2950
F 0 "R1" V 7930 2950 50  0000 C CNN
F 1 "330" V 7850 2950 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 2950 50  0001 C CNN
F 3 "" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5C924A48
P 7850 3150
F 0 "R2" V 7930 3150 50  0000 C CNN
F 1 "330" V 7850 3150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7780 3150 50  0001 C CNN
F 3 "" H 7850 3150 50  0001 C CNN
	1    7850 3150
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5C924A99
P 8150 2950
F 0 "D1" H 8150 3050 50  0000 C CNN
F 1 "LED" H 8150 2850 50  0000 C CNN
F 2 "LEDs:LED_Rectangular_W5.0mm_H2.0mm" H 8150 2950 50  0001 C CNN
F 3 "" H 8150 2950 50  0001 C CNN
	1    8150 2950
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5C924AFC
P 8150 3150
F 0 "D2" H 8150 3250 50  0000 C CNN
F 1 "LED" H 8150 3050 50  0000 C CNN
F 2 "LEDs:LED_Rectangular_W5.0mm_H2.0mm" H 8150 3150 50  0001 C CNN
F 3 "" H 8150 3150 50  0001 C CNN
	1    8150 3150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5C924B5B
P 8500 2950
F 0 "#PWR012" H 8500 2700 50  0001 C CNN
F 1 "GND" H 8500 2800 50  0000 C CNN
F 2 "" H 8500 2950 50  0001 C CNN
F 3 "" H 8500 2950 50  0001 C CNN
	1    8500 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 2950 8300 2950
Wire Wire Line
	8400 2950 8400 3150
Wire Wire Line
	8400 3150 8300 3150
Connection ~ 8400 2950
Text GLabel 7600 2950 0    60   Input ~ 0
R-LED
Text GLabel 7600 3150 0    60   Input ~ 0
G-LED
Wire Wire Line
	7700 2950 7600 2950
Wire Wire Line
	7600 3150 7700 3150
NoConn ~ 4700 950 
NoConn ~ 4800 950 
NoConn ~ 4900 950 
NoConn ~ 5000 950 
NoConn ~ 5100 950 
NoConn ~ 5200 950 
NoConn ~ 4250 1200
NoConn ~ 4250 1300
NoConn ~ 4250 1400
NoConn ~ 5650 1400
NoConn ~ 5650 1200
$Comp
L GND #PWR013
U 1 1 5C970E6D
P 4250 1500
F 0 "#PWR013" H 4250 1250 50  0001 C CNN
F 1 "GND" H 4250 1350 50  0000 C CNN
F 2 "" H 4250 1500 50  0001 C CNN
F 3 "" H 4250 1500 50  0001 C CNN
	1    4250 1500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5C970E93
P 4750 2550
F 0 "#PWR014" H 4750 2300 50  0001 C CNN
F 1 "GND" H 4750 2400 50  0000 C CNN
F 2 "" H 4750 2550 50  0001 C CNN
F 3 "" H 4750 2550 50  0001 C CNN
	1    4750 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5C970EB9
P 5650 1300
F 0 "#PWR015" H 5650 1050 50  0001 C CNN
F 1 "GND" H 5650 1150 50  0000 C CNN
F 2 "" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0001 C CNN
	1    5650 1300
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR016
U 1 1 5C970EDF
P 5650 1500
F 0 "#PWR016" H 5650 1350 50  0001 C CNN
F 1 "+5V" H 5650 1640 50  0000 C CNN
F 2 "" H 5650 1500 50  0001 C CNN
F 3 "" H 5650 1500 50  0001 C CNN
	1    5650 1500
	0    1    1    0   
$EndComp
Text GLabel 4250 1600 0    60   BiDi ~ 0
D0
Text GLabel 4250 1700 0    60   BiDi ~ 0
D1
Text GLabel 4250 1800 0    60   BiDi ~ 0
D2
Text GLabel 4850 2550 3    60   BiDi ~ 0
D3
Text GLabel 4250 1900 0    60   Output ~ 0
CAS
Text GLabel 4250 2000 0    60   Output ~ 0
RAS
Text GLabel 4250 2100 0    60   Output ~ 0
WE
Text GLabel 4250 2200 0    60   Output ~ 0
A0
Text GLabel 4250 2300 0    60   Output ~ 0
A1
Text GLabel 5650 2300 2    60   Output ~ 0
A2
Text GLabel 5650 2200 2    60   Output ~ 0
A3
Text GLabel 5650 2100 2    60   Output ~ 0
A4
Text GLabel 5650 2000 2    60   Output ~ 0
A5
Text GLabel 5650 1900 2    60   Output ~ 0
A6
Text GLabel 5650 1800 2    60   Output ~ 0
A7
Text GLabel 5650 1700 2    60   Output ~ 0
A8
Text GLabel 5650 1600 2    60   Output ~ 0
G-LED
Text GLabel 4950 2550 3    60   Output ~ 0
R-LED
Text GLabel 5050 2550 3    60   Input ~ 0
SW
NoConn ~ 5150 2550
$Comp
L CONN_01X02 J1
U 1 1 5C9713E7
P 6600 1300
F 0 "J1" H 6600 1450 50  0000 C CNN
F 1 "CONN_01X02" V 6700 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6600 1300 50  0001 C CNN
F 3 "" H 6600 1300 50  0001 C CNN
	1    6600 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5C971434
P 6400 1250
F 0 "#PWR017" H 6400 1100 50  0001 C CNN
F 1 "+5V" H 6400 1390 50  0000 C CNN
F 2 "" H 6400 1250 50  0001 C CNN
F 3 "" H 6400 1250 50  0001 C CNN
	1    6400 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5C97145C
P 6400 1350
F 0 "#PWR018" H 6400 1100 50  0001 C CNN
F 1 "GND" H 6400 1200 50  0000 C CNN
F 2 "" H 6400 1350 50  0001 C CNN
F 3 "" H 6400 1350 50  0001 C CNN
	1    6400 1350
	1    0    0    -1  
$EndComp
$Comp
L USB_B J2
U 1 1 5C971484
P 7400 1600
F 0 "J2" H 7200 2050 50  0000 L CNN
F 1 "USB_B" H 7200 1950 50  0000 L CNN
F 2 "Connectors:USB_B" H 7550 1550 50  0001 C CNN
F 3 "" H 7550 1550 50  0001 C CNN
	1    7400 1600
	1    0    0    -1  
$EndComp
NoConn ~ 7700 1600
NoConn ~ 7700 1700
NoConn ~ 7300 2000
$Comp
L GND #PWR019
U 1 1 5C971553
P 7400 2000
F 0 "#PWR019" H 7400 1750 50  0001 C CNN
F 1 "GND" H 7400 1850 50  0000 C CNN
F 2 "" H 7400 2000 50  0001 C CNN
F 3 "" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5C97157D
P 7700 1400
F 0 "#PWR020" H 7700 1250 50  0001 C CNN
F 1 "+5V" H 7700 1540 50  0000 C CNN
F 2 "" H 7700 1400 50  0001 C CNN
F 3 "" H 7700 1400 50  0001 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
$Comp
L ProMini U4
U 1 1 5CA5F938
P 4950 1750
F 0 "U4" H 4950 1600 60  0000 C CNN
F 1 "ProMini" H 4950 1700 60  0000 C CNN
F 2 "Library:Arduino_Pro_Mini" H 4450 1600 60  0001 C CNN
F 3 "" H 4450 1600 60  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
Text GLabel 5200 1550 2    60   Output ~ 0
R-LED
Text GLabel 5200 1650 2    60   BiDi ~ 0
D3
$EndSCHEMATC
