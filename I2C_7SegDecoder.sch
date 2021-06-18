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
L MCU_Microchip_PIC16:PIC16F628-xxISS U1
U 1 1 608EBDAB
P 5750 3450
F 0 "U1" H 5750 4331 50  0000 C CNN
F 1 "PIC16F1827-SSOP" H 5750 4240 50  0000 C CNN
F 2 "Package_SO:SSOP-20_4.4x6.5mm_P0.65mm" H 5750 3450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40300c.pdf" H 5750 3450 50  0001 C CNN
	1    5750 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 608ECAE7
P 5100 4800
F 0 "C1" H 5215 4846 50  0000 L CNN
F 1 "C" H 5215 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5138 4650 50  0001 C CNN
F 3 "~" H 5100 4800 50  0001 C CNN
	1    5100 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 608ECFD6
P 6300 5100
F 0 "J1" H 6380 5092 50  0000 L CNN
F 1 "Conn_01x04" H 6380 5001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 6300 5100 50  0001 C CNN
F 3 "~" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-105 U3
U 1 1 608EFDEA
P 3550 5050
F 0 "U3" H 3550 5717 50  0000 C CNN
F 1 "GS2020CB-A" H 3550 5626 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 3550 4450 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 3050 5525 50  0001 L CNN
	1    3550 5050
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:KCSC02-105 U2
U 1 1 608F1C1E
P 3550 3650
F 0 "U2" H 3550 4317 50  0000 C CNN
F 1 "GS2020CB-A" H 3550 4226 50  0000 C CNN
F 2 "Display_7Segment:KCSC02-105" H 3550 3050 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-105(Ver.10A).pdf" H 3050 4125 50  0001 L CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
Text Label 3250 4750 2    50   ~ 0
7SEG_a
Text Label 3250 4850 2    50   ~ 0
7SEG_b
Text Label 3250 4950 2    50   ~ 0
7SEG_c
Text Label 3250 5050 2    50   ~ 0
7SEG_d
Text Label 3250 5150 2    50   ~ 0
7SEG_e
Text Label 3250 5250 2    50   ~ 0
7SEG_f
Text Label 3250 5350 2    50   ~ 0
7SEG_g
Text Label 3250 5450 2    50   ~ 0
7SEG_DP
Text Label 3250 3350 2    50   ~ 0
7SEG_a
Text Label 3250 3450 2    50   ~ 0
7SEG_b
Text Label 3250 3550 2    50   ~ 0
7SEG_c
Text Label 3250 3650 2    50   ~ 0
7SEG_d
Text Label 3250 3750 2    50   ~ 0
7SEG_e
Text Label 3250 3850 2    50   ~ 0
7SEG_f
Text Label 3250 3950 2    50   ~ 0
7SEG_g
Text Label 3250 4050 2    50   ~ 0
7SEG_DP
Text Label 4150 3950 0    50   ~ 0
7SEG_C1
Text Label 4150 5350 0    50   ~ 0
7SEG_C2
Text Label 6100 5000 2    50   ~ 0
GND
Text Label 6100 5100 2    50   ~ 0
VCC
Text Label 6100 5300 2    50   ~ 0
SCL
Text Label 6100 5200 2    50   ~ 0
SDA
$Comp
L power:GND #PWR0101
U 1 1 608FA81A
P 5750 4150
F 0 "#PWR0101" H 5750 3900 50  0001 C CNN
F 1 "GND" H 5755 3977 50  0000 C CNN
F 2 "" H 5750 4150 50  0001 C CNN
F 3 "" H 5750 4150 50  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 608FADE3
P 5100 5900
F 0 "#PWR0102" H 5100 5650 50  0001 C CNN
F 1 "GND" H 5105 5727 50  0000 C CNN
F 2 "" H 5100 5900 50  0001 C CNN
F 3 "" H 5100 5900 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 608FB32B
P 5750 2750
F 0 "#PWR0103" H 5750 2600 50  0001 C CNN
F 1 "VCC" H 5765 2923 50  0000 C CNN
F 2 "" H 5750 2750 50  0001 C CNN
F 3 "" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2750 5750 2750
Connection ~ 5750 2750
Wire Wire Line
	5650 4150 5750 4150
Connection ~ 5750 4150
Text Label 5750 4150 0    50   ~ 0
GND
Text Label 5750 2750 0    50   ~ 0
VCC
$Comp
L power:VCC #PWR0104
U 1 1 608FDBD3
P 5100 4650
F 0 "#PWR0104" H 5100 4500 50  0001 C CNN
F 1 "VCC" H 5115 4823 50  0000 C CNN
F 2 "" H 5100 4650 50  0001 C CNN
F 3 "" H 5100 4650 50  0001 C CNN
	1    5100 4650
	1    0    0    -1  
$EndComp
Text Label 6850 3350 0    50   ~ 0
7SEG_a
Text Label 6850 3250 0    50   ~ 0
7SEG_b
Text Label 4650 3250 2    50   ~ 0
7SEG_c
Text Label 6850 3750 0    50   ~ 0
7SEG_d
Text Label 6850 3650 0    50   ~ 0
7SEG_e
Text Label 6850 3050 0    50   ~ 0
7SEG_f
Text Label 6850 3150 0    50   ~ 0
7SEG_g
Text Label 4650 3350 2    50   ~ 0
7SEG_DP
Text Label 4650 3150 2    50   ~ 0
SDA
Text Label 4650 3450 2    50   ~ 0
SCL
Text Label 6850 3450 0    50   ~ 0
7SEG_C2
Text Label 4650 3750 2    50   ~ 0
7SEG_C1
$Comp
L Device:R R2
U 1 1 608FF8C4
P 5650 4800
F 0 "R2" H 5720 4846 50  0000 L CNN
F 1 "R" H 5720 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 5580 4800 50  0001 C CNN
F 3 "~" H 5650 4800 50  0001 C CNN
	1    5650 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 609002CF
P 5450 4800
F 0 "R1" H 5520 4846 50  0000 L CNN
F 1 "R" H 5520 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 5380 4800 50  0001 C CNN
F 3 "~" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4950 5650 5200
Wire Wire Line
	5650 5200 6100 5200
Wire Wire Line
	5450 4950 5450 5300
Wire Wire Line
	5450 5300 6100 5300
Wire Wire Line
	5450 4650 5650 4650
Wire Wire Line
	5850 4650 5850 5100
Wire Wire Line
	5850 5100 6100 5100
Connection ~ 5650 4650
Wire Wire Line
	5650 4650 5850 4650
Wire Wire Line
	5100 4650 5450 4650
Connection ~ 5100 4650
Connection ~ 5450 4650
Wire Wire Line
	6100 5000 5100 5000
Wire Wire Line
	5100 5000 5100 4950
Wire Wire Line
	5100 5000 5100 5200
Connection ~ 5100 5000
$Comp
L Device:Jumper_NO_Small A0
U 1 1 60A278DB
P 5000 5200
F 0 "A0" H 5000 5385 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5000 5294 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5000 5200 50  0001 C CNN
F 3 "~" H 5000 5200 50  0001 C CNN
	1    5000 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small A1
U 1 1 60A2A19F
P 5000 5400
F 0 "A1" H 5000 5585 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5000 5494 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5000 5400 50  0001 C CNN
F 3 "~" H 5000 5400 50  0001 C CNN
	1    5000 5400
	1    0    0    -1  
$EndComp
Connection ~ 5100 5200
Wire Wire Line
	5100 5200 5100 5400
Text Label 4900 5200 2    50   ~ 0
A0
Text Label 4900 5400 2    50   ~ 0
A1
Text Label 4650 3550 2    50   ~ 0
A3
Text Label 4650 3650 2    50   ~ 0
A2
$Comp
L Device:R R3
U 1 1 6096CD7A
P 4000 3950
F 0 "R3" V 3793 3950 50  0000 C CNN
F 1 "R" V 3884 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 3930 3950 50  0001 C CNN
F 3 "~" H 4000 3950 50  0001 C CNN
	1    4000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6096DF58
P 4000 5350
F 0 "R4" V 3793 5350 50  0000 C CNN
F 1 "R" V 3884 5350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 3930 5350 50  0001 C CNN
F 3 "~" H 4000 5350 50  0001 C CNN
	1    4000 5350
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small A3
U 1 1 60975B35
P 5000 5800
F 0 "A3" H 5000 5985 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5000 5894 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5000 5800 50  0001 C CNN
F 3 "~" H 5000 5800 50  0001 C CNN
	1    5000 5800
	1    0    0    -1  
$EndComp
Text Label 4900 5800 2    50   ~ 0
A3
Wire Wire Line
	5100 5800 5100 5900
Text Label 4650 3050 2    50   ~ 0
A0
$Comp
L Device:Jumper_NO_Small A2
U 1 1 609E0FAE
P 5000 5600
F 0 "A2" H 5000 5785 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5000 5694 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5000 5600 50  0001 C CNN
F 3 "~" H 5000 5600 50  0001 C CNN
	1    5000 5600
	1    0    0    -1  
$EndComp
Text Label 4900 5600 2    50   ~ 0
A2
Wire Wire Line
	5100 5400 5100 5600
Connection ~ 5100 5400
Text Label 6850 3550 0    50   ~ 0
A1
Wire Wire Line
	5100 5600 5100 5800
Connection ~ 5100 5600
Connection ~ 5100 5800
$EndSCHEMATC
