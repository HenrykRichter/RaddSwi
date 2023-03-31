EESchema Schematic File Version 4
EELAYER 30 0
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
L Amiga-Chips:CIA8520_PLCC U1
U 1 1 63B83A74
P 3650 2400
F 0 "U1" H 3650 3815 50  0000 C CNN
F 1 "CIA8520_PLCC" H 3650 3724 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_SMD-Socket" H 3650 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2500 2650 2500
Wire Wire Line
	4350 2300 4575 2300
Wire Wire Line
	2950 1500 2675 1500
Wire Wire Line
	2950 1800 2675 1800
Text Label 2675 1800 0    50   ~ 0
CTS
Text Label 2675 1500 0    50   ~ 0
DTR
Text Label 2650 2500 0    50   ~ 0
GND
Text Label 4575 2300 2    50   ~ 0
VCC
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 63B8646E
P 1150 1950
F 0 "J1" H 1068 1525 50  0000 C CNN
F 1 "Conn_01x04" H 1068 1616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 1150 1950 50  0001 C CNN
F 3 "~" H 1150 1950 50  0001 C CNN
	1    1150 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1750 1775 1750
Wire Wire Line
	1350 1850 1775 1850
Wire Wire Line
	1350 1950 1775 1950
Wire Wire Line
	1350 2050 1775 2050
Text Label 1575 2050 0    50   ~ 0
VCC
Text Label 1575 1950 0    50   ~ 0
DTR
Text Label 1575 1850 0    50   ~ 0
CTS
Text Label 1575 1750 0    50   ~ 0
GND
Text Notes 2675 4050 0    50   ~ 0
The socket sits on top of the CIA, hence it’s transposed\nand pin assignments will have to change along with the\ntransposition.
$EndSCHEMATC
