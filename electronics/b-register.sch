EESchema Schematic File Version 4
LIBS:computer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 14
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
U 1 1 5D6EE0BB
P 5200 3550
AR Path="/5D6E3549/5D6EE0BB" Ref="U?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0BB" Ref="U14"  Part="1" 
F 0 "U14" H 5250 4300 50  0000 L CNN
F 1 "74LS273" H 5250 4200 50  0000 L CNN
F 2 "" H 5200 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 5200 3550 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6EE0C7
P 5200 4350
AR Path="/5D6E3549/5D6EE0C7" Ref="#PWR?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0C7" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5200 4100 50  0001 C CNN
F 1 "GND" H 5205 4177 50  0000 C CNN
F 2 "" H 5200 4350 50  0001 C CNN
F 3 "" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D6EE0CD
P 5200 2750
AR Path="/5D6E3549/5D6EE0CD" Ref="#PWR?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0CD" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5200 2600 50  0001 C CNN
F 1 "+5V" H 5215 2923 50  0000 C CNN
F 2 "" H 5200 2750 50  0001 C CNN
F 3 "" H 5200 2750 50  0001 C CNN
	1    5200 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 5D6EE0D3
P 4400 3950
AR Path="/5D6E3549/5D6EE0D3" Ref="U?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0D3" Ref="U11"  Part="2" 
F 0 "U11" H 4400 3650 50  0000 C CNN
F 1 "74LS08" H 4400 3750 50  0000 C CNN
F 2 "" H 4400 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4400 3950 50  0001 C CNN
	2    4400 3950
	1    0    0    -1  
$EndComp
Text GLabel 4100 4050 0    50   Input ~ 0
~CLK
Text HLabel 4100 3850 0    50   Input ~ 0
IN
Text HLabel 4700 3750 0    50   Input ~ 0
D7
Text HLabel 4700 3650 0    50   Input ~ 0
D6
Text HLabel 4700 3550 0    50   Input ~ 0
D5
Text HLabel 4700 3450 0    50   Input ~ 0
D4
Text HLabel 4700 3350 0    50   Input ~ 0
D3
Text HLabel 4700 3250 0    50   Input ~ 0
D2
Text HLabel 4700 3150 0    50   Input ~ 0
D1
Text HLabel 4700 3050 0    50   Input ~ 0
D0
$Comp
L 74xx:74LS245 U?
U 1 1 5D6EE0E3
P 6200 3550
AR Path="/5D6E3549/5D6EE0E3" Ref="U?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0E3" Ref="U15"  Part="1" 
F 0 "U15" H 6250 4300 50  0000 L CNN
F 1 "74LS245" H 6250 4200 50  0000 L CNN
F 2 "" H 6200 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6200 3550 50  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6EE0E9
P 6200 4350
AR Path="/5D6E3549/5D6EE0E9" Ref="#PWR?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0E9" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6200 4100 50  0001 C CNN
F 1 "GND" H 6205 4177 50  0000 C CNN
F 2 "" H 6200 4350 50  0001 C CNN
F 3 "" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D6EE0EF
P 6200 2750
AR Path="/5D6E3549/5D6EE0EF" Ref="#PWR?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0EF" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6200 2600 50  0001 C CNN
F 1 "+5V" H 6215 2923 50  0000 C CNN
F 2 "" H 6200 2750 50  0001 C CNN
F 3 "" H 6200 2750 50  0001 C CNN
	1    6200 2750
	1    0    0    -1  
$EndComp
Text HLabel 6700 3050 2    50   Output ~ 0
D0
Text HLabel 6700 3150 2    50   Output ~ 0
D1
Text HLabel 6700 3250 2    50   Output ~ 0
D2
Text HLabel 6700 3350 2    50   Output ~ 0
D3
Text HLabel 6700 3450 2    50   Output ~ 0
D4
Text HLabel 6700 3550 2    50   Output ~ 0
D5
Text HLabel 6700 3650 2    50   Output ~ 0
D6
Text HLabel 6700 3750 2    50   Output ~ 0
D7
$Comp
L power:+5V #PWR?
U 1 1 5D6EE0FD
P 5700 3950
AR Path="/5D6E3549/5D6EE0FD" Ref="#PWR?"  Part="1" 
AR Path="/5D6EA7E3/5D6EE0FD" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 5700 3800 50  0001 C CNN
F 1 "+5V" H 5600 3950 50  0000 C CNN
F 2 "" H 5700 3950 50  0001 C CNN
F 3 "" H 5700 3950 50  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
Text HLabel 5700 4050 3    50   Input ~ 0
~OUT
Text GLabel 4700 4050 3    50   Input ~ 0
~RESET
$EndSCHEMATC
