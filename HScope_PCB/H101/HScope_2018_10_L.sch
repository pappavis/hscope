EESchema Schematic File Version 4
LIBS:HScope_2018_10_L-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HSCope V1"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U2
U 1 1 5BCFEA84
P 10100 2450
F 0 "U2" H 10050 2750 50  0000 C CNN
F 1 "STM32F103C8Tx" H 10050 3150 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 9500 1050 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 10100 2450 50  0001 C CNN
	1    10100 2450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LF33_TO252 U1
U 1 1 5BCFEF2F
P 1550 900
F 0 "U1" H 1550 1142 50  0000 C CNN
F 1 "MC33275ST-3.3T3G" H 1550 1051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 1550 1125 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c4/0e/7e/2a/be/bc/4c/bd/CD00000546.pdf/files/CD00000546.pdf/jcr:content/translations/en.CD00000546.pdf" H 1550 850 50  0001 C CNN
	1    1550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 5BCFF001
P 1550 1400
F 0 "#PWR0101" H 1550 1150 50  0001 C CNN
F 1 "GNDREF" H 1750 1350 50  0000 C CNN
F 2 "" H 1550 1400 50  0001 C CNN
F 3 "" H 1550 1400 50  0001 C CNN
	1    1550 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5BCFF174
P 950 1000
F 0 "C1" H 1041 1046 50  0000 L CNN
F 1 "0.33uF" H 1041 955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 950 1000 50  0001 C CNN
F 3 "~" H 950 1000 50  0001 C CNN
	1    950  1000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5BCFF21D
P 2050 1000
F 0 "C3" H 2141 1046 50  0000 L CNN
F 1 "0.33uF" H 2141 955 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 2050 1000 50  0001 C CNN
F 3 "~" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 900  2050 900 
Wire Wire Line
	2050 1100 2050 1400
Wire Wire Line
	2050 1400 1550 1400
Connection ~ 1550 1400
Wire Wire Line
	1550 1200 1550 1400
Wire Wire Line
	1250 900  950  900 
Text Notes 9350 6250 0    50   ~ 0
Конденсатор_вход - TECAP 0.33/35V A 10\n
Text Notes 9350 6150 0    50   ~ 0
Стабилизатор - MC33275ST-3.3T3G
Text Notes 9350 6350 0    50   ~ 0
Камень - STM32F103C8T6
Text Notes 9350 6050 0    50   ~ 0
USB - ESB22A112101Z
Wire Wire Line
	950  1100 950  1400
Wire Wire Line
	950  1400 1550 1400
Text GLabel 850  900  0    50   Input ~ 0
V_IN
Text GLabel 2300 900  2    50   Input ~ 0
VCC
Wire Wire Line
	2050 900  2300 900 
Connection ~ 2050 900 
Wire Wire Line
	950  900  850  900 
Connection ~ 950  900 
Wire Notes Line
	550  550  550  1650
Wire Notes Line
	550  1650 2550 1650
Wire Notes Line
	2550 1650 2550 550 
Wire Notes Line
	2550 550  550  550 
Text Notes 550  1650 0    50   ~ 0
Контур входной стабилизации
$Comp
L Switch:SW_Push SW1
U 1 1 5BCFFBB1
P 1500 2050
F 0 "SW1" H 1500 2335 50  0000 C CNN
F 1 "B3U1000P" H 1500 2244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BCFFD08
P 1500 2200
F 0 "C2" V 1300 2200 50  0000 C CNN
F 1 "1000 nF" V 1400 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1500 2200 50  0001 C CNN
F 3 "~" H 1500 2200 50  0001 C CNN
	1    1500 2200
	0    -1   -1   0   
$EndComp
Text Notes 9350 5950 0    50   ~ 0
Кнопка - B3U1000P
Wire Wire Line
	1700 2050 1700 2200
Wire Wire Line
	1700 2200 1600 2200
Wire Wire Line
	1400 2200 1300 2200
Wire Wire Line
	1300 2200 1300 2050
$Comp
L Device:R R1
U 1 1 5BD0026E
P 1100 2050
F 0 "R1" V 893 2050 50  0000 C CNN
F 1 "10k" V 984 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1030 2050 50  0001 C CNN
F 3 "~" H 1100 2050 50  0001 C CNN
	1    1100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 2050 1250 2050
Connection ~ 1300 2050
$Comp
L power:GNDREF #PWR0102
U 1 1 5BD00463
P 1900 2050
F 0 "#PWR0102" H 1900 1800 50  0001 C CNN
F 1 "GNDREF" H 1905 1877 50  0000 C CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "" H 1900 2050 50  0001 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2050 1900 2050
Connection ~ 1700 2050
Text GLabel 900  2050 0    50   Input ~ 0
VCC
Text GLabel 900  2200 0    50   Input ~ 0
RESET
Wire Wire Line
	900  2200 1300 2200
Connection ~ 1300 2200
Wire Wire Line
	900  2050 950  2050
Wire Notes Line
	550  1700 2100 1700
Wire Notes Line
	2100 1700 2100 2450
Wire Notes Line
	2100 2450 550  2450
Wire Notes Line
	550  2450 550  1700
Text Notes 550  2450 0    50   ~ 0
Кнопка перезагрузки
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5BD0129D
P 1000 2850
F 0 "J3" H 900 2850 50  0000 C CNN
F 1 "Джампер" H 800 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 2850 50  0001 C CNN
F 3 "~" H 1000 2850 50  0001 C CNN
	1    1000 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5BD013B4
P 1650 2950
F 0 "J5" H 1622 2830 50  0000 R CNN
F 1 "Джампер" H 1600 2950 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1650 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 2850 1350 2850
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5BD01931
P 1000 2700
F 0 "J2" H 900 2700 50  0000 C CNN
F 1 "Джампер" H 800 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 2700 50  0001 C CNN
F 3 "~" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5BD01937
P 1650 2600
F 0 "J4" H 1622 2480 50  0000 R CNN
F 1 "Джампер" H 1600 2600 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1650 2600 50  0001 C CNN
F 3 "~" H 1650 2600 50  0001 C CNN
	1    1650 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 2700 1300 2700
Text GLabel 1200 3050 0    50   Input ~ 0
VCC
Text GLabel 1200 3150 0    50   Input ~ 0
BOOT0
Text GLabel 1200 3250 0    50   Input ~ 0
BOOT1
Wire Wire Line
	1200 2600 1250 2600
Wire Wire Line
	1250 2600 1250 2950
Wire Wire Line
	1250 2950 1200 2950
Wire Wire Line
	1300 2700 1300 3150
Wire Wire Line
	1300 3150 1200 3150
Connection ~ 1300 2700
Wire Wire Line
	1250 2950 1250 3050
Wire Wire Line
	1250 3050 1200 3050
Connection ~ 1250 2950
Wire Wire Line
	1350 3250 1200 3250
Wire Wire Line
	1350 2850 1350 3250
Wire Wire Line
	1300 2700 1450 2700
Wire Wire Line
	1450 2850 1350 2850
Connection ~ 1350 2850
Wire Wire Line
	1450 2600 1400 2600
Wire Wire Line
	1400 2600 1400 2950
Wire Wire Line
	1400 2950 1450 2950
$Comp
L power:GNDREF #PWR0103
U 1 1 5BD04657
P 1550 3050
F 0 "#PWR0103" H 1550 2800 50  0001 C CNN
F 1 "GNDREF" H 1555 2877 50  0000 C CNN
F 2 "" H 1550 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2950 1400 3050
Wire Wire Line
	1400 3050 1550 3050
Connection ~ 1400 2950
Wire Notes Line
	550  2500 2100 2500
Wire Notes Line
	2100 2500 2100 3400
Wire Notes Line
	2100 3400 550  3400
Wire Notes Line
	550  3400 550  2500
Text Notes 550  3400 0    50   ~ 0
SMD джамперы состояния
$Comp
L power:GNDREF #PWR0104
U 1 1 5BD05BE8
P 850 4450
F 0 "#PWR0104" H 850 4200 50  0001 C CNN
F 1 "GNDREF" H 855 4277 50  0000 C CNN
F 2 "" H 850 4450 50  0001 C CNN
F 3 "" H 850 4450 50  0001 C CNN
	1    850  4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  4400 850  4450
Connection ~ 850  4400
Wire Wire Line
	850  4400 1150 4400
Wire Wire Line
	1150 4400 1150 4200
$Comp
L Device:R R2
U 1 1 5BD07086
P 1400 4000
F 0 "R2" V 1193 4000 50  0000 C CNN
F 1 "20R" V 1284 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 4000 50  0001 C CNN
F 3 "~" H 1400 4000 50  0001 C CNN
	1    1400 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5BD07192
P 1650 4100
F 0 "R4" V 1450 4100 50  0000 C CNN
F 1 "20R" V 1550 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1580 4100 50  0001 C CNN
F 3 "~" H 1650 4100 50  0001 C CNN
	1    1650 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5BD073E2
P 1600 3800
F 0 "R3" H 1530 3754 50  0000 R CNN
F 1 "4,7k" H 1530 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 3800 50  0001 C CNN
F 3 "~" H 1600 3800 50  0001 C CNN
	1    1600 3800
	-1   0    0    1   
$EndComp
Text GLabel 1850 4100 2    50   Input ~ 0
D-
Text GLabel 1850 4000 2    50   Input ~ 0
D+
Wire Wire Line
	1150 4100 1500 4100
Wire Wire Line
	1850 4100 1800 4100
Wire Wire Line
	1550 4000 1600 4000
Wire Wire Line
	1600 3950 1600 4000
Connection ~ 1600 4000
Wire Wire Line
	1600 4000 1850 4000
Wire Wire Line
	1850 3650 1600 3650
Wire Wire Line
	1600 3650 1150 3650
Wire Wire Line
	1150 3650 1150 3800
Connection ~ 1600 3650
Wire Wire Line
	1150 4000 1250 4000
Text GLabel 10800 3350 2    50   Input ~ 0
D-
Text GLabel 10800 3450 2    50   Input ~ 0
D+
Wire Wire Line
	10700 3350 10800 3350
Wire Wire Line
	10700 3450 10800 3450
Wire Notes Line
	550  3450 2100 3450
Wire Notes Line
	2100 3450 2100 4700
Wire Notes Line
	2100 4700 550  4700
Wire Notes Line
	550  4700 550  3450
Text Notes 1300 4700 0    50   ~ 0
Внешний USB-порт\nобщего назначения
Text GLabel 9300 3050 0    50   Input ~ 0
BOOT0
Text GLabel 9300 2450 0    50   Input ~ 0
BOOT1
Wire Wire Line
	9300 2450 9400 2450
Wire Wire Line
	9300 3050 9400 3050
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5BD0FE0B
P 3000 800
F 0 "J6" H 2900 800 50  0000 C CNN
F 1 "RX\\TX" H 2800 700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 800 50  0001 C CNN
F 3 "~" H 3000 800 50  0001 C CNN
	1    3000 800 
	1    0    0    1   
$EndComp
Text GLabel 3300 700  2    50   Input ~ 0
RX
Text GLabel 3300 800  2    50   Input ~ 0
TX
Wire Wire Line
	3200 800  3300 800 
Wire Wire Line
	3200 700  3300 700 
Wire Notes Line
	3500 600  3500 1000
Text Notes 2600 1000 0    50   ~ 0
Прошивочный ttl-порт
Wire Notes Line
	2600 1000 2600 600 
Wire Notes Line
	2600 600  3500 600 
Wire Notes Line
	2600 1000 3500 1000
Text GLabel 10800 3250 2    50   Input ~ 0
RX
Text GLabel 10800 3150 2    50   Input ~ 0
TX
Wire Wire Line
	10700 3150 10800 3150
Wire Wire Line
	10700 3250 10800 3250
$Comp
L Device:LED_ALT D1
U 1 1 5BD17251
P 3100 1350
F 0 "D1" H 3091 1566 50  0000 C CNN
F 1 "0805" H 3091 1475 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3100 1350 50  0001 C CNN
F 3 "~" H 3100 1350 50  0001 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BD17364
P 3500 1350
F 0 "R6" V 3293 1350 50  0000 C CNN
F 1 "1k" V 3384 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3430 1350 50  0001 C CNN
F 3 "~" H 3500 1350 50  0001 C CNN
	1    3500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 1350 3350 1350
Text GLabel 3700 1350 2    50   Input ~ 0
VCC
$Comp
L power:GNDREF #PWR0105
U 1 1 5BD186D5
P 2750 1350
F 0 "#PWR0105" H 2750 1100 50  0001 C CNN
F 1 "GNDREF" H 2755 1177 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1350 2950 1350
Wire Wire Line
	3650 1350 3700 1350
Wire Notes Line
	2600 1600 2600 1050
Wire Notes Line
	2600 1050 3900 1050
Wire Notes Line
	3900 1050 3900 1600
Wire Notes Line
	3900 1600 2600 1600
Text Notes 3150 1600 0    50   ~ 0
Индикатор работы
$Comp
L Device:Crystal Y2
U 1 1 5BD1FD09
P 3050 2600
F 0 "Y2" H 3050 2868 50  0000 C CNN
F 1 "8MHz" H 3050 2800 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 3050 2600 50  0001 C CNN
F 3 "~" H 3050 2600 50  0001 C CNN
	1    3050 2600
	1    0    0    -1  
$EndComp
Text Notes 9350 5850 0    50   ~ 0
Кварц_1 - KX-327LT 32.7680 kHz
Text Notes 9350 5750 0    50   ~ 0
Кварц_2 - KX-3HE 8.0 MHz
$Comp
L Device:R R5
U 1 1 5BD2068E
P 3050 2800
F 0 "R5" V 3250 2800 50  0000 C CNN
F 1 "1M" V 3150 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 2800 50  0001 C CNN
F 3 "~" H 3050 2800 50  0001 C CNN
	1    3050 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5BD20E30
P 2700 2600
F 0 "C9" V 2500 2600 50  0000 C CNN
F 1 "20pF" V 2600 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 2600 50  0001 C CNN
F 3 "~" H 2700 2600 50  0001 C CNN
	1    2700 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5BD20EA6
P 3400 2600
F 0 "C11" V 3200 2600 50  0000 C CNN
F 1 "20pF" V 3300 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3400 2600 50  0001 C CNN
F 3 "~" H 3400 2600 50  0001 C CNN
	1    3400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5BD20F02
P 3400 2050
F 0 "C10" V 3200 2050 50  0000 C CNN
F 1 "20pF" V 3300 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3400 2050 50  0001 C CNN
F 3 "~" H 3400 2050 50  0001 C CNN
	1    3400 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5BD20F58
P 2700 2050
F 0 "C8" V 2500 2050 50  0000 C CNN
F 1 "20pF" V 2600 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 2050 50  0001 C CNN
F 3 "~" H 2700 2050 50  0001 C CNN
	1    2700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 2800 2900 2750
Wire Wire Line
	3200 2800 3200 2750
Wire Wire Line
	3200 2600 3300 2600
Connection ~ 3200 2600
Wire Wire Line
	2800 2600 2900 2600
Connection ~ 2900 2600
Wire Wire Line
	2800 2050 2850 2050
Wire Wire Line
	3200 2050 3250 2050
Wire Wire Line
	3500 2050 3500 2200
Wire Wire Line
	3500 2200 2600 2200
Wire Wire Line
	2600 2200 2600 2050
$Comp
L power:GNDREF #PWR0106
U 1 1 5BD2A707
P 2600 2250
F 0 "#PWR0106" H 2600 2000 50  0001 C CNN
F 1 "GNDREF" H 2605 2077 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2250 2600 2200
Connection ~ 2600 2200
Text GLabel 2550 1950 0    50   Input ~ 0
OC_1_IN
Text GLabel 2550 2750 0    50   Input ~ 0
OC_2_IN
Text GLabel 3550 1950 2    50   Input ~ 0
OC_1_OUT
Text GLabel 3550 2750 2    50   Input ~ 0
OC_2_OUT
Wire Wire Line
	2600 2450 3500 2450
Wire Wire Line
	2600 2450 2600 2600
Wire Wire Line
	3500 2450 3500 2600
Wire Wire Line
	2550 2750 2900 2750
Connection ~ 2900 2750
Wire Wire Line
	2900 2750 2900 2600
Wire Wire Line
	3200 2750 3550 2750
Connection ~ 3200 2750
Wire Wire Line
	3200 2750 3200 2600
Wire Wire Line
	3550 1950 3250 1950
Wire Wire Line
	3250 1950 3250 2050
Connection ~ 3250 2050
Wire Wire Line
	3250 2050 3300 2050
Wire Wire Line
	2550 1950 2850 1950
Wire Wire Line
	2850 1950 2850 2050
Connection ~ 2850 2050
Wire Wire Line
	2850 2050 2900 2050
Text GLabel 9300 1950 0    50   Input ~ 0
OC_1_IN
Text GLabel 9300 2050 0    50   Input ~ 0
OC_1_OUT
Text GLabel 9300 1650 0    50   Input ~ 0
OC_2_OUT
Text GLabel 9300 1550 0    50   Input ~ 0
OC_2_IN
Wire Wire Line
	9300 1550 9400 1550
Wire Wire Line
	9300 1650 9400 1650
Wire Wire Line
	9300 1950 9400 1950
Wire Wire Line
	9300 2050 9400 2050
Wire Notes Line
	2150 1700 2150 3050
Wire Notes Line
	2150 3050 4050 3050
Wire Notes Line
	4050 3050 4050 1700
Wire Notes Line
	4050 1700 2150 1700
Text Notes 3200 3050 0    50   ~ 0
Тактовые генераторы
Text GLabel 10100 900  1    50   Input ~ 0
VCC
Wire Wire Line
	10100 950  10100 900 
$Comp
L power:GNDREF #PWR0107
U 1 1 5BD53BCE
P 10050 4050
F 0 "#PWR0107" H 10050 3800 50  0001 C CNN
F 1 "GNDREF" H 10055 3877 50  0000 C CNN
F 2 "" H 10050 4050 50  0001 C CNN
F 3 "" H 10050 4050 50  0001 C CNN
	1    10050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3950 10000 3950
Connection ~ 10000 3950
Wire Wire Line
	10100 3950 10050 3950
Wire Wire Line
	10100 3950 10200 3950
Connection ~ 10100 3950
Wire Wire Line
	10050 4050 10050 3950
Connection ~ 10050 3950
Wire Wire Line
	10050 3950 10000 3950
Wire Wire Line
	10300 950  10200 950 
Connection ~ 10100 950 
Wire Wire Line
	10100 950  10000 950 
Connection ~ 10200 950 
Wire Wire Line
	10200 950  10100 950 
Text GLabel 9900 900  1    50   Input ~ 0
V_BAT
Wire Wire Line
	9900 950  9900 900 
$Comp
L Device:R R7
U 1 1 5BD64E9F
P 4000 850
F 0 "R7" V 3793 850 50  0000 C CNN
F 1 "0R" V 3884 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 850 50  0001 C CNN
F 3 "~" H 4000 850 50  0001 C CNN
	1    4000 850 
	0    1    1    0   
$EndComp
Text GLabel 4200 850  2    50   Input ~ 0
V_BAT
Wire Wire Line
	4200 850  4150 850 
Text GLabel 3800 850  0    50   Input ~ 0
NAN
Wire Wire Line
	3800 850  3850 850 
Wire Notes Line
	3550 600  4500 600 
Wire Notes Line
	4500 600  4500 1000
Wire Notes Line
	4500 1000 3550 1000
Wire Notes Line
	3550 1000 3550 600 
Text Notes 3850 1000 0    50   ~ 0
Порт батарейки
$Comp
L Device:C_Small C4
U 1 1 5BD7843F
P 2600 3200
F 0 "C4" V 2450 3450 50  0000 C CNN
F 1 "100nF" V 2550 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 3200 50  0001 C CNN
F 3 "~" H 2600 3200 50  0001 C CNN
	1    2600 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BD78586
P 2600 3550
F 0 "C5" V 2500 3800 50  0000 C CNN
F 1 "100nF" V 2600 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BD785DC
P 2600 3900
F 0 "C6" V 2450 4150 50  0000 C CNN
F 1 "100nF" V 2550 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 3900 50  0001 C CNN
F 3 "~" H 2600 3900 50  0001 C CNN
	1    2600 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5BD78674
P 2600 4250
F 0 "C7" V 2500 4500 50  0000 C CNN
F 1 "100nF" V 2600 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 4250 50  0001 C CNN
F 3 "~" H 2600 4250 50  0001 C CNN
	1    2600 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 4250 2500 3900
Connection ~ 2500 3550
Wire Wire Line
	2500 3550 2500 3200
Connection ~ 2500 3900
Wire Wire Line
	2500 3900 2500 3750
Wire Wire Line
	2700 3200 2700 3550
Connection ~ 2700 3550
Wire Wire Line
	2700 3550 2700 3900
Connection ~ 2700 3900
Wire Wire Line
	2700 3900 2700 4250
Text GLabel 2400 3750 0    50   Input ~ 0
VCC
$Comp
L power:GNDREF #PWR0108
U 1 1 5BD7DFA8
P 2700 4300
F 0 "#PWR0108" H 2700 4050 50  0001 C CNN
F 1 "GNDREF" H 2705 4127 50  0000 C CNN
F 2 "" H 2700 4300 50  0001 C CNN
F 3 "" H 2700 4300 50  0001 C CNN
	1    2700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3750 2500 3750
Connection ~ 2500 3750
Wire Wire Line
	2500 3750 2500 3550
Wire Wire Line
	2700 4300 2700 4250
Connection ~ 2700 4250
Wire Notes Line
	2900 4550 2900 3100
Wire Notes Line
	2900 3100 2150 3100
Wire Notes Line
	2150 3100 2150 4550
Wire Notes Line
	2150 4550 2900 4550
Text Notes 9350 5650 0    50   ~ 0
Пасивка  - SMD 0805
Wire Notes Line
	9300 5500 11100 5500
Wire Notes Line
	11100 5500 11100 6400
Wire Notes Line
	11100 6400 9300 6400
Wire Notes Line
	9300 6400 9300 5500
Wire Notes Line
	11100 4350 11100 600 
Wire Notes Line
	11100 600  8800 600 
Wire Notes Line
	8800 600  8800 4350
Wire Notes Line
	8800 4350 11100 4350
Text Notes 8850 4350 0    50   ~ 0
Центральный камень
$Comp
L Device:Crystal_GND23 Y1
U 1 1 5BD0342A
P 3050 2050
F 0 "Y1" H 3150 2200 50  0000 L CNN
F 1 "32.678kHz" H 2950 2300 50  0000 L CNN
F 2 "lib:Crystal_SMD_SeikoEpson_MC146-4Pin_6.7x1.5mm" H 3050 2050 50  0001 C CNN
F 3 "~" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5BD05AE4
P 850 4000
F 0 "J1" H 905 4467 50  0000 C CNN
F 1 "USB_B_Micro" H 905 4376 50  0000 C CNN
F 2 "lib:mikroUSB_SMD" H 1000 3950 50  0001 C CNN
F 3 "~" H 1000 3950 50  0001 C CNN
	1    850  4000
	1    0    0    -1  
$EndComp
Text GLabel 1850 3650 2    50   Input ~ 0
V_IN
Text GLabel 9300 1150 0    50   Input ~ 0
RESET
Wire Wire Line
	9400 1150 9300 1150
$Comp
L pspice:DIODE D2
U 1 1 5BD048DC
P 900 5750
F 0 "D2" H 900 5485 50  0000 C CNN
F 1 "DIODE" H 900 5576 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 900 5750 50  0001 C CNN
F 3 "" H 900 5750 50  0001 C CNN
	1    900  5750
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D4
U 1 1 5BD04A8B
P 1300 5750
F 0 "D4" H 1300 5485 50  0000 C CNN
F 1 "DIODE" H 1300 5576 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 1300 5750 50  0001 C CNN
F 3 "" H 1300 5750 50  0001 C CNN
	1    1300 5750
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D3
U 1 1 5BD04B5B
P 1100 5450
F 0 "D3" V 1146 5322 50  0000 R CNN
F 1 "DIODE" V 1055 5322 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 1100 5450 50  0001 C CNN
F 3 "" H 1100 5450 50  0001 C CNN
	1    1100 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5BD0B404
P 1300 5200
F 0 "R9" V 1100 5200 50  0000 C CNN
F 1 "2k" V 1200 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1230 5200 50  0001 C CNN
F 3 "~" H 1300 5200 50  0001 C CNN
	1    1300 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5BD0B4C0
P 900 5000
F 0 "R8" V 700 5000 50  0000 C CNN
F 1 "10k" V 800 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 830 5000 50  0001 C CNN
F 3 "~" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5550 900  5450
Connection ~ 900  5450
Wire Wire Line
	1300 5550 1300 5450
Connection ~ 1300 5450
Wire Wire Line
	1300 5450 1300 5350
Wire Wire Line
	1300 5950 900  5950
Wire Wire Line
	900  5450 900  5200
Wire Wire Line
	1300 5050 1050 5050
Wire Wire Line
	1050 5050 1050 5200
Wire Wire Line
	1050 5200 900  5200
Connection ~ 900  5200
Wire Wire Line
	900  5200 900  5150
Text GLabel 1200 4850 2    50   Input ~ 0
IN_U
Wire Wire Line
	1200 4850 900  4850
Wire Notes Line
	1550 4750 550  4750
Text Notes 600  6050 0    50   ~ 0
Логика осцилографа
Wire Notes Line
	1550 6100 550  6100
Wire Notes Line
	1550 4750 1550 6100
Wire Notes Line
	550  4750 550  6100
$Comp
L power:GNDREF #PWR0109
U 1 1 5BD30339
P 1400 5450
F 0 "#PWR0109" H 1400 5200 50  0001 C CNN
F 1 "GNDREF" V 1500 5350 50  0000 C CNN
F 2 "" H 1400 5450 50  0001 C CNN
F 3 "" H 1400 5450 50  0001 C CNN
	1    1400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5450 1400 5450
Text GLabel 800  5450 0    50   Input ~ 0
A0
Wire Wire Line
	900  5450 800  5450
Text GLabel 10800 2250 2    50   Input ~ 0
A0
Wire Wire Line
	10700 2250 10800 2250
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5BD3D5EE
P 1900 5100
F 0 "J7" H 1927 5076 50  0000 L CNN
F 1 "BNS" H 1927 4985 50  0000 L CNN
F 2 "lib:SMA_Molex_73251-1153_EdgeMount_Horizontal" H 1900 5100 50  0001 C CNN
F 3 "~" H 1900 5100 50  0001 C CNN
	1    1900 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 5BD3D8D6
P 1700 5300
F 0 "#PWR0110" H 1700 5050 50  0001 C CNN
F 1 "GNDREF" V 1800 5200 50  0000 C CNN
F 2 "" H 1700 5300 50  0001 C CNN
F 3 "" H 1700 5300 50  0001 C CNN
	1    1700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5300 1700 5200
Text GLabel 1700 5000 1    50   Input ~ 0
IN_U
Wire Wire Line
	1700 5100 1700 5000
Wire Notes Line
	2100 4750 2100 5600
Wire Notes Line
	2100 5600 1600 5600
Wire Notes Line
	1600 5600 1600 4750
Wire Notes Line
	1600 4750 2100 4750
$EndSCHEMATC