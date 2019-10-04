EESchema Schematic File Version 4
LIBS:computer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
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
L misc_components:AS6C62256-55PCN U17
U 1 1 5D735106
P 4150 2800
F 0 "U17" H 4150 3825 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 4150 3734 50  0000 C CNN
F 2 "" H 4150 3250 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/0b7b/0900766b80b7b91b.pdf" H 4150 3250 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2000 3550 2000
Wire Wire Line
	4650 2000 4750 2000
$Comp
L power:+5V #PWR041
U 1 1 5D73B900
P 3550 2000
F 0 "#PWR041" H 3550 1850 50  0001 C CNN
F 1 "+5V" H 3450 2000 50  0000 C CNN
F 2 "" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5D73BA05
P 4750 2000
F 0 "#PWR043" H 4750 1750 50  0001 C CNN
F 1 "GND" H 4850 2000 50  0000 C CNN
F 2 "" H 4750 2000 50  0001 C CNN
F 3 "" H 4750 2000 50  0001 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
Text HLabel 3650 2300 0    50   Input ~ 0
A1
Text HLabel 3650 2400 0    50   Input ~ 0
A2
Text HLabel 3650 2500 0    50   Input ~ 0
A3
Text HLabel 3650 2600 0    50   Input ~ 0
A4
Text HLabel 3650 2700 0    50   Input ~ 0
A5
Text HLabel 3650 2800 0    50   Input ~ 0
A6
Text HLabel 3650 2900 0    50   Input ~ 0
A7
Text HLabel 3650 2200 0    50   Input ~ 0
A0
Text HLabel 3650 3000 0    50   Input ~ 0
A8
Text HLabel 3650 3100 0    50   Input ~ 0
A9
Text HLabel 3650 3200 0    50   Input ~ 0
A10
Text HLabel 3650 3300 0    50   Input ~ 0
A11
Text HLabel 3650 3400 0    50   Input ~ 0
A12
Text HLabel 3650 3500 0    50   Input ~ 0
A13
Text HLabel 3650 3600 0    50   Input ~ 0
A14
Text HLabel 5000 3100 2    50   Input ~ 0
A15
Text HLabel 4650 3200 2    50   Input ~ 0
~OUT
Text HLabel 4650 3300 2    50   Input ~ 0
~IN
$Comp
L misc_components:AS6C62256-55PCN U18
U 1 1 5D740C6B
P 4150 4900
F 0 "U18" H 4150 5925 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 4150 5834 50  0000 C CNN
F 2 "" H 4150 5350 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/0b7b/0900766b80b7b91b.pdf" H 4150 5350 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4100 3550 4100
Wire Wire Line
	4650 4100 4750 4100
$Comp
L power:+5V #PWR042
U 1 1 5D740C73
P 3550 4100
F 0 "#PWR042" H 3550 3950 50  0001 C CNN
F 1 "+5V" H 3450 4100 50  0000 C CNN
F 2 "" H 3550 4100 50  0001 C CNN
F 3 "" H 3550 4100 50  0001 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5D740C79
P 4750 4100
F 0 "#PWR044" H 4750 3850 50  0001 C CNN
F 1 "GND" H 4850 4100 50  0000 C CNN
F 2 "" H 4750 4100 50  0001 C CNN
F 3 "" H 4750 4100 50  0001 C CNN
	1    4750 4100
	1    0    0    -1  
$EndComp
Text HLabel 3650 4400 0    50   Input ~ 0
A1
Text HLabel 3650 4500 0    50   Input ~ 0
A2
Text HLabel 3650 4600 0    50   Input ~ 0
A3
Text HLabel 3650 4700 0    50   Input ~ 0
A4
Text HLabel 3650 4800 0    50   Input ~ 0
A5
Text HLabel 3650 4900 0    50   Input ~ 0
A6
Text HLabel 3650 5000 0    50   Input ~ 0
A7
Text HLabel 3650 4300 0    50   Input ~ 0
A0
Text HLabel 3650 5100 0    50   Input ~ 0
A8
Text HLabel 3650 5200 0    50   Input ~ 0
A9
Text HLabel 3650 5300 0    50   Input ~ 0
A10
Text HLabel 3650 5400 0    50   Input ~ 0
A11
Text HLabel 3650 5500 0    50   Input ~ 0
A12
Text HLabel 3650 5600 0    50   Input ~ 0
A13
Text HLabel 3650 5700 0    50   Input ~ 0
A14
Text HLabel 4650 5300 2    50   Input ~ 0
~OUT
Text HLabel 4650 5400 2    50   Input ~ 0
~IN
Wire Wire Line
	4650 5200 4950 5200
Wire Wire Line
	4650 3100 4950 3100
$Comp
L 74xx:74LS04 U16
U 1 1 5D743211
P 4950 3650
F 0 "U16" V 4950 3800 50  0000 L CNN
F 1 "74LS04" V 5050 3750 50  0000 L CNN
F 2 "" H 4950 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4950 3650 50  0001 C CNN
	1    4950 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3350 4950 3100
Connection ~ 4950 3100
Wire Wire Line
	4950 3100 5000 3100
Wire Wire Line
	4950 3950 4950 5200
$Comp
L 74xx:74LS04 U16
U 7 1 5D74535C
P 1150 1400
F 0 "U16" H 1380 1446 50  0000 L CNN
F 1 "74LS04" H 1380 1355 50  0000 L CNN
F 2 "" H 1150 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1150 1400 50  0001 C CNN
	7    1150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR039
U 1 1 5D745FBB
P 1150 900
F 0 "#PWR039" H 1150 750 50  0001 C CNN
F 1 "+5V" H 1165 1073 50  0000 C CNN
F 2 "" H 1150 900 50  0001 C CNN
F 3 "" H 1150 900 50  0001 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5D7461D4
P 1150 1900
F 0 "#PWR040" H 1150 1650 50  0001 C CNN
F 1 "GND" H 1155 1727 50  0000 C CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U19
U 1 1 5D74F493
P 6450 2700
F 0 "U19" H 6400 3450 50  0000 R CNN
F 1 "74LS245" H 6400 3350 50  0000 R CNN
F 2 "" H 6450 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6450 2700 50  0001 C CNN
	1    6450 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR045
U 1 1 5D75325B
P 6450 1900
F 0 "#PWR045" H 6450 1750 50  0001 C CNN
F 1 "+5V" H 6465 2073 50  0000 C CNN
F 2 "" H 6450 1900 50  0001 C CNN
F 3 "" H 6450 1900 50  0001 C CNN
	1    6450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5D7534D0
P 6450 3500
F 0 "#PWR046" H 6450 3250 50  0001 C CNN
F 1 "GND" H 6455 3327 50  0000 C CNN
F 2 "" H 6450 3500 50  0001 C CNN
F 3 "" H 6450 3500 50  0001 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 5900 2900
Wire Wire Line
	4650 2800 5850 2800
Wire Wire Line
	4650 2700 5800 2700
Wire Wire Line
	4650 2600 5750 2600
Wire Wire Line
	4650 2400 5650 2400
Wire Wire Line
	4650 2500 5700 2500
Wire Wire Line
	4650 2300 5600 2300
Wire Wire Line
	4650 2200 5550 2200
Wire Wire Line
	5900 2900 5900 5000
Wire Wire Line
	5900 5000 4650 5000
Connection ~ 5900 2900
Wire Wire Line
	5900 2900 5950 2900
Wire Wire Line
	4650 4900 5850 4900
Wire Wire Line
	5850 4900 5850 2800
Connection ~ 5850 2800
Wire Wire Line
	5850 2800 5950 2800
Wire Wire Line
	5800 2700 5800 4800
Wire Wire Line
	5800 4800 4650 4800
Connection ~ 5800 2700
Wire Wire Line
	5800 2700 5950 2700
Wire Wire Line
	4650 4700 5750 4700
Wire Wire Line
	5750 4700 5750 2600
Connection ~ 5750 2600
Wire Wire Line
	5750 2600 5950 2600
Wire Wire Line
	5700 2500 5700 4600
Wire Wire Line
	5700 4600 4650 4600
Connection ~ 5700 2500
Wire Wire Line
	5700 2500 5950 2500
Wire Wire Line
	4650 4500 5650 4500
Wire Wire Line
	5650 4500 5650 2400
Connection ~ 5650 2400
Wire Wire Line
	5650 2400 5950 2400
Wire Wire Line
	5600 2300 5600 4400
Wire Wire Line
	5600 4400 4650 4400
Connection ~ 5600 2300
Wire Wire Line
	5600 2300 5950 2300
Wire Wire Line
	4650 4300 5550 4300
Wire Wire Line
	5550 4300 5550 2200
Connection ~ 5550 2200
Wire Wire Line
	5550 2200 5950 2200
$Comp
L power:GND #PWR047
U 1 1 5D75D1FB
P 6950 3200
F 0 "#PWR047" H 6950 2950 50  0001 C CNN
F 1 "GND" H 6955 3027 50  0000 C CNN
F 2 "" H 6950 3200 50  0001 C CNN
F 3 "" H 6950 3200 50  0001 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
Text HLabel 6950 3100 2    50   Input ~ 0
~OUT
Text HLabel 6950 2200 2    50   BiDi ~ 0
D0
Text HLabel 6950 2300 2    50   BiDi ~ 0
D1
Text HLabel 6950 2400 2    50   BiDi ~ 0
D2
Text HLabel 6950 2500 2    50   BiDi ~ 0
D3
Text HLabel 6950 2600 2    50   BiDi ~ 0
D4
Text HLabel 6950 2700 2    50   BiDi ~ 0
D5
Text HLabel 6950 2800 2    50   BiDi ~ 0
D6
Text HLabel 6950 2900 2    50   BiDi ~ 0
D7
$EndSCHEMATC
