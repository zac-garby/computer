EESchema Schematic File Version 4
LIBS:computer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
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
L power:GND #PWR028
U 1 1 5D6D288F
P 5850 4000
F 0 "#PWR028" H 5850 3750 50  0001 C CNN
F 1 "GND" H 5855 3827 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5D6D29B8
P 5850 2400
F 0 "#PWR027" H 5850 2250 50  0001 C CNN
F 1 "+5V" H 5865 2573 50  0000 C CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U11
U 1 1 5D6D30C4
P 5050 3600
F 0 "U11" H 5050 3300 50  0000 C CNN
F 1 "74LS08" H 5050 3400 50  0000 C CNN
F 2 "" H 5050 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5050 3600 50  0001 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
Text GLabel 4750 3700 0    50   Input ~ 0
~CLK
Text HLabel 4750 3500 0    50   Input ~ 0
IN
Text HLabel 5350 3400 0    50   Input ~ 0
D7
Text HLabel 5350 3300 0    50   Input ~ 0
D6
Text HLabel 5350 3200 0    50   Input ~ 0
D5
Text HLabel 5350 3100 0    50   Input ~ 0
D4
Text HLabel 5350 3000 0    50   Input ~ 0
D3
Text HLabel 5350 2900 0    50   Input ~ 0
D2
Text HLabel 5350 2800 0    50   Input ~ 0
D1
Text HLabel 5350 2700 0    50   Input ~ 0
D0
$Comp
L 74xx:74LS245 U13
U 1 1 5D6DB046
P 6850 3200
F 0 "U13" H 6900 3950 50  0000 L CNN
F 1 "74LS245" H 6900 3850 50  0000 L CNN
F 2 "" H 6850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D6E8517
P 6850 4000
F 0 "#PWR031" H 6850 3750 50  0001 C CNN
F 1 "GND" H 6855 3827 50  0000 C CNN
F 2 "" H 6850 4000 50  0001 C CNN
F 3 "" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5D6E89A1
P 6850 2400
F 0 "#PWR030" H 6850 2250 50  0001 C CNN
F 1 "+5V" H 6865 2573 50  0000 C CNN
F 2 "" H 6850 2400 50  0001 C CNN
F 3 "" H 6850 2400 50  0001 C CNN
	1    6850 2400
	1    0    0    -1  
$EndComp
Text HLabel 7350 2700 2    50   Output ~ 0
D0
Text HLabel 7350 2800 2    50   Output ~ 0
D1
Text HLabel 7350 2900 2    50   Output ~ 0
D2
Text HLabel 7350 3000 2    50   Output ~ 0
D3
Text HLabel 7350 3100 2    50   Output ~ 0
D4
Text HLabel 7350 3200 2    50   Output ~ 0
D5
Text HLabel 7350 3300 2    50   Output ~ 0
D6
Text HLabel 7350 3400 2    50   Output ~ 0
D7
$Comp
L power:+5V #PWR029
U 1 1 5D6E9D44
P 6350 3600
F 0 "#PWR029" H 6350 3450 50  0001 C CNN
F 1 "+5V" H 6250 3600 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Text HLabel 6350 3700 3    50   Input ~ 0
~OUT
$Comp
L 74xx:74LS08 U11
U 5 1 5D6EEE14
P 8750 3050
F 0 "U11" H 8980 3096 50  0000 L CNN
F 1 "74LS08" H 8980 3005 50  0000 L CNN
F 2 "" H 8750 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8750 3050 50  0001 C CNN
	5    8750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 5D6F1FA8
P 8750 2550
F 0 "#PWR032" H 8750 2400 50  0001 C CNN
F 1 "+5V" H 8765 2723 50  0000 C CNN
F 2 "" H 8750 2550 50  0001 C CNN
F 3 "" H 8750 2550 50  0001 C CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D6F22B1
P 8750 3550
F 0 "#PWR033" H 8750 3300 50  0001 C CNN
F 1 "GND" H 8755 3377 50  0000 C CNN
F 2 "" H 8750 3550 50  0001 C CNN
F 3 "" H 8750 3550 50  0001 C CNN
	1    8750 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U12
U 1 1 5D6D1383
P 5850 3200
F 0 "U12" H 5900 3950 50  0000 L CNN
F 1 "74LS273" H 5900 3850 50  0000 L CNN
F 2 "" H 5850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
Text GLabel 5350 3700 3    50   Input ~ 0
~RESET
$EndSCHEMATC
