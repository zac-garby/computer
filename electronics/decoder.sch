EESchema Schematic File Version 4
LIBS:computer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
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
L misc_components:AT28C64B U41
U 1 1 5D9BB2A3
P 4850 1600
F 0 "U41" H 4850 1719 50  0000 C CNN
F 1 "AT28C64B" H 4850 1626 50  0000 C CNN
F 2 "" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1750 5350 1750
Wire Wire Line
	4400 1750 4350 1750
$Comp
L power:+5V #PWR099
U 1 1 5D9BEA0A
P 4350 1750
F 0 "#PWR099" H 4350 1600 50  0001 C CNN
F 1 "+5V" H 4365 1925 50  0000 C CNN
F 2 "" H 4350 1750 50  0001 C CNN
F 3 "" H 4350 1750 50  0001 C CNN
	1    4350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D9BEB06
P 5350 1750
F 0 "#PWR0105" H 5350 1500 50  0001 C CNN
F 1 "GND" H 5450 1750 50  0000 C CNN
F 2 "" H 5350 1750 50  0001 C CNN
F 3 "" H 5350 1750 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Text HLabel 4400 1900 0    50   Input ~ 0
STEP0
Text HLabel 4400 2000 0    50   Input ~ 0
STEP1
Text HLabel 4400 2100 0    50   Input ~ 0
STEP2
Text HLabel 4400 2200 0    50   Input ~ 0
STEP3
Text HLabel 4400 2300 0    50   Input ~ 0
C
Text HLabel 4400 2400 0    50   Input ~ 0
Z
Text HLabel 4400 2500 0    50   Input ~ 0
OP0
Text HLabel 4400 2600 0    50   Input ~ 0
OP1
Text HLabel 4400 2700 0    50   Input ~ 0
OP2
Text HLabel 4400 2800 0    50   Input ~ 0
OP3
Text HLabel 4400 2900 0    50   Input ~ 0
OP4
Text HLabel 4400 3000 0    50   Input ~ 0
OP5
Text HLabel 4400 3100 0    50   Input ~ 0
OP6
Wire Wire Line
	4400 3250 4350 3250
$Comp
L power:+5V #PWR0100
U 1 1 5D9C1CEE
P 4350 3250
F 0 "#PWR0100" H 4350 3100 50  0001 C CNN
F 1 "+5V" H 4250 3250 50  0000 C CNN
F 2 "" H 4350 3250 50  0001 C CNN
F 3 "" H 4350 3250 50  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3350 4350 3350
Wire Wire Line
	4350 3350 4350 3450
Wire Wire Line
	4350 3450 4400 3450
Wire Wire Line
	4350 3500 4350 3450
Connection ~ 4350 3450
$Comp
L power:GND #PWR0101
U 1 1 5D9C2EB2
P 4350 3500
F 0 "#PWR0101" H 4350 3250 50  0001 C CNN
F 1 "GND" H 4355 3325 50  0000 C CNN
F 2 "" H 4350 3500 50  0001 C CNN
F 3 "" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
$Comp
L misc_components:AT28C64B U43
U 1 1 5D9C616B
P 4850 3950
F 0 "U43" H 4850 4069 50  0000 C CNN
F 1 "AT28C64B" H 4850 3976 50  0000 C CNN
F 2 "" H 4850 3950 50  0001 C CNN
F 3 "" H 4850 3950 50  0001 C CNN
	1    4850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4100 5350 4100
Wire Wire Line
	4400 4100 4350 4100
$Comp
L power:+5V #PWR0102
U 1 1 5D9C6173
P 4350 4100
F 0 "#PWR0102" H 4350 3950 50  0001 C CNN
F 1 "+5V" H 4365 4275 50  0000 C CNN
F 2 "" H 4350 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0001 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D9C6179
P 5350 4100
F 0 "#PWR0106" H 5350 3850 50  0001 C CNN
F 1 "GND" H 5450 4100 50  0000 C CNN
F 2 "" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
Text HLabel 4400 4250 0    50   Input ~ 0
STEP0
Text HLabel 4400 4350 0    50   Input ~ 0
STEP1
Text HLabel 4400 4450 0    50   Input ~ 0
STEP2
Text HLabel 4400 4550 0    50   Input ~ 0
STEP3
Text HLabel 4400 4650 0    50   Input ~ 0
C
Text HLabel 4400 4750 0    50   Input ~ 0
Z
Text HLabel 4400 4850 0    50   Input ~ 0
OP0
Text HLabel 4400 4950 0    50   Input ~ 0
OP1
Text HLabel 4400 5050 0    50   Input ~ 0
OP2
Text HLabel 4400 5150 0    50   Input ~ 0
OP3
Text HLabel 4400 5250 0    50   Input ~ 0
OP4
Text HLabel 4400 5350 0    50   Input ~ 0
OP5
Text HLabel 4400 5450 0    50   Input ~ 0
OP6
Wire Wire Line
	4400 5600 4350 5600
$Comp
L power:+5V #PWR0103
U 1 1 5D9C618D
P 4350 5600
F 0 "#PWR0103" H 4350 5450 50  0001 C CNN
F 1 "+5V" H 4250 5600 50  0000 C CNN
F 2 "" H 4350 5600 50  0001 C CNN
F 3 "" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5700 4350 5700
Wire Wire Line
	4350 5700 4350 5800
Wire Wire Line
	4350 5800 4400 5800
Wire Wire Line
	4350 5850 4350 5800
Connection ~ 4350 5800
$Comp
L power:GND #PWR0104
U 1 1 5D9C6198
P 4350 5850
F 0 "#PWR0104" H 4350 5600 50  0001 C CNN
F 1 "GND" H 4355 5675 50  0000 C CNN
F 2 "" H 4350 5850 50  0001 C CNN
F 3 "" H 4350 5850 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L misc_components:AT28C64B U42
U 1 1 5D9CC904
P 6750 1600
F 0 "U42" H 6750 1719 50  0000 C CNN
F 1 "AT28C64B" H 6750 1626 50  0000 C CNN
F 2 "" H 6750 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1750 7250 1750
Wire Wire Line
	6300 1750 6250 1750
$Comp
L power:+5V #PWR0107
U 1 1 5D9CC90C
P 6250 1750
F 0 "#PWR0107" H 6250 1600 50  0001 C CNN
F 1 "+5V" H 6265 1925 50  0000 C CNN
F 2 "" H 6250 1750 50  0001 C CNN
F 3 "" H 6250 1750 50  0001 C CNN
	1    6250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5D9CC912
P 7250 1750
F 0 "#PWR0113" H 7250 1500 50  0001 C CNN
F 1 "GND" H 7350 1750 50  0000 C CNN
F 2 "" H 7250 1750 50  0001 C CNN
F 3 "" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Text HLabel 6300 1900 0    50   Input ~ 0
STEP0
Text HLabel 6300 2000 0    50   Input ~ 0
STEP1
Text HLabel 6300 2100 0    50   Input ~ 0
STEP2
Text HLabel 6300 2200 0    50   Input ~ 0
STEP3
Text HLabel 6300 2300 0    50   Input ~ 0
C
Text HLabel 6300 2400 0    50   Input ~ 0
Z
Text HLabel 6300 2500 0    50   Input ~ 0
OP0
Text HLabel 6300 2600 0    50   Input ~ 0
OP1
Text HLabel 6300 2700 0    50   Input ~ 0
OP2
Text HLabel 6300 2800 0    50   Input ~ 0
OP3
Text HLabel 6300 2900 0    50   Input ~ 0
OP4
Text HLabel 6300 3000 0    50   Input ~ 0
OP5
Text HLabel 6300 3100 0    50   Input ~ 0
OP6
Wire Wire Line
	6300 3250 6250 3250
$Comp
L power:+5V #PWR0108
U 1 1 5D9CC926
P 6250 3250
F 0 "#PWR0108" H 6250 3100 50  0001 C CNN
F 1 "+5V" H 6150 3250 50  0000 C CNN
F 2 "" H 6250 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3350 6250 3350
Wire Wire Line
	6250 3350 6250 3450
Wire Wire Line
	6250 3450 6300 3450
Wire Wire Line
	6250 3500 6250 3450
Connection ~ 6250 3450
$Comp
L power:GND #PWR0109
U 1 1 5D9CC931
P 6250 3500
F 0 "#PWR0109" H 6250 3250 50  0001 C CNN
F 1 "GND" H 6255 3325 50  0000 C CNN
F 2 "" H 6250 3500 50  0001 C CNN
F 3 "" H 6250 3500 50  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
$Comp
L misc_components:AT28C64B U44
U 1 1 5D9CEA7B
P 6750 3950
F 0 "U44" H 6750 4069 50  0000 C CNN
F 1 "AT28C64B" H 6750 3976 50  0000 C CNN
F 2 "" H 6750 3950 50  0001 C CNN
F 3 "" H 6750 3950 50  0001 C CNN
	1    6750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4100 7250 4100
Wire Wire Line
	6300 4100 6250 4100
$Comp
L power:+5V #PWR0110
U 1 1 5D9CEA83
P 6250 4100
F 0 "#PWR0110" H 6250 3950 50  0001 C CNN
F 1 "+5V" H 6265 4275 50  0000 C CNN
F 2 "" H 6250 4100 50  0001 C CNN
F 3 "" H 6250 4100 50  0001 C CNN
	1    6250 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5D9CEA89
P 7250 4100
F 0 "#PWR0114" H 7250 3850 50  0001 C CNN
F 1 "GND" H 7350 4100 50  0000 C CNN
F 2 "" H 7250 4100 50  0001 C CNN
F 3 "" H 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Text HLabel 6300 4250 0    50   Input ~ 0
STEP0
Text HLabel 6300 4350 0    50   Input ~ 0
STEP1
Text HLabel 6300 4450 0    50   Input ~ 0
STEP2
Text HLabel 6300 4550 0    50   Input ~ 0
STEP3
Text HLabel 6300 4650 0    50   Input ~ 0
C
Text HLabel 6300 4750 0    50   Input ~ 0
Z
Text HLabel 6300 4850 0    50   Input ~ 0
OP0
Text HLabel 6300 4950 0    50   Input ~ 0
OP1
Text HLabel 6300 5050 0    50   Input ~ 0
OP2
Text HLabel 6300 5150 0    50   Input ~ 0
OP3
Text HLabel 6300 5250 0    50   Input ~ 0
OP4
Text HLabel 6300 5350 0    50   Input ~ 0
OP5
Text HLabel 6300 5450 0    50   Input ~ 0
OP6
Wire Wire Line
	6300 5600 6250 5600
$Comp
L power:+5V #PWR0111
U 1 1 5D9CEA9D
P 6250 5600
F 0 "#PWR0111" H 6250 5450 50  0001 C CNN
F 1 "+5V" H 6150 5600 50  0000 C CNN
F 2 "" H 6250 5600 50  0001 C CNN
F 3 "" H 6250 5600 50  0001 C CNN
	1    6250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5700 6250 5700
Wire Wire Line
	6250 5700 6250 5800
Wire Wire Line
	6250 5800 6300 5800
Wire Wire Line
	6250 5850 6250 5800
Connection ~ 6250 5800
$Comp
L power:GND #PWR0112
U 1 1 5D9CEAA8
P 6250 5850
F 0 "#PWR0112" H 6250 5600 50  0001 C CNN
F 1 "GND" H 6255 5675 50  0000 C CNN
F 2 "" H 6250 5850 50  0001 C CNN
F 3 "" H 6250 5850 50  0001 C CNN
	1    6250 5850
	1    0    0    -1  
$EndComp
Text Notes 4650 1400 0    50   ~ 0
Bits 0-7
Text Notes 6550 1400 0    50   ~ 0
Bits 8-15
Text Notes 4650 3750 0    50   ~ 0
Bits 16-23
Text Notes 6550 3750 0    50   ~ 0
Bits 24-31
Text HLabel 5300 1900 2    50   Output ~ 0
C0
Text HLabel 5300 2000 2    50   Output ~ 0
C1
Text HLabel 5300 2100 2    50   Output ~ 0
C2
Text HLabel 5300 2200 2    50   Output ~ 0
C3
Text HLabel 5300 2300 2    50   Output ~ 0
C4
Text HLabel 5300 2400 2    50   Output ~ 0
C5
Text HLabel 5300 2500 2    50   Output ~ 0
C6
Text HLabel 5300 2600 2    50   Output ~ 0
C7
Text HLabel 7200 1900 2    50   Output ~ 0
C8
Text HLabel 7200 2000 2    50   Output ~ 0
C9
Text HLabel 7200 2100 2    50   Output ~ 0
C10
Text HLabel 7200 2200 2    50   Output ~ 0
C11
Text HLabel 7200 2300 2    50   Output ~ 0
C12
Text HLabel 7200 2400 2    50   Output ~ 0
C13
Text HLabel 7200 2500 2    50   Output ~ 0
C14
Text HLabel 7200 2600 2    50   Output ~ 0
C15
Text HLabel 5300 4250 2    50   Output ~ 0
C16
Text HLabel 5300 4350 2    50   Output ~ 0
C17
Text HLabel 5300 4450 2    50   Output ~ 0
C18
Text HLabel 5300 4550 2    50   Output ~ 0
C19
Text HLabel 5300 4650 2    50   Output ~ 0
C20
Text HLabel 5300 4750 2    50   Output ~ 0
C21
Text HLabel 5300 4850 2    50   Output ~ 0
C22
Text HLabel 5300 4950 2    50   Output ~ 0
C23
Text HLabel 7200 4250 2    50   Output ~ 0
C24
Text HLabel 7200 4350 2    50   Output ~ 0
C25
Text HLabel 7200 4450 2    50   Output ~ 0
C26
Text HLabel 7200 4550 2    50   Output ~ 0
C27
Text HLabel 7200 4650 2    50   Output ~ 0
C28
Text HLabel 7200 4750 2    50   Output ~ 0
C29
Text HLabel 7200 4850 2    50   Output ~ 0
C30
Text HLabel 7200 4950 2    50   Output ~ 0
C31
$EndSCHEMATC
