EESchema Schematic File Version 4
LIBS:computer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L 74xx:74LS273 U?
U 1 1 5D6D1383
P 5850 3200
F 0 "U?" H 5900 3950 50  0000 L CNN
F 1 "74LS273" H 5900 3850 50  0000 L CNN
F 2 "" H 5850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D6D26B9
P 5350 3700
F 0 "#PWR?" H 5350 3550 50  0001 C CNN
F 1 "+5V" H 5365 3873 50  0000 C CNN
F 2 "" H 5350 3700 50  0001 C CNN
F 3 "" H 5350 3700 50  0001 C CNN
	1    5350 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6D288F
P 5850 4000
F 0 "#PWR?" H 5850 3750 50  0001 C CNN
F 1 "GND" H 5855 3827 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D6D29B8
P 5850 2400
F 0 "#PWR?" H 5850 2250 50  0001 C CNN
F 1 "+5V" H 5865 2573 50  0000 C CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5850 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5D6D30C4
P 5050 3600
F 0 "U?" H 5050 3300 50  0000 C CNN
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
L 74xx:74LS245 U?
U 1 1 5D6DB046
P 6850 3200
F 0 "U?" H 6850 4181 50  0000 C CNN
F 1 "74LS245" H 6850 4090 50  0000 C CNN
F 2 "" H 6850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6850 3200 50  0001 C CNN
	1    6850 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
