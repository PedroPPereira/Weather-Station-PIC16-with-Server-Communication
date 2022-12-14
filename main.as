opt subtitle "Microchip MPLAB XC8 C Compiler v2.10 (Free license) build 20190730164152 Og9 "

opt pagewidth 120

	opt flic

	processor	16F877A
opt include "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_delay_ms
	FNCALL	_main,_dutyPWM
	FNCALL	_main,_initADC
	FNCALL	_main,_initI2C
	FNCALL	_main,_initISR
	FNCALL	_main,_initLCD
	FNCALL	_main,_initMatricialKey
	FNCALL	_main,_initPWM
	FNCALL	_main,_initTimer0
	FNCALL	_main,_initTimer1
	FNCALL	_main,_initUART
	FNCALL	_main,_pressSwitch
	FNCALL	_main,_printlnL1LCD
	FNCALL	_main,_printlnL2LCD
	FNCALL	_main,_printlnLCD
	FNCALL	_main,_readADC
	FNCALL	_main,_readEEPROM
	FNCALL	_main,_readUART
	FNCALL	_main,_rsLCD
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcmp
	FNCALL	_main,_strcpy
	FNCALL	_main,_strlen
	FNCALL	_main,_writeEEPROM
	FNCALL	_main,_writeUART
	FNCALL	_writeUART,_putUART
	FNCALL	_writeEEPROM,_readEEPROM
	FNCALL	_writeEEPROM,_startI2C
	FNCALL	_writeEEPROM,_stopI2C
	FNCALL	_writeEEPROM,_writeI2C
	FNCALL	_readEEPROM,_readI2C
	FNCALL	_readEEPROM,_startI2C
	FNCALL	_readEEPROM,_stopI2C
	FNCALL	_readEEPROM,_writeI2C
	FNCALL	_writeI2C,_delayI2C
	FNCALL	_stopI2C,_delayI2C
	FNCALL	_startI2C,_delayI2C
	FNCALL	_readI2C,_delayI2C
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_readUART,_getUART
	FNCALL	_printlnLCD,_rsLCD
	FNCALL	_printlnLCD,_strLCD
	FNCALL	_printlnL2LCD,_rsLCD
	FNCALL	_printlnL2LCD,_strLCD
	FNCALL	_printlnL1LCD,_rsLCD
	FNCALL	_printlnL1LCD,_strLCD
	FNCALL	_strLCD,_rsLCD
	FNCALL	_pressSwitch,_scanKeypad
	FNCALL	_initPWM,___aldiv
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_rsLCD
	FNCALL	_rsLCD,_delay_ms
	FNCALL	_dutyPWM,___lldiv
	FNCALL	_dutyPWM,___lmul
	FNROOT	_main
	FNCALL	_isr,i1_rsLCD
	FNCALL	_isr,i1_sprintf
	FNCALL	_isr,i1_writeUART
	FNCALL	i1_writeUART,i1_putUART
	FNCALL	i1_sprintf,i1___lwdiv
	FNCALL	i1_sprintf,i1___lwmod
	FNCALL	i1_rsLCD,i1_delay_ms
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_oldPotP1
	global	_run
	global	main@F1076
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	29

;initializer for _oldPotP1
	retlw	0FFh
	retlw	0FFh

	line	28

;initializer for _run
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	95

;initializer for main@F1076
	retlw	030h
	retlw	038h
	retlw	036h
	retlw	032h
	retlw	low(0)
	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_tempWindV
	global	_potP1
	global	_tempC
	global	_potP2
	global	_windV
	global	_nSeconds
	global	_nMSeconds
	global	_strADC
	global	_strUART
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADCON0
_ADCON0	set	0x1F
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTD
_PORTD	set	0x8
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_TMR1L
_TMR1L	set	0xE
	global	_TMR1H
_TMR1H	set	0xF
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISDbits
_TRISDbits	set	0x88
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_SPBRG
_SPBRG	set	0x99
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_TRISE
_TRISE	set	0x89
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
	
STR_1:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	87	;'W'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	49	;'1'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	47	;'/'
	retlw	87	;'W'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	0
psect	stringtext
STR_9	equ	STR_7+0
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_tempWindV:
       ds      2

_potP1:
       ds      2

_tempC:
       ds      2

_potP2:
       ds      2

_windV:
       ds      2

_nSeconds:
       ds      2

_nMSeconds:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	29
_oldPotP1:
       ds      2

psect	dataBANK0
	file	"main.c"
	line	28
_run:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_strADC:
       ds      11

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	95
main@F1076:
       ds      5

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_strUART:
       ds      40

	file	"main.as"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+028h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Bh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Eh)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@pass
main@pass:	; 5 bytes @ 0x0
	ds	5
	global	main@strOld
main@strOld:	; 11 bytes @ 0x5
	ds	11
	global	main@code
main@code:	; 5 bytes @ 0x10
	ds	5
	global	main@duty
main@duty:	; 2 bytes @ 0x15
	ds	2
	global	main@tempRB3
main@tempRB3:	; 2 bytes @ 0x17
	ds	2
	global	main@boolPass
main@boolPass:	; 1 bytes @ 0x19
	ds	1
	global	main@boolEmerg
main@boolEmerg:	; 1 bytes @ 0x1A
	ds	1
	global	main@constHum
main@constHum:	; 2 bytes @ 0x1B
	ds	2
	global	main@constTemp
main@constTemp:	; 2 bytes @ 0x1D
	ds	2
	global	main@constWind
main@constWind:	; 2 bytes @ 0x1F
	ds	2
	global	main@strConfig1
main@strConfig1:	; 1 bytes @ 0x21
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x22
	ds	2
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
?_printlnLCD:	; 1 bytes @ 0x0
?_printlnL2LCD:	; 1 bytes @ 0x0
?_printlnL1LCD:	; 1 bytes @ 0x0
?_writeEEPROM:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	printlnL1LCD@str1
printlnL1LCD@str1:	; 2 bytes @ 0x0
	global	printlnL2LCD@str1
printlnL2LCD@str1:	; 2 bytes @ 0x0
	global	printlnLCD@str1
printlnLCD@str1:	; 2 bytes @ 0x0
	global	writeEEPROM@addr
writeEEPROM@addr:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	writeEEPROM@val
writeEEPROM@val:	; 1 bytes @ 0x2
	global	printlnLCD@str2
printlnLCD@str2:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
??_writeEEPROM:	; 1 bytes @ 0x3
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	writeEEPROM@ah
writeEEPROM@ah:	; 1 bytes @ 0x5
	ds	1
	global	writeEEPROM@al
writeEEPROM@al:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	ds	1
	global	writeEEPROM@nt
writeEEPROM@nt:	; 1 bytes @ 0x7
	ds	1
??___lldiv:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	global	writeEEPROM@tmp
writeEEPROM@tmp:	; 2 bytes @ 0x8
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xB
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xB
	ds	2
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xD
	ds	1
??_dutyPWM:	; 1 bytes @ 0xE
	ds	1
??___lwmod:	; 1 bytes @ 0xF
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x10
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x11
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0x11
	ds	2
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x13
	ds	1
	global	dutyPWM@d
dutyPWM@d:	; 1 bytes @ 0x14
	ds	1
	global	dutyPWM@temp
dutyPWM@temp:	; 2 bytes @ 0x15
	ds	6
??_sprintf:	; 1 bytes @ 0x1B
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1E
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1F
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x20
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x21
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x23
	ds	1
??_main:	; 1 bytes @ 0x24
	ds	6
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initLCD:	; 1 bytes @ 0x0
?_initMatricialKey:	; 1 bytes @ 0x0
?_pressSwitch:	; 1 bytes @ 0x0
?_initUART:	; 1 bytes @ 0x0
?_initADC:	; 1 bytes @ 0x0
?_initI2C:	; 1 bytes @ 0x0
?_initTimer0:	; 1 bytes @ 0x0
?_initTimer1:	; 1 bytes @ 0x0
?_initISR:	; 1 bytes @ 0x0
?_dutyPWM:	; 1 bytes @ 0x0
?_readUART:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?_putUART:	; 1 bytes @ 0x0
?_getUART:	; 1 bytes @ 0x0
?_scanKeypad:	; 1 bytes @ 0x0
?_delayI2C:	; 1 bytes @ 0x0
?_startI2C:	; 1 bytes @ 0x0
?_stopI2C:	; 1 bytes @ 0x0
?_writeI2C:	; 1 bytes @ 0x0
?_readI2C:	; 1 bytes @ 0x0
?i1_delay_ms:	; 1 bytes @ 0x0
?i1_putUART:	; 1 bytes @ 0x0
??i1_putUART:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	i1putUART@val
i1putUART@val:	; 1 bytes @ 0x0
	global	i1delay_ms@val
i1delay_ms@val:	; 2 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
?i1_writeUART:	; 1 bytes @ 0x1
	global	i1writeUART@val
i1writeUART@val:	; 2 bytes @ 0x1
	ds	1
??i1_delay_ms:	; 1 bytes @ 0x2
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??i1_writeUART:	; 1 bytes @ 0x3
	global	i1delay_ms@i
i1delay_ms@i:	; 2 bytes @ 0x3
	ds	1
??i1___lwdiv:	; 1 bytes @ 0x4
	global	i1writeUART@i
i1writeUART@i:	; 1 bytes @ 0x4
	ds	1
	global	i1delay_ms@j
i1delay_ms@j:	; 1 bytes @ 0x5
	global	i1___lwdiv@quotient
i1___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
?i1_rsLCD:	; 1 bytes @ 0x6
	global	i1rsLCD@string
i1rsLCD@string:	; 1 bytes @ 0x6
	ds	1
??i1_rsLCD:	; 1 bytes @ 0x7
	global	i1rsLCD@val
i1rsLCD@val:	; 1 bytes @ 0x7
	global	i1___lwdiv@counter
i1___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?i1___lwmod
?i1___lwmod:	; 2 bytes @ 0x8
	global	i1___lwmod@divisor
i1___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	i1___lwmod@dividend
i1___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??i1___lwmod:	; 1 bytes @ 0xC
	ds	1
	global	i1___lwmod@counter
i1___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?i1_sprintf
?i1_sprintf:	; 2 bytes @ 0x0
	global	i1sprintf@sp
i1sprintf@sp:	; 2 bytes @ 0x0
	ds	2
	global	i1sprintf@f
i1sprintf@f:	; 2 bytes @ 0x2
	ds	8
??i1_sprintf:	; 1 bytes @ 0xA
	ds	3
	global	i1sprintf@ap
i1sprintf@ap:	; 1 bytes @ 0xD
	ds	1
	global	i1sprintf@flag
i1sprintf@flag:	; 1 bytes @ 0xE
	ds	1
	global	i1sprintf@prec
i1sprintf@prec:	; 1 bytes @ 0xF
	ds	1
	global	i1sprintf@val
i1sprintf@val:	; 2 bytes @ 0x10
	ds	2
	global	i1sprintf@c
i1sprintf@c:	; 1 bytes @ 0x12
	ds	1
??_isr:	; 1 bytes @ 0x13
	ds	6
??_initMatricialKey:	; 1 bytes @ 0x19
?_delay_ms:	; 1 bytes @ 0x19
??_initUART:	; 1 bytes @ 0x19
??_initADC:	; 1 bytes @ 0x19
??_initI2C:	; 1 bytes @ 0x19
??_initTimer0:	; 1 bytes @ 0x19
??_initTimer1:	; 1 bytes @ 0x19
??_initISR:	; 1 bytes @ 0x19
?_strcpy:	; 1 bytes @ 0x19
??_readUART:	; 1 bytes @ 0x19
??_putUART:	; 1 bytes @ 0x19
??_getUART:	; 1 bytes @ 0x19
??_scanKeypad:	; 1 bytes @ 0x19
??_delayI2C:	; 1 bytes @ 0x19
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x19
	global	?_readADC
?_readADC:	; 2 bytes @ 0x19
	global	?_strlen
?_strlen:	; 2 bytes @ 0x19
	global	?___lmul
?___lmul:	; 4 bytes @ 0x19
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x19
	global	putUART@val
putUART@val:	; 1 bytes @ 0x19
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x19
	global	delay_ms@val
delay_ms@val:	; 2 bytes @ 0x19
	global	scanKeypad@i
scanKeypad@i:	; 2 bytes @ 0x19
	global	delayI2C@i
delayI2C@i:	; 2 bytes @ 0x19
	global	strcmp@s1
strcmp@s1:	; 2 bytes @ 0x19
	global	strlen@s
strlen@s:	; 2 bytes @ 0x19
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x19
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x19
	ds	1
?_writeUART:	; 1 bytes @ 0x1A
??_strcpy:	; 1 bytes @ 0x1A
	global	writeUART@val
writeUART@val:	; 2 bytes @ 0x1A
	ds	1
??_delay_ms:	; 1 bytes @ 0x1B
??_readADC:	; 1 bytes @ 0x1B
??_strlen:	; 1 bytes @ 0x1B
??_startI2C:	; 1 bytes @ 0x1B
??_stopI2C:	; 1 bytes @ 0x1B
??_writeI2C:	; 1 bytes @ 0x1B
??_readI2C:	; 1 bytes @ 0x1B
	global	readUART@buf
readUART@buf:	; 1 bytes @ 0x1B
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x1B
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x1B
	global	scanKeypad@i_810
scanKeypad@i_810:	; 2 bytes @ 0x1B
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x1B
	ds	1
??_writeUART:	; 1 bytes @ 0x1C
??_strcmp:	; 1 bytes @ 0x1C
	global	readUART@tmp
readUART@tmp:	; 1 bytes @ 0x1C
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x1C
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x1C
	ds	1
	global	writeUART@i
writeUART@i:	; 1 bytes @ 0x1D
	global	writeI2C@val
writeI2C@val:	; 1 bytes @ 0x1D
	global	readI2C@ack
readI2C@ack:	; 1 bytes @ 0x1D
	global	readUART@i
readUART@i:	; 2 bytes @ 0x1D
	global	scanKeypad@i_811
scanKeypad@i_811:	; 2 bytes @ 0x1D
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x1D
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1D
	ds	1
	global	delay_ms@j
delay_ms@j:	; 1 bytes @ 0x1E
	global	writeI2C@i
writeI2C@i:	; 1 bytes @ 0x1E
	global	readI2C@ret
readI2C@ret:	; 1 bytes @ 0x1E
	ds	1
?_rsLCD:	; 1 bytes @ 0x1F
	global	rsLCD@string
rsLCD@string:	; 1 bytes @ 0x1F
	global	readI2C@i
readI2C@i:	; 1 bytes @ 0x1F
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x1F
	global	scanKeypad@i_812
scanKeypad@i_812:	; 2 bytes @ 0x1F
	ds	1
??_rsLCD:	; 1 bytes @ 0x20
?_readEEPROM:	; 1 bytes @ 0x20
	global	rsLCD@val
rsLCD@val:	; 1 bytes @ 0x20
	global	readEEPROM@addr
readEEPROM@addr:	; 2 bytes @ 0x20
	ds	1
??_initLCD:	; 1 bytes @ 0x21
??_pressSwitch:	; 1 bytes @ 0x21
?_strLCD:	; 1 bytes @ 0x21
??___lmul:	; 1 bytes @ 0x21
??___aldiv:	; 1 bytes @ 0x21
	global	strLCD@str
strLCD@str:	; 2 bytes @ 0x21
	ds	1
?_initPWM:	; 1 bytes @ 0x22
??_readEEPROM:	; 1 bytes @ 0x22
	global	readADC@ch
readADC@ch:	; 1 bytes @ 0x22
	global	pressSwitch@key
pressSwitch@key:	; 1 bytes @ 0x22
	global	initPWM@freq
initPWM@freq:	; 2 bytes @ 0x22
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x22
	ds	1
??_strLCD:	; 1 bytes @ 0x23
??___wmul:	; 1 bytes @ 0x23
	global	readEEPROM@ret
readEEPROM@ret:	; 1 bytes @ 0x23
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x23
	ds	1
??_initPWM:	; 1 bytes @ 0x24
	global	strLCD@i
strLCD@i:	; 1 bytes @ 0x24
	global	readEEPROM@al
readEEPROM@al:	; 1 bytes @ 0x24
	ds	1
??_printlnLCD:	; 1 bytes @ 0x25
??_printlnL2LCD:	; 1 bytes @ 0x25
??_printlnL1LCD:	; 1 bytes @ 0x25
??___lwdiv:	; 1 bytes @ 0x25
	global	readEEPROM@ah
readEEPROM@ah:	; 1 bytes @ 0x25
	ds	1
;!
;!Data Sizes:
;!    Strings     355
;!    Constant    10
;!    Data        8
;!    BSS         65
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     38      55
;!    BANK1            80     42      58
;!    BANK3            96     36      76
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 11
;!		 -> main@strOld(BANK3[11]), strADC(BANK1[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 11
;!		 -> main@strOld(BANK3[11]), strADC(BANK1[11]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 11
;!		 -> strADC(BANK1[11]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), main@pass(BANK3[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(2) Largest target is 11
;!		 -> strADC(BANK1[11]), main@code(BANK3[5]), 
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 38
;!		 -> STR_11(CODE[37]), STR_10(CODE[37]), STR_8(CODE[9]), STR_2(CODE[37]), 
;!		 -> STR_1(CODE[38]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 40
;!		 -> strADC(BANK1[11]), strUART(BANK3[40]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    readUART@buf	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@strConfig1(BANK3[1]), 
;!
;!    writeUART@val	PTR const unsigned char  size(2) Largest target is 40
;!		 -> STR_15(CODE[34]), STR_14(CODE[34]), STR_13(CODE[34]), STR_12(CODE[23]), 
;!		 -> strUART(BANK3[40]), 
;!
;!    printlnLCD@str2	PTR const unsigned char  size(2) Largest target is 6
;!		 -> STR_4(CODE[6]), 
;!
;!    printlnLCD@str1	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_3(CODE[16]), 
;!
;!    printlnL2LCD@str1	PTR const unsigned char  size(2) Largest target is 19
;!		 -> strADC(BANK1[11]), STR_6(CODE[19]), STR_5(CODE[17]), 
;!
;!    printlnL1LCD@str1	PTR const unsigned char  size(2) Largest target is 14
;!		 -> STR_9(CODE[14]), STR_7(CODE[14]), 
;!
;!    strLCD@str	PTR const unsigned char  size(2) Largest target is 19
;!		 -> STR_9(CODE[14]), strADC(BANK1[11]), STR_7(CODE[14]), STR_6(CODE[19]), 
;!		 -> STR_5(CODE[17]), STR_4(CODE[6]), STR_3(CODE[16]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    i1_writeUART->i1_putUART
;!    i1_sprintf->i1___lwmod
;!    i1___lwmod->i1___lwdiv
;!    i1_rsLCD->i1_delay_ms
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___lwdiv
;!    _main->_initPWM
;!    _main->_printlnL1LCD
;!    _main->_printlnL2LCD
;!    _main->_printlnLCD
;!    _main->_readEEPROM
;!    _writeUART->_putUART
;!    _writeEEPROM->_readEEPROM
;!    _readEEPROM->_readI2C
;!    _writeI2C->_delayI2C
;!    _stopI2C->_delayI2C
;!    _startI2C->_delayI2C
;!    _readI2C->_delayI2C
;!    _sprintf->___lwdiv
;!    _sprintf->_readEEPROM
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _printlnLCD->_strLCD
;!    _printlnL2LCD->_strLCD
;!    _printlnL1LCD->_strLCD
;!    _strLCD->_rsLCD
;!    _pressSwitch->_scanKeypad
;!    _initPWM->___aldiv
;!    _initLCD->_rsLCD
;!    _rsLCD->_delay_ms
;!    _dutyPWM->___lmul
;!    ___lldiv->___lmul
;!    ___wmul->_readADC
;!
;!Critical Paths under _isr in BANK0
;!
;!    _isr->i1_sprintf
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _initPWM->___aldiv
;!    _dutyPWM->___lldiv
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                42    42      0   33275
;!                                             36 BANK1      6     6      0
;!                                              0 BANK3     36    36      0
;!                            ___lwdiv
;!                             ___wmul
;!                           _delay_ms
;!                            _dutyPWM
;!                            _initADC
;!                            _initI2C
;!                            _initISR
;!                            _initLCD
;!                   _initMatricialKey
;!                            _initPWM
;!                         _initTimer0
;!                         _initTimer1
;!                           _initUART
;!                        _pressSwitch
;!                       _printlnL1LCD
;!                       _printlnL2LCD
;!                         _printlnLCD
;!                            _readADC
;!                         _readEEPROM
;!                           _readUART
;!                              _rsLCD
;!                            _sprintf
;!                             _strcmp
;!                             _strcpy
;!                             _strlen
;!                        _writeEEPROM
;!                          _writeUART
;! ---------------------------------------------------------------------------------
;! (1) _writeUART                                            4     2      2     707
;!                                             26 BANK0      4     2      2
;!                            _putUART
;! ---------------------------------------------------------------------------------
;! (2) _putUART                                              1     1      0      31
;!                                             25 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _writeEEPROM                                         10     7      3    2245
;!                                              0 BANK1     10     7      3
;!                         _readEEPROM
;!                           _startI2C
;!                            _stopI2C
;!                           _writeI2C
;! ---------------------------------------------------------------------------------
;! (2) _readEEPROM                                           6     4      2    1152
;!                                             32 BANK0      6     4      2
;!                            _readI2C
;!                           _startI2C
;!                            _stopI2C
;!                           _writeI2C
;! ---------------------------------------------------------------------------------
;! (2) _writeI2C                                             4     4      0     198
;!                                             27 BANK0      4     4      0
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (2) _stopI2C                                              0     0      0      68
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (2) _startI2C                                             0     0      0      68
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (3) _readI2C                                              5     5      0     235
;!                                             27 BANK0      5     5      0
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (3) _delayI2C                                             2     2      0      68
;!                                             25 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               4     2      2     260
;!                                             25 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _strcpy                                               4     3      1     219
;!                                             25 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _strcmp                                               7     4      3     450
;!                                             25 BANK0      7     4      3
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             27    17     10    2585
;!                                             17 BANK1     19     9     10
;!                            ___lwdiv
;!                            ___lwmod
;!                         _readEEPROM (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     386
;!                                             11 BANK1      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4    1011
;!                                             37 BANK0      1     1      0
;!                                              4 BANK1      7     3      4
;!                             ___wmul (ARG)
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _readUART                                             6     6      0     358
;!                                             25 BANK0      6     6      0
;!                            _getUART
;! ---------------------------------------------------------------------------------
;! (2) _getUART                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             10     8      2      31
;!                                             25 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! (1) _printlnLCD                                           5     1      4    4976
;!                                             37 BANK0      1     1      0
;!                                              0 BANK1      4     0      4
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (1) _printlnL2LCD                                         3     1      2    5022
;!                                             37 BANK0      1     1      0
;!                                              0 BANK1      2     0      2
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (1) _printlnL1LCD                                         3     1      2    4945
;!                                             37 BANK0      1     1      0
;!                                              0 BANK1      2     0      2
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (2) _strLCD                                               4     2      2    2599
;!                                             33 BANK0      4     2      2
;!                              _rsLCD
;! ---------------------------------------------------------------------------------
;! (1) _pressSwitch                                          2     2      0     340
;!                                             33 BANK0      2     2      0
;!                         _scanKeypad
;! ---------------------------------------------------------------------------------
;! (2) _scanKeypad                                           8     8      0     272
;!                                             25 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _initUART                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initTimer1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initTimer0                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initPWM                                              4     2      2     707
;!                                             34 BANK0      4     2      2
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                             25 BANK0      9     1      8
;!                                              0 BANK1      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) _initMatricialKey                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0    2836
;!                                             33 BANK0      1     1      0
;!                           _delay_ms
;!                              _rsLCD
;! ---------------------------------------------------------------------------------
;! (1) _rsLCD                                                2     1      1    2161
;!                                             31 BANK0      2     1      1
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2     675
;!                                             25 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _initISR                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initI2C                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _dutyPWM                                              9     9      0     781
;!                                             14 BANK1      9     9      0
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     290
;!                                             25 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     395
;!                                              0 BANK1     14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     752
;!                                             35 BANK0      2     2      0
;!                                              0 BANK1      4     0      4
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  6     6      0    1382
;!                                             19 BANK0      6     6      0
;!                            i1_rsLCD
;!                          i1_sprintf
;!                        i1_writeUART
;! ---------------------------------------------------------------------------------
;! (6) i1_writeUART                                          4     2      2     164
;!                                              1 COMMON     4     2      2
;!                          i1_putUART
;! ---------------------------------------------------------------------------------
;! (7) i1_putUART                                            1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) i1_sprintf                                           27    17     10     956
;!                                              0 BANK0     19     9     10
;!                          i1___lwdiv
;!                          i1___lwmod
;! ---------------------------------------------------------------------------------
;! (7) i1___lwmod                                            6     2      4     211
;!                                              8 COMMON     6     2      4
;!                          i1___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (7) i1___lwdiv                                            8     4      4     214
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (6) i1_rsLCD                                              2     1      1     262
;!                                              6 COMMON     2     1      1
;!                         i1_delay_ms
;! ---------------------------------------------------------------------------------
;! (7) i1_delay_ms                                           6     4      2     144
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!     ___wmul (ARG)
;!       _readADC (ARG)
;!     _readADC (ARG)
;!   ___wmul
;!     _readADC (ARG)
;!   _delay_ms
;!   _dutyPWM
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!   _initADC
;!   _initI2C
;!   _initISR
;!   _initLCD
;!     _delay_ms
;!     _rsLCD
;!       _delay_ms
;!   _initMatricialKey
;!   _initPWM
;!     ___aldiv
;!   _initTimer0
;!   _initTimer1
;!   _initUART
;!   _pressSwitch
;!     _scanKeypad
;!   _printlnL1LCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _printlnL2LCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _printlnLCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _readADC
;!   _readEEPROM
;!     _readI2C
;!       _delayI2C
;!     _startI2C
;!       _delayI2C
;!     _stopI2C
;!       _delayI2C
;!     _writeI2C
;!       _delayI2C
;!   _readUART
;!     _getUART
;!   _rsLCD
;!     _delay_ms
;!   _sprintf
;!     ___lwdiv
;!       ___wmul (ARG)
;!         _readADC (ARG)
;!       _readADC (ARG)
;!     ___lwmod
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!           _readADC (ARG)
;!         _readADC (ARG)
;!     _readEEPROM (ARG)
;!       _readI2C
;!         _delayI2C
;!       _startI2C
;!         _delayI2C
;!       _stopI2C
;!         _delayI2C
;!       _writeI2C
;!         _delayI2C
;!   _strcmp
;!   _strcpy
;!   _strlen
;!   _writeEEPROM
;!     _readEEPROM
;!       _readI2C
;!         _delayI2C
;!       _startI2C
;!         _delayI2C
;!       _stopI2C
;!         _delayI2C
;!       _writeI2C
;!         _delayI2C
;!     _startI2C
;!       _delayI2C
;!     _stopI2C
;!       _delayI2C
;!     _writeI2C
;!       _delayI2C
;!   _writeUART
;!     _putUART
;!
;! _isr (ROOT)
;!   i1_rsLCD
;!     i1_delay_ms
;!   i1_sprintf
;!     i1___lwdiv
;!     i1___lwmod
;!       i1___lwdiv (ARG)
;!   i1_writeUART
;!     i1_putUART
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     24      4C       9       79.2%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     2A      3A       7       72.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     26      37       5       68.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      CB      12        0.0%
;!ABS                  0      0      CB       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   34[BANK3 ] int 
;;  strOld         11    5[BANK3 ] unsigned char [11]
;;  code            5   16[BANK3 ] unsigned char [5]
;;  pass            5    0[BANK3 ] unsigned char [5]
;;  constWind       2   31[BANK3 ] int 
;;  constTemp       2   29[BANK3 ] int 
;;  constHum        2   27[BANK3 ] int 
;;  tempRB3         2   23[BANK3 ] int 
;;  duty            2   21[BANK3 ] unsigned int 
;;  strConfig1      1   33[BANK3 ] unsigned char [1]
;;  boolEmerg       1   26[BANK3 ] unsigned char 
;;  boolPass        1   25[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  123[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      36       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0       6      36       0
;;Total ram usage:       42 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		_delay_ms
;;		_dutyPWM
;;		_initADC
;;		_initI2C
;;		_initISR
;;		_initLCD
;;		_initMatricialKey
;;		_initPWM
;;		_initTimer0
;;		_initTimer1
;;		_initUART
;;		_pressSwitch
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;;		_readADC
;;		_readEEPROM
;;		_readUART
;;		_rsLCD
;;		_sprintf
;;		_strcmp
;;		_strcpy
;;		_strlen
;;		_writeEEPROM
;;		_writeUART
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	82
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l4033:	
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	85
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	86
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	87
	
l4035:	
	clrf	(136)^080h	;volatile
	line	88
	
l4037:	
	clrf	(137)^080h	;volatile
	line	90
	
l4039:	
	fcall	_initLCD
	line	91
	fcall	_initMatricialKey
	line	93
	
l4041:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@tempRB3)^0180h
	clrf	(main@tempRB3+1)^0180h
	line	95
	
l4043:	
	movlw	014h
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	
l4045:	
	movlw	028h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	
l4047:	
	movlw	03Ch
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	96
	
l4049:	
	movlw	(main@pass)&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@F1076)^080h,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(main@F1076)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1076)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1076)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1076)^080h+4,w
	movwf	indf
	line	97
	
l4051:	
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolPass)^0180h
	
l4053:	
	clrf	(main@boolEmerg)^0180h
	line	98
	
l4055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),1	;volatile
	line	101
	goto	l4083
	line	102
	
l4057:	
	movlw	low(((STR_3)|8000h))
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printlnLCD@str1)^080h
	movlw	high(((STR_3)|8000h))
	movwf	((printlnLCD@str1)^080h)+1
	movlw	low(((STR_4)|8000h))
	movwf	(printlnLCD@str2)^080h
	movlw	high(((STR_4)|8000h))
	movwf	((printlnLCD@str2)^080h)+1
	fcall	_printlnLCD
	line	103
	
l4059:	
	movlw	low(063h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	movlw	low(0C5h)
	fcall	_rsLCD
	line	104
	
l4061:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	line	105
	
l4067:	
	fcall	_pressSwitch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	low(main@code|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_main+0)^080h+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	106
	
l4069:	
	movlw	low(064h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	low(main@code|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_rsLCD
	line	104
	
l4071:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	0
	addwf	(main@i+1)^0180h,f
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4855
	movlw	04h
	subwf	(main@i)^0180h,w
u4855:

	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l4067
u4850:
	line	108
	
l4073:	
	movlw	(low(main@code|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcmp@s1)
	movlw	(0x1)
	movwf	(strcmp@s1+1)
	movlw	(low(main@pass|((0x1)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s2)
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l4079
u4860:
	line	109
	
l4075:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolPass)^0180h
	incf	(main@boolPass)^0180h,f
	line	110
	
l4077:	
	movlw	low(((STR_5)|8000h))
	bcf	status, 6	;RP1=0, select bank1
	movwf	(printlnL2LCD@str1)^080h
	movlw	high(((STR_5)|8000h))
	movwf	((printlnL2LCD@str1)^080h)+1
	fcall	_printlnL2LCD
	line	111
	goto	l4081
	line	112
	
l4079:	
	movlw	low(((STR_6)|8000h))
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printlnL2LCD@str1)^080h
	movlw	high(((STR_6)|8000h))
	movwf	((printlnL2LCD@str1)^080h)+1
	fcall	_printlnL2LCD
	line	113
	
l4081:	
	movlw	032h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	101
	
l4083:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@boolPass)^0180h),w
	btfsc	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l4057
u4870:
	line	117
	
l4085:	
	movlw	low(07h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	118
	
l4087:	
	fcall	_initUART
	line	119
	
l4089:	
	fcall	_initADC
	line	120
	
l4091:	
	movlw	0E8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(initPWM@freq)
	movlw	03h
	movwf	((initPWM@freq))+1
	fcall	_initPWM
	line	121
	fcall	_initI2C
	line	122
	fcall	_initTimer0
	line	123
	fcall	_initTimer1
	line	124
	fcall	_initISR
	line	125
	
l4093:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_run)
	incf	(_run),f
	line	126
	
l4095:	
	bsf	(7),5	;volatile
	line	127
	
l4097:	
	movlw	low(((STR_7)|8000h))
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printlnL1LCD@str1)^080h
	movlw	high(((STR_7)|8000h))
	movwf	((printlnL1LCD@str1)^080h)+1
	fcall	_printlnL1LCD
	line	130
	
l4099:	
	movf	((_run)),w
	btfsc	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l4099
u4880:
	line	132
	
l4101:	
	btfsc	(6),3	;volatile
	goto	u4891
	goto	u4890
u4891:
	goto	l4107
u4890:
	
l4103:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@tempRB3)^0180h),w
iorwf	((main@tempRB3+1)^0180h),w
	btfss	status,2
	goto	u4901
	goto	u4900
u4901:
	goto	l4107
u4900:
	
l4105:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(7),5	;volatile
	setc
	btfsc	status,0
	goto	u4911
	goto	u4910
	
u4911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	goto	u4924
u4910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),5	;volatile
u4924:
	line	133
	
l4107:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),3	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@tempRB3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@tempRB3+1)^0180h
	line	136
	
l4109:	
	movlw	066h
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(0)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier)^080h
	movlw	0Ah
	movwf	(___wmul@multiplicand)^080h
	movlw	0
	movwf	((___wmul@multiplicand)^080h)+1
	fcall	___wmul
	movf	(1+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(0+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP1)
	line	137
	
l4111:	
	movlw	064h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier)^080h
	movlw	0FFh
	movwf	(___wmul@multiplicand)^080h
	movlw	0
	movwf	((___wmul@multiplicand)^080h)+1
	fcall	___wmul
	movf	(1+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(0+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@duty+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@duty)^0180h
	line	138
	
l4113:	
	movf	(main@duty)^0180h,w
	fcall	_dutyPWM
	line	139
	
l4115:	
	movlw	066h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(01h)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier)^080h
	movlw	0Ah
	movwf	(___wmul@multiplicand)^080h
	movlw	0
	movwf	((___wmul@multiplicand)^080h)+1
	fcall	___wmul
	movf	(1+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(0+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP2)
	line	140
	
l4117:	
	movlw	0CAh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(02h)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___wmul@multiplier)^080h
	movlw	064h
	movwf	(___wmul@multiplicand)^080h
	movlw	0
	movwf	((___wmul@multiplicand)^080h)+1
	fcall	___wmul
	movf	(1+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(0+(?___wmul))^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_tempC+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_tempC)
	line	143
	
l4119:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x0)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_8)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_8)|8000h))
	movwf	((sprintf@f)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_windV+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_windV),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+08h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	144
	
l4121:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s1)
	movlw	(0x0)
	movwf	(strcmp@s1+1)
	movlw	(low(main@strOld|((0x1)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s2)
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfsc	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l4133
u4930:
	line	145
	
l4123:	
	movlw	(low(main@strOld|((0x1)<<8))&0ffh)
	movwf	(strlen@s)
	movlw	(0x1)
	movwf	(strlen@s+1)
	fcall	_strlen
	movf	(0+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((??_main+0)^080h+0+1)
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strlen@s)
	movlw	(0x0)
	movwf	(strlen@s+1)
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	1+(??_main+0)^080h+0,w
	skipz
	goto	u4945
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	0+(??_main+0)^080h+0,w
u4945:

	skipnz
	goto	u4941
	goto	u4940
u4941:
	goto	l4129
u4940:
	line	146
	
l4125:	
	movlw	low(063h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	147
	
l4127:	
	movlw	low(((STR_9)|8000h))
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printlnL1LCD@str1)^080h
	movlw	high(((STR_9)|8000h))
	movwf	((printlnL1LCD@str1)^080h)+1
	fcall	_printlnL1LCD
	line	149
	
l4129:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(printlnL2LCD@str1)^080h
	movlw	(0x0)
	movwf	(printlnL2LCD@str1+1)^080h
	fcall	_printlnL2LCD
	line	150
	
l4131:	
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcpy@from)
	movlw	(low(main@strOld|((0x1)<<8)))&0ffh
	fcall	_strcpy
	line	154
	
l4133:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@constHum+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_potP2+1),w
	skipz
	goto	u4955
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@constHum)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_potP2),w
u4955:
	skipnc
	goto	u4951
	goto	u4950
u4951:
	goto	l4155
u4950:
	
l4135:	
	movf	(_windV+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constWind+1)^0180h,w
	skipz
	goto	u4965
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_windV),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constWind)^0180h,w
u4965:
	skipnc
	goto	u4961
	goto	u4960
u4961:
	goto	l4155
u4960:
	
l4137:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constTemp+1)^0180h,w
	skipz
	goto	u4975
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constTemp)^0180h,w
u4975:
	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l4155
u4970:
	line	155
	
l4139:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),1	;volatile
	line	156
	
l4141:	
	movlw	low(080h)
	movwf	(8)	;volatile
	line	157
	
l4143:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@boolEmerg)^0180h),w
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l4153
u4980:
	line	158
	
l4145:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_10)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_10)|8000h))
	movwf	((sprintf@f)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_windV+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_windV),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+08h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	159
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeUART@val)
	movlw	(0x1)
	movwf	(writeUART@val+1)
	fcall	_writeUART
	line	160
	
l4147:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(writeEEPROM@addr)^080h
	movlw	0
	movwf	((writeEEPROM@addr)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(writeEEPROM@val)^080h
	fcall	_writeEEPROM
	line	161
	
l4149:	
	movlw	02h
	movwf	(writeEEPROM@addr)^080h
	movlw	0
	movwf	((writeEEPROM@addr)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_windV),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(writeEEPROM@val)^080h
	fcall	_writeEEPROM
	line	162
	
l4151:	
	movlw	03h
	movwf	(writeEEPROM@addr)^080h
	movlw	0
	movwf	((writeEEPROM@addr)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(writeEEPROM@val)^080h
	fcall	_writeEEPROM
	line	164
	
l4153:	
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolEmerg)^0180h
	incf	(main@boolEmerg)^0180h,f
	line	165
	goto	l4159
	line	167
	
l4155:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolEmerg)^0180h
	line	168
	
l4157:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),1	;volatile
	line	172
	
l4159:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),5	;volatile
	goto	u4991
	goto	u4990
u4991:
	goto	l4187
u4990:
	line	173
	
l4161:	
	movlw	(low(main@strConfig1|((0x1)<<8)))&0ffh
	fcall	_readUART
	line	174
	
l4163:	
	bcf	(12),5	;volatile
	line	175
	goto	l4185
	line	176
	
l4165:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	xorlw	0FFh
	skipnz
	goto	u5001
	goto	u5000
u5001:
	goto	l4169
u5000:
	line	177
	
l4167:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_11)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_11)|8000h))
	movwf	((sprintf@f)^080h)+1
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	0+(?_sprintf)^080h+04h
	movf	1+(??_main+0)^080h+0,w
	movwf	1+(?_sprintf)^080h+04h
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	movwf	0+(?_sprintf)^080h+06h
	movf	1+(??_main+2)^080h+0,w
	movwf	1+(?_sprintf)^080h+06h
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+4)^080h+0
	clrf	(??_main+4)^080h+0+1
	movf	0+(??_main+4)^080h+0,w
	movwf	0+(?_sprintf)^080h+08h
	movf	1+(??_main+4)^080h+0,w
	movwf	1+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	178
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeUART@val)
	movlw	(0x1)
	movwf	(writeUART@val+1)
	fcall	_writeUART
	line	179
	goto	l4187
	
l4169:	
	movlw	low(((STR_12)|8000h))
	movwf	(writeUART@val)
	movlw	high(((STR_12)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4187
	line	181
	
l4171:	
	movlw	0Ah
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	032h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	046h
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	182
	
l4173:	
	movlw	low(((STR_13)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_13)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4187
	line	183
	
l4175:	
	movlw	014h
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	028h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	03Ch
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	184
	
l4177:	
	movlw	low(((STR_14)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_14)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4187
	line	185
	
l4179:	
	movlw	01Eh
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	01Eh
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	032h
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	186
	
l4181:	
	movlw	low(((STR_15)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_15)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4187
	line	175
	
l4185:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@strConfig1)^0180h,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 97 to 104
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           35    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	97^0	; case 97
	skipnz
	goto	l4171
	xorlw	98^97	; case 98
	skipnz
	goto	l4175
	xorlw	99^98	; case 99
	skipnz
	goto	l4179
	xorlw	104^99	; case 104
	skipnz
	goto	l4165
	goto	l4187
	opt asmopt_pop

	line	190
	
l4187:	
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	goto	l4099
	global	start
	ljmp	start
	opt callstack 0
	line	193
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_writeUART

;; *************** function _writeUART *****************
;; Defined at:
;;		line 30 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2   26[BANK0 ] PTR const unsigned char 
;;		 -> STR_15(34), STR_14(34), STR_13(34), STR_12(23), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  i               1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_putUART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	30
global __ptext1
__ptext1:	;psect for function _writeUART
psect	text1
	file	"serial.c"
	line	30
	global	__size_of_writeUART
	__size_of_writeUART	equ	__end_of_writeUART-_writeUART
	
_writeUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _writeUART: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3653:	
	clrf	(writeUART@i)
	line	32
	goto	l3659
	
l3655:	
	movf	(writeUART@i),w
	addwf	(writeUART@val),w
	movwf	fsr0
	movf	(writeUART@val+1),w
	skipnc
	incf	(writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_putUART
	
l3657:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_writeUART+0)+0
	movf	(??_writeUART+0)+0,w
	addwf	(writeUART@i),f
	
l3659:	
	movf	(writeUART@i),w
	addwf	(writeUART@val),w
	movwf	fsr0
	movf	(writeUART@val+1),w
	skipnc
	incf	(writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l3655
u4440:
	line	33
	
l3661:	
	movlw	low(0Ah)
	fcall	_putUART
	line	34
	movlw	low(0Dh)
	fcall	_putUART
	line	35
	
l3663:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	36
	
l286:	
	return
	opt callstack 0
GLOBAL	__end_of_writeUART
	__end_of_writeUART:
	signat	_writeUART,4217
	global	_putUART

;; *************** function _putUART *****************
;; Defined at:
;;		line 24 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_writeUART
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _putUART
psect	text2
	file	"serial.c"
	line	24
	global	__size_of_putUART
	__size_of_putUART	equ	__end_of_putUART-_putUART
	
_putUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _putUART: [wreg]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(putUART@val)
	line	25
	
l3303:	
	movf	(putUART@val),w
	movwf	(25)	;volatile
	line	26
	
l277:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u3601
	goto	u3600
u3601:
	goto	l277
u3600:
	line	27
	
l280:	
	return
	opt callstack 0
GLOBAL	__end_of_putUART
	__end_of_putUART:
	signat	_putUART,4217
	global	_writeEEPROM

;; *************** function _writeEEPROM *****************
;; Defined at:
;;		line 25 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2    0[BANK1 ] unsigned int 
;;  val             1    2[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             2    8[BANK1 ] unsigned int 
;;  nt              1    7[BANK1 ] unsigned char 
;;  al              1    6[BANK1 ] unsigned char 
;;  ah              1    5[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_readEEPROM
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"eeprom_ext.c"
	line	25
global __ptext3
__ptext3:	;psect for function _writeEEPROM
psect	text3
	file	"eeprom_ext.c"
	line	25
	global	__size_of_writeEEPROM
	__size_of_writeEEPROM	equ	__end_of_writeEEPROM-_writeEEPROM
	
_writeEEPROM:	
;incstack = 0
	opt	callstack 1
; Regs used in _writeEEPROM: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l3791:	
	movf	(writeEEPROM@val)^080h,w
	movwf	(??_writeEEPROM+0)^080h+0
	clrf	(??_writeEEPROM+0)^080h+0+1
	movf	0+(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@tmp)^080h
	movf	1+(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@tmp+1)^080h
	line	27
	
l3793:	
	movf	0+(writeEEPROM@addr)^080h+01h,w
	andlw	01h
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@ah)^080h
	line	28
	
l3795:	
	movf	(writeEEPROM@addr)^080h,w
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@al)^080h
	line	29
	
l3797:	
	clrf	(writeEEPROM@nt)^080h
	line	32
	
l3799:	
	fcall	_startI2C
	line	33
	
l3801:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((writeEEPROM@ah)^080h),w
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l3805
u4550:
	
l3803:	
	movlw	low(0A2h)
	fcall	_writeI2C
	goto	l458
	line	34
	
l3805:	
	movlw	low(0A0h)
	fcall	_writeI2C
	
l458:	
	line	35
	bsf	status, 5	;RP0=1, select bank1
	movf	(writeEEPROM@al)^080h,w
	fcall	_writeI2C
	line	36
	bsf	status, 5	;RP0=1, select bank1
	movf	(writeEEPROM@tmp)^080h,w
	fcall	_writeI2C
	line	37
	fcall	_stopI2C
	line	38
	
l3807:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	addwf	(writeEEPROM@nt)^080h,f
	line	40
	
l3809:	
	movf	(writeEEPROM@addr+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(writeEEPROM@addr)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	clrf	(??_writeEEPROM+0)^080h+0+1
	movf	(writeEEPROM@tmp+1)^080h,w
	xorwf	1+(??_writeEEPROM+0)^080h+0,w
	skipz
	goto	u4565
	movf	(writeEEPROM@tmp)^080h,w
	xorwf	0+(??_writeEEPROM+0)^080h+0,w
u4565:

	skipnz
	goto	u4561
	goto	u4560
u4561:
	goto	l462
u4560:
	
l3811:	
	movlw	low(0Ah)
	subwf	(writeEEPROM@nt)^080h,w
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l3799
u4570:
	line	41
	
l462:	
	return
	opt callstack 0
GLOBAL	__end_of_writeEEPROM
	__end_of_writeEEPROM:
	signat	_writeEEPROM,8313
	global	_readEEPROM

;; *************** function _readEEPROM *****************
;; Defined at:
;;		line 5 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2   32[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ah              1   37[BANK0 ] unsigned char 
;;  al              1   36[BANK0 ] unsigned char 
;;  ret             1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_readI2C
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;; This function is called by:
;;		_main
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext4
__ptext4:	;psect for function _readEEPROM
psect	text4
	file	"eeprom_ext.c"
	line	5
	global	__size_of_readEEPROM
	__size_of_readEEPROM	equ	__end_of_readEEPROM-_readEEPROM
	
_readEEPROM:	
;incstack = 0
	opt	callstack 1
; Regs used in _readEEPROM: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l3273:	
	movf	0+(readEEPROM@addr)+01h,w
	andlw	01h
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@ah)
	line	8
	
l3275:	
	movf	(readEEPROM@addr),w
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@al)
	line	10
	
l3277:	
	fcall	_startI2C
	line	11
	
l3279:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((readEEPROM@ah)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l3283
u3570:
	
l3281:	
	movlw	low(0A2h)
	fcall	_writeI2C
	goto	l450
	line	12
	
l3283:	
	movlw	low(0A0h)
	fcall	_writeI2C
	
l450:	
	line	13
	movf	(readEEPROM@al),w
	fcall	_writeI2C
	line	15
	fcall	_startI2C
	line	16
	
l3285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((readEEPROM@ah)),w
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3289
u3580:
	
l3287:	
	movlw	low(0A3h)
	fcall	_writeI2C
	goto	l452
	line	17
	
l3289:	
	movlw	low(0A1h)
	fcall	_writeI2C
	
l452:	
	line	19
	movlw	low(01h)
	fcall	_readI2C
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@ret)
	line	20
	fcall	_stopI2C
	line	21
	
l3291:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readEEPROM@ret),w
	line	22
	
l453:	
	return
	opt callstack 0
GLOBAL	__end_of_readEEPROM
	__end_of_readEEPROM:
	signat	_readEEPROM,4217
	global	_writeI2C

;; *************** function _writeI2C *****************
;; Defined at:
;;		line 30 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   29[BANK0 ] unsigned char 
;;  i               1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	30
global __ptext5
__ptext5:	;psect for function _writeI2C
psect	text5
	file	"i2c.c"
	line	30
	global	__size_of_writeI2C
	__size_of_writeI2C	equ	__end_of_writeI2C-_writeI2C
	
_writeI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _writeI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeI2C@val)
	line	32
	
l3211:	
	bcf	(7),3	;volatile
	line	34
	
l3213:	
	clrf	(writeI2C@i)
	line	35
	
l3219:	
	movf	(writeI2C@val),w
	movwf	(??_writeI2C+0)+0
	movf	(writeI2C@i),w
	sublw	07h
	addlw	1
	goto	u3524
u3525:
	clrc
	rrf	(??_writeI2C+0)+0,f
u3524:
	addlw	-1
	skipz
	goto	u3525
	movf	0+(??_writeI2C+0)+0,w
	andlw	01h
	movwf	(??_writeI2C+1)+0
	swapf	(??_writeI2C+1)+0,f
	movf	(7),w	;volatile
	xorwf	(??_writeI2C+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_writeI2C+1)+0,w
	movwf	(7)	;volatile
	line	36
	
l3221:	
	bsf	(7),3	;volatile
	line	37
	
l3223:	
	fcall	_delayI2C
	line	38
	
l3225:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	34
	
l3227:	
	movlw	low(01h)
	movwf	(??_writeI2C+0)+0
	movf	(??_writeI2C+0)+0,w
	addwf	(writeI2C@i),f
	
l3229:	
	movlw	low(08h)
	subwf	(writeI2C@i),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l3219
u3530:
	
l430:	
	line	40
	bsf	(7),4	;volatile
	line	41
	
l3231:	
	fcall	_delayI2C
	line	42
	
l3233:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	43
	fcall	_delayI2C
	line	44
	
l3235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	45
	
l431:	
	return
	opt callstack 0
GLOBAL	__end_of_writeI2C
	__end_of_writeI2C:
	signat	_writeI2C,4217
	global	_stopI2C

;; *************** function _stopI2C *****************
;; Defined at:
;;		line 22 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext6
__ptext6:	;psect for function _stopI2C
psect	text6
	file	"i2c.c"
	line	22
	global	__size_of_stopI2C
	__size_of_stopI2C	equ	__end_of_stopI2C-_stopI2C
	
_stopI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _stopI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3205:	
	bsf	(7),3	;volatile
	line	24
	bcf	(7),4	;volatile
	line	25
	
l3207:	
	fcall	_delayI2C
	line	26
	
l3209:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),4	;volatile
	line	27
	fcall	_delayI2C
	line	28
	
l426:	
	return
	opt callstack 0
GLOBAL	__end_of_stopI2C
	__end_of_stopI2C:
	signat	_stopI2C,89
	global	_startI2C

;; *************** function _startI2C *****************
;; Defined at:
;;		line 14 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/900
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	14
global __ptext7
__ptext7:	;psect for function _startI2C
psect	text7
	file	"i2c.c"
	line	14
	global	__size_of_startI2C
	__size_of_startI2C	equ	__end_of_startI2C-_startI2C
	
_startI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _startI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l3199:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),3	;volatile
	line	16
	bsf	(7),4	;volatile
	line	17
	
l3201:	
	fcall	_delayI2C
	line	18
	
l3203:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	19
	fcall	_delayI2C
	line	20
	
l423:	
	return
	opt callstack 0
GLOBAL	__end_of_startI2C
	__end_of_startI2C:
	signat	_startI2C,89
	global	_readI2C

;; *************** function _readI2C *****************
;; Defined at:
;;		line 48 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1   29[BANK0 ] unsigned char 
;;  i               1   31[BANK0 ] unsigned char 
;;  ret             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	48
global __ptext8
__ptext8:	;psect for function _readI2C
psect	text8
	file	"i2c.c"
	line	48
	global	__size_of_readI2C
	__size_of_readI2C	equ	__end_of_readI2C-_readI2C
	
_readI2C:	
;incstack = 0
	opt	callstack 1
; Regs used in _readI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(readI2C@ack)
	line	50
	
l3237:	
	clrf	(readI2C@ret)
	line	51
	
l3239:	
	bcf	(7),3	;volatile
	line	52
	
l3241:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,4	;volatile
	line	53
	
l3243:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),4	;volatile
	line	55
	clrf	(readI2C@i)
	
l434:	
	line	56
	bsf	(7),3	;volatile
	line	57
	
l3249:	
	fcall	_delayI2C
	line	58
	
l3251:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(7),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_readI2C+0)+0
	movf	(readI2C@i),w
	sublw	07h
	addlw	1
	goto	u3544
u3545:
	clrc
	rlf	(??_readI2C+0)+0,f
u3544:
	addlw	-1
	skipz
	goto	u3545
	movf	0+(??_readI2C+0)+0,w
	movwf	(??_readI2C+1)+0
	movf	(??_readI2C+1)+0,w
	iorwf	(readI2C@ret),f
	line	59
	
l3253:	
	bcf	(7),3	;volatile
	line	55
	
l3255:	
	movlw	low(01h)
	movwf	(??_readI2C+0)+0
	movf	(??_readI2C+0)+0,w
	addwf	(readI2C@i),f
	
l3257:	
	movlw	low(08h)
	subwf	(readI2C@i),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l434
u3550:
	
l435:	
	line	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	62
	
l3259:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((readI2C@ack)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l436
u3560:
	
l3261:	
	bcf	(7),4	;volatile
	goto	l3263
	line	63
	
l436:	
	bsf	(7),4	;volatile
	line	64
	
l3263:	
	fcall	_delayI2C
	line	65
	
l3265:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	66
	fcall	_delayI2C
	line	67
	
l3267:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	68
	
l3269:	
	movf	(readI2C@ret),w
	line	69
	
l438:	
	return
	opt callstack 0
GLOBAL	__end_of_readI2C
	__end_of_readI2C:
	signat	_readI2C,4217
	global	_delayI2C

;; *************** function _delayI2C *****************
;; Defined at:
;;		line 4 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   25[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;;		_readI2C
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext9
__ptext9:	;psect for function _delayI2C
psect	text9
	file	"i2c.c"
	line	4
	global	__size_of_delayI2C
	__size_of_delayI2C	equ	__end_of_delayI2C-_delayI2C
	
_delayI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _delayI2C: [wreg+status,2+btemp+1]
	line	5
	
l3171:	
	clrf	(delayI2C@i)
	clrf	(delayI2C@i+1)
	
l3177:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delayI2C@i),f
	skipnc
	incf	(delayI2C@i+1),f
	movlw	0
	addwf	(delayI2C@i+1),f
	
l3179:	
	movf	(delayI2C@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3495
	movlw	05h
	subwf	(delayI2C@i),w
u3495:

	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3177
u3490:
	line	6
	
l417:	
	return
	opt callstack 0
GLOBAL	__end_of_delayI2C
	__end_of_delayI2C:
	signat	_delayI2C,89
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2   25[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), strADC(11), 
;; Auto vars:     Size  Location     Type
;;  cp              2   27[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), strADC(11), 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
global __ptext10
__ptext10:	;psect for function _strlen
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	callstack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
	line	8
	
l4023:	
		movf	(strlen@s),w
	movwf	(strlen@cp)
movf	(strlen@s+1),w
movwf	(strlen@cp+1)

	line	9
	goto	l4027
	line	10
	
l4025:	
	movlw	01h
	addwf	(strlen@cp),f
	skipnc
	incf	(strlen@cp+1),f
	movlw	0
	addwf	(strlen@cp+1),f
	line	9
	
l4027:	
	movf	(strlen@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strlen@cp+1),0
	bcf	status,7
	movf	(indf),w
	btfss	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l4025
u4840:
	line	12
	
l4029:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	movf	(strlen@s+1),w
	skipc
	incf	(strlen@s+1),w
	subwf	(strlen@cp+1),w
	movwf	1+(?_strlen)
	line	13
	
l1019:	
	return
	opt callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> main@strOld(11), 
;;  from            1   25[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), 
;; Auto vars:     Size  Location     Type
;;  to              1   27[BANK0 ] PTR unsigned char 
;;		 -> main@strOld(11), 
;;  cp              1   28[BANK0 ] PTR unsigned char 
;;		 -> main@strOld(11), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext11
__ptext11:	;psect for function _strcpy
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
	line	8
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
;incstack = 0
	opt	callstack 4
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0]
	movwf	(strcpy@to)
	line	18
	
l3785:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l3789
	line	20
	
l3787:	
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@cp),f
	line	21
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@from),f
	line	19
	
l3789:	
	movf	(strcpy@from),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movf	(??_strcpy+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l3787
u4540:
	line	24
	
l1013:	
	return
	opt callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2   25[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), main@code(5), 
;;  s2              1   27[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), main@pass(5), 
;; Auto vars:     Size  Location     Type
;;  r               1   31[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext12
__ptext12:	;psect for function _strcmp
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
;incstack = 0
	opt	callstack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
	line	37
	
l4009:	
	goto	l4015
	line	38
	
l4011:	
	movlw	01h
	addwf	(strcmp@s1),f
	skipnc
	incf	(strcmp@s1+1),f
	movlw	0
	addwf	(strcmp@s1+1),f
	line	39
	
l4013:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	line	37
	
l4015:	
	movf	(strcmp@s2),w
	movwf	fsr
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s1),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcmp@s1+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+0)+0,w
	subwf	(??_strcmp+1)+0,w
	movwf	(??_strcmp+2)+0
	movf	(??_strcmp+2)+0,w
	movwf	(strcmp@r)
	movf	(((strcmp@r))),w
	btfss	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l4019
u4820:
	
l4017:	
	movf	(strcmp@s1),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcmp@s1+1),0
	bcf	status,7
	movf	(indf),w
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4011
u4830:
	line	41
	
l4019:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	42
	
l1007:	
	return
	opt callstack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   17[BANK1 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               2   19[BANK1 ] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(37), STR_8(9), STR_2(37), 
;;		 -> STR_1(38), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  val             2   33[BANK1 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   35[BANK1 ] unsigned char 
;;  prec            1   32[BANK1 ] char 
;;  flag            1   31[BANK1 ] unsigned char 
;;  ap              1   30[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   17[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0      10       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      19       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext13
__ptext13:	;psect for function _sprintf
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
l3595:	
	movlw	(low(?_sprintf|((0x0)<<8)+04h))&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	553
	goto	l3647
	line	555
	
l3597:	
		movlw	37
	xorwf	((sprintf@c)^080h),w
	btfsc	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l3603
u4370:
	line	558
	
l3599:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3601:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	559
	goto	l3647
	line	565
	
l3603:	
	clrf	(sprintf@flag)^080h
	line	661
	
l3607:	
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3649
	xorlw	100^0	; case 100
	skipnz
	goto	l3609
	xorlw	105^100	; case 105
	skipnz
	goto	l3609
	goto	l3647
	opt asmopt_pop

	line	1285
	
l3609:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)^080h
	
l3611:	
	movlw	low(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1287
	
l3613:	
	btfss	(sprintf@val+1)^080h,7
	goto	u4381
	goto	u4380
u4381:
	goto	l3619
u4380:
	line	1288
	
l3615:	
	movlw	low(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1289
	
l3617:	
	comf	(sprintf@val)^080h,f
	comf	(sprintf@val+1)^080h,f
	incf	(sprintf@val)^080h,f
	skipnz
	incf	(sprintf@val+1)^080h,f
	line	1331
	
l3619:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1332
	
l3625:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+1)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+1)^080h,w
	skipz
	goto	u4395
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val)^080h,w
u4395:
	skipnc
	goto	u4391
	goto	u4390
u4391:
	goto	l3629
u4390:
	goto	l3631
	line	1331
	
l3629:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
		movlw	5
	xorwf	((sprintf@c)^080h),w
	btfss	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l3625
u4400:
	line	1464
	
l3631:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l3637
u4410:
	line	1465
	
l3633:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3635:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1498
	
l3637:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1500
	goto	l3645
	line	1515
	
l3639:	
	movlw	0Ah
	movwf	(___lwmod@divisor)^080h
	movlw	0
	movwf	((___lwmod@divisor)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor+1)^080h
	movf	(sprintf@val+1)^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(sprintf@val)^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	movwf	(___lwmod@dividend+1)^080h
	movf	(0+(?___lwdiv))^080h,w
	movwf	(___lwmod@dividend)^080h
	fcall	___lwmod
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	movwf	(sprintf@c)^080h
	line	1550
	
l3641:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3643:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1500
	
l3645:	
	movlw	low(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
		incf	(((sprintf@prec)^080h)),w
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l3639
u4420:
	line	553
	
l3647:	
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+2)^080h+0
	movf	(??_sprintf+2)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l3597
u4430:
	line	1564
	
l3649:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	clrf	indf
	line	1567
	
l572:	
	return
	opt callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   11[BANK1 ] unsigned int 
;;  dividend        2   13[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   16[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   11[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext14
__ptext14:	;psect for function ___lwmod
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l3573:	
	movf	((___lwmod@divisor)^080h),w
iorwf	((___lwmod@divisor+1)^080h),w
	btfsc	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l3591
u4310:
	line	13
	
l3575:	
	clrf	(___lwmod@counter)^080h
	incf	(___lwmod@counter)^080h,f
	line	14
	goto	l3581
	line	15
	
l3577:	
	movlw	01h
	
u4325:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4325
	line	16
	
l3579:	
	movlw	low(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	line	14
	
l3581:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l3577
u4330:
	line	19
	
l3583:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u4345
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u4345:
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l3587
u4340:
	line	20
	
l3585:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	line	21
	
l3587:	
	movlw	01h
	
u4355:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4355
	line	22
	
l3589:	
	movlw	01h
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l3583
u4360:
	line	24
	
l3591:	
	movf	(___lwmod@dividend+1)^080h,w
	movwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	movwf	(?___lwmod)^080h
	line	25
	
l994:	
	return
	opt callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK1 ] unsigned int 
;;  dividend        2    6[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK1 ] unsigned int 
;;  counter         1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       7       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext15
__ptext15:	;psect for function ___lwdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l3547:	
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	14
	
l3549:	
	movf	((___lwdiv@divisor)^080h),w
iorwf	((___lwdiv@divisor+1)^080h),w
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l3569
u4240:
	line	15
	
l3551:	
	clrf	(___lwdiv@counter)^080h
	incf	(___lwdiv@counter)^080h,f
	line	16
	goto	l3557
	line	17
	
l3553:	
	movlw	01h
	
u4255:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4255
	line	18
	
l3555:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___lwdiv@counter)^080h,f
	line	16
	
l3557:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l3553
u4260:
	line	21
	
l3559:	
	movlw	01h
	
u4275:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u4275
	line	22
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u4285
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u4285:
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l3565
u4280:
	line	23
	
l3561:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	24
	
l3563:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	line	26
	
l3565:	
	movlw	01h
	
u4295:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4295
	line	27
	
l3567:	
	movlw	01h
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l3559
u4300:
	line	29
	
l3569:	
	movf	(___lwdiv@quotient+1)^080h,w
	movwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	movwf	(?___lwdiv)^080h
	line	30
	
l984:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_readUART

;; *************** function _readUART *****************
;; Defined at:
;;		line 45 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@strConfig1(1), 
;; Auto vars:     Size  Location     Type
;;  buf             1   27[BANK0 ] PTR unsigned char 
;;		 -> main@strConfig1(1), 
;;  i               2   29[BANK0 ] unsigned int 
;;  tmp             1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_getUART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	45
global __ptext16
__ptext16:	;psect for function _readUART
psect	text16
	file	"serial.c"
	line	45
	global	__size_of_readUART
	__size_of_readUART	equ	__end_of_readUART-_readUART
	
_readUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _readUART: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(readUART@buf)
	line	46
	
l3813:	
	line	47
	
l3815:	
	clrf	(readUART@i)
	clrf	(readUART@i+1)
	line	48
	clrf	(readUART@i)
	clrf	(readUART@i+1)
	line	49
	
l3821:	
	fcall	_getUART
	movwf	(??_readUART+0)+0
	movf	(??_readUART+0)+0,w
	movwf	(readUART@tmp)
	line	50
	
l3823:	
	bcf	(12),5	;volatile
	line	52
	
l3825:	
	movf	((readUART@tmp)),w
	btfsc	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l3837
u4580:
	
l3827:	
		movlw	10
	xorwf	((readUART@tmp)),w
	btfsc	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l3837
u4590:
	
l3829:	
		movlw	13
	xorwf	((readUART@tmp)),w
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l3831
u4600:
	goto	l3837
	line	53
	
l3831:	
	movf	(readUART@tmp),w
	movwf	(??_readUART+0)+0
	movf	(readUART@i),w
	addwf	(readUART@buf),w
	movwf	(??_readUART+1)+0
	movf	0+(??_readUART+1)+0,w
	movwf	fsr0
	movf	(??_readUART+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	48
	
l3833:	
	movlw	01h
	addwf	(readUART@i),f
	skipnc
	incf	(readUART@i+1),f
	movlw	0
	addwf	(readUART@i+1),f
	
l3835:	
	movf	((readUART@i)),w
iorwf	((readUART@i+1)),w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l3821
u4610:
	line	55
	
l3837:	
	movf	(readUART@i),w
	addwf	(readUART@buf),w
	movwf	(??_readUART+0)+0
	movf	0+(??_readUART+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	56
	
l300:	
	return
	opt callstack 0
GLOBAL	__end_of_readUART
	__end_of_readUART:
	signat	_readUART,4217
	global	_getUART

;; *************** function _getUART *****************
;; Defined at:
;;		line 39 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readUART
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext17
__ptext17:	;psect for function _getUART
psect	text17
	file	"serial.c"
	line	39
	global	__size_of_getUART
	__size_of_getUART	equ	__end_of_getUART-_getUART
	
_getUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _getUART: [wreg]
	line	40
	
l3305:	
	
l289:	
	btfss	(12),5	;volatile
	goto	u3611
	goto	u3610
u3611:
	goto	l289
u3610:
	line	41
	
l3307:	
	movf	(26),w	;volatile
	line	42
	
l292:	
	return
	opt callstack 0
GLOBAL	__end_of_getUART
	__end_of_getUART:
	signat	_getUART,89
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 14 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       7       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	14
global __ptext18
__ptext18:	;psect for function _readADC
psect	text18
	file	"adc.c"
	line	14
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	callstack 4
; Regs used in _readADC: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readADC@ch)
	line	15
	
l3753:	
	goto	l3763
	line	17
	
l3755:	
	movlw	low(01h)
	movwf	(31)	;volatile
	line	20
	goto	l180
	line	22
	
l3757:	
	movlw	low(09h)
	movwf	(31)	;volatile
	line	25
	goto	l180
	line	27
	
l3759:	
	movlw	low(011h)
	movwf	(31)	;volatile
	line	30
	goto	l180
	line	15
	
l3763:	
	movf	(readADC@ch),w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3755
	xorlw	1^0	; case 1
	skipnz
	goto	l3757
	xorlw	2^1	; case 2
	skipnz
	goto	l3759
	goto	l180
	opt asmopt_pop

	line	31
	
l180:	
	line	32
	bsf	(31),2	;volatile
	line	33
	
l183:	
	btfsc	(31),2	;volatile
	goto	u4501
	goto	u4500
u4501:
	goto	l183
u4500:
	line	34
	
l3765:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_readADC+0)+0
	movlw	06h
u4515:
	clrc
	rrf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u4515
	movf	0+(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	clrf	(??_readADC+1)+0+1
	movf	(30),w	;volatile
	movwf	(??_readADC+3)+0
	clrf	(??_readADC+3)+0+1
	clrc
	rlf	(??_readADC+3)+0,f
	rlf	(??_readADC+3)+1,f
	clrc
	rlf	(??_readADC+3)+0,f
	rlf	(??_readADC+3)+1,f
	movf	0+(??_readADC+1)+0,w
	iorwf	0+(??_readADC+3)+0,w
	movwf	(??_readADC+5)+0
	movf	1+(??_readADC+1)+0,w
	iorwf	1+(??_readADC+3)+0,w
	movwf	1+(??_readADC+5)+0
	movf	0+(??_readADC+5)+0,w
	movwf	(?_readADC)
	movf	1+(??_readADC+5)+0,w
	movwf	(?_readADC+1)
	line	35
	
l186:	
	return
	opt callstack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_printlnLCD

;; *************** function _printlnLCD *****************
;; Defined at:
;;		line 50 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2    0[BANK1 ] PTR const unsigned char 
;;		 -> STR_3(16), 
;;  str2            2    2[BANK1 ] PTR const unsigned char 
;;		 -> STR_4(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       4       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	50
global __ptext19
__ptext19:	;psect for function _printlnLCD
psect	text19
	file	"lcd.c"
	line	50
	global	__size_of_printlnLCD
	__size_of_printlnLCD	equ	__end_of_printlnLCD-_printlnLCD
	
_printlnLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l3673:	
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	52
	movlw	low(063h)
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	53
	
l3675:	
	bsf	status, 5	;RP0=1, select bank1
		movf	(printlnLCD@str1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strLCD@str)
	bsf	status, 5	;RP0=1, select bank1
movf	(printlnLCD@str1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	54
	
l3677:	
	movlw	low(063h)
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0C0h)
	fcall	_rsLCD
	line	55
	bsf	status, 5	;RP0=1, select bank1
		movf	(printlnLCD@str2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strLCD@str)
	bsf	status, 5	;RP0=1, select bank1
movf	(printlnLCD@str2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	56
	
l249:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnLCD
	__end_of_printlnLCD:
	signat	_printlnLCD,8313
	global	_printlnL2LCD

;; *************** function _printlnL2LCD *****************
;; Defined at:
;;		line 46 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2    0[BANK1 ] PTR const unsigned char 
;;		 -> strADC(11), STR_6(19), STR_5(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       2       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext20
__ptext20:	;psect for function _printlnL2LCD
psect	text20
	file	"lcd.c"
	line	46
	global	__size_of_printlnL2LCD
	__size_of_printlnL2LCD	equ	__end_of_printlnL2LCD-_printlnL2LCD
	
_printlnL2LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL2LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l3703:	
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printlnL2LCD+0)+0
	movf	(??_printlnL2LCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0C0h)
	fcall	_rsLCD
	line	48
	
l3705:	
	bsf	status, 5	;RP0=1, select bank1
		movf	(printlnL2LCD@str1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strLCD@str)
	bsf	status, 5	;RP0=1, select bank1
movf	(printlnL2LCD@str1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	49
	
l246:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL2LCD
	__end_of_printlnL2LCD:
	signat	_printlnL2LCD,4217
	global	_printlnL1LCD

;; *************** function _printlnL1LCD *****************
;; Defined at:
;;		line 42 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2    0[BANK1 ] PTR const unsigned char 
;;		 -> STR_9(14), STR_7(14), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       2       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext21
__ptext21:	;psect for function _printlnL1LCD
psect	text21
	file	"lcd.c"
	line	42
	global	__size_of_printlnL1LCD
	__size_of_printlnL1LCD	equ	__end_of_printlnL1LCD-_printlnL1LCD
	
_printlnL1LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL1LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l3749:	
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_printlnL1LCD+0)+0
	movf	(??_printlnL1LCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	44
	
l3751:	
	bsf	status, 5	;RP0=1, select bank1
		movf	(printlnL1LCD@str1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strLCD@str)
	bsf	status, 5	;RP0=1, select bank1
movf	(printlnL1LCD@str1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	45
	
l243:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL1LCD
	__end_of_printlnL1LCD:
	signat	_printlnL1LCD,4217
	global	_strLCD

;; *************** function _strLCD *****************
;; Defined at:
;;		line 36 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str             2   33[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(14), strADC(11), STR_7(14), STR_6(19), 
;;		 -> STR_5(17), STR_4(6), STR_3(16), 
;; Auto vars:     Size  Location     Type
;;  i               1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_rsLCD
;; This function is called by:
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext22
__ptext22:	;psect for function _strLCD
psect	text22
	file	"lcd.c"
	line	36
	global	__size_of_strLCD
	__size_of_strLCD	equ	__end_of_strLCD-_strLCD
	
_strLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _strLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l3295:	
	clrf	(strLCD@i)
	line	38
	goto	l3301
	
l3297:	
	movlw	low(064h)
	movwf	(??_strLCD+0)+0
	movf	(??_strLCD+0)+0,w
	movwf	(rsLCD@string)
	movf	(strLCD@i),w
	addwf	(strLCD@str),w
	movwf	fsr0
	movf	(strLCD@str+1),w
	skipnc
	incf	(strLCD@str+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_rsLCD
	
l3299:	
	movlw	low(01h)
	movwf	(??_strLCD+0)+0
	movf	(??_strLCD+0)+0,w
	addwf	(strLCD@i),f
	
l3301:	
	movf	(strLCD@i),w
	addwf	(strLCD@str),w
	movwf	fsr0
	movf	(strLCD@str+1),w
	skipnc
	incf	(strLCD@str+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l3297
u3590:
	line	39
	
l240:	
	return
	opt callstack 0
GLOBAL	__end_of_strLCD
	__end_of_strLCD:
	signat	_strLCD,4217
	global	_pressSwitch

;; *************** function _pressSwitch *****************
;; Defined at:
;;		line 54 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/B00
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_scanKeypad
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	54
global __ptext23
__ptext23:	;psect for function _pressSwitch
psect	text23
	file	"matricial_key.c"
	line	54
	global	__size_of_pressSwitch
	__size_of_pressSwitch	equ	__end_of_pressSwitch-_pressSwitch
	
_pressSwitch:	
;incstack = 0
	opt	callstack 3
; Regs used in _pressSwitch: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l3679:	
	movlw	low(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pressSwitch+0)+0
	movf	(??_pressSwitch+0)+0,w
	movwf	(pressSwitch@key)
	line	56
	goto	l3683
	line	57
	
l3681:	
	fcall	_scanKeypad
	movwf	(??_pressSwitch+0)+0
	movf	(??_pressSwitch+0)+0,w
	movwf	(pressSwitch@key)
	line	56
	
l3683:	
		movlw	120
	xorwf	((pressSwitch@key)),w
	btfsc	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l3681
u4450:
	line	58
	
l3685:	
	movf	(pressSwitch@key),w
	line	59
	
l384:	
	return
	opt callstack 0
GLOBAL	__end_of_pressSwitch
	__end_of_pressSwitch:
	signat	_pressSwitch,89
	global	_scanKeypad

;; *************** function _scanKeypad *****************
;; Defined at:
;;		line 26 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   31[BANK0 ] int 
;;  i               2   29[BANK0 ] int 
;;  i               2   27[BANK0 ] int 
;;  i               2   25[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pressSwitch
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext24
__ptext24:	;psect for function _scanKeypad
psect	text24
	file	"matricial_key.c"
	line	26
	global	__size_of_scanKeypad
	__size_of_scanKeypad	equ	__end_of_scanKeypad-_scanKeypad
	
_scanKeypad:	
;incstack = 0
	opt	callstack 3
; Regs used in _scanKeypad: [wreg+status,2+btemp+1]
	line	27
	
l3311:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),3	;volatile
	bsf	(8),2	;volatile
	bsf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	28
	
l3313:	
	clrf	(scanKeypad@i)
	clrf	(scanKeypad@i+1)
	
l3319:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i),f
	skipnc
	incf	(scanKeypad@i+1),f
	movlw	0
	addwf	(scanKeypad@i+1),f
	
l3321:	
	movf	(scanKeypad@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3625
	movlw	05h
	subwf	(scanKeypad@i),w
u3625:

	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l3319
u3620:
	
l315:	
	line	29
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3631
	goto	u3630
u3631:
	goto	l316
u3630:
	
l3323:	
	btfsc	(8),3	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l316
u3640:
	
l317:	
	btfss	(6),0	;volatile
	goto	u3651
	goto	u3650
u3651:
	goto	l317
u3650:
	
l3327:	
	movlw	low(031h)
	goto	l320
	line	30
	
l316:	
	btfsc	(6),1	;volatile
	goto	u3661
	goto	u3660
u3661:
	goto	l322
u3660:
	
l3333:	
	btfsc	(8),3	;volatile
	goto	u3671
	goto	u3670
u3671:
	goto	l322
u3670:
	
l323:	
	btfss	(6),1	;volatile
	goto	u3681
	goto	u3680
u3681:
	goto	l323
u3680:
	
l3337:	
	movlw	low(032h)
	goto	l320
	line	31
	
l322:	
	btfsc	(6),2	;volatile
	goto	u3691
	goto	u3690
u3691:
	goto	l321
u3690:
	
l3343:	
	btfsc	(8),3	;volatile
	goto	u3701
	goto	u3700
u3701:
	goto	l321
u3700:
	
l328:	
	btfss	(6),2	;volatile
	goto	u3711
	goto	u3710
u3711:
	goto	l328
u3710:
	
l3347:	
	movlw	low(033h)
	goto	l320
	line	33
	
l321:	
	bsf	(8),3	;volatile
	bcf	(8),2	;volatile
	bsf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	34
	
l3351:	
	clrf	(scanKeypad@i_810)
	clrf	(scanKeypad@i_810+1)
	
l3357:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_810),f
	skipnc
	incf	(scanKeypad@i_810+1),f
	movlw	0
	addwf	(scanKeypad@i_810+1),f
	
l3359:	
	movf	(scanKeypad@i_810+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3725
	movlw	05h
	subwf	(scanKeypad@i_810),w
u3725:

	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3357
u3720:
	
l332:	
	line	35
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3731
	goto	u3730
u3731:
	goto	l333
u3730:
	
l3361:	
	btfsc	(8),2	;volatile
	goto	u3741
	goto	u3740
u3741:
	goto	l333
u3740:
	
l334:	
	btfss	(6),0	;volatile
	goto	u3751
	goto	u3750
u3751:
	goto	l334
u3750:
	
l3365:	
	movlw	low(034h)
	goto	l320
	line	36
	
l333:	
	btfsc	(6),1	;volatile
	goto	u3761
	goto	u3760
u3761:
	goto	l338
u3760:
	
l3371:	
	btfsc	(8),2	;volatile
	goto	u3771
	goto	u3770
u3771:
	goto	l338
u3770:
	
l339:	
	btfss	(6),1	;volatile
	goto	u3781
	goto	u3780
u3781:
	goto	l339
u3780:
	
l3375:	
	movlw	low(035h)
	goto	l320
	line	37
	
l338:	
	btfsc	(6),2	;volatile
	goto	u3791
	goto	u3790
u3791:
	goto	l337
u3790:
	
l3381:	
	btfsc	(8),2	;volatile
	goto	u3801
	goto	u3800
u3801:
	goto	l337
u3800:
	
l344:	
	btfss	(6),2	;volatile
	goto	u3811
	goto	u3810
u3811:
	goto	l344
u3810:
	
l3385:	
	movlw	low(036h)
	goto	l320
	line	39
	
l337:	
	bsf	(8),3	;volatile
	bsf	(8),2	;volatile
	bcf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	40
	
l3389:	
	clrf	(scanKeypad@i_811)
	clrf	(scanKeypad@i_811+1)
	
l3395:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_811),f
	skipnc
	incf	(scanKeypad@i_811+1),f
	movlw	0
	addwf	(scanKeypad@i_811+1),f
	
l3397:	
	movf	(scanKeypad@i_811+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	05h
	subwf	(scanKeypad@i_811),w
u3825:

	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l3395
u3820:
	
l348:	
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3831
	goto	u3830
u3831:
	goto	l349
u3830:
	
l3399:	
	btfsc	(8),1	;volatile
	goto	u3841
	goto	u3840
u3841:
	goto	l349
u3840:
	
l350:	
	btfss	(6),0	;volatile
	goto	u3851
	goto	u3850
u3851:
	goto	l350
u3850:
	
l3403:	
	movlw	low(037h)
	goto	l320
	line	42
	
l349:	
	btfsc	(6),1	;volatile
	goto	u3861
	goto	u3860
u3861:
	goto	l354
u3860:
	
l3409:	
	btfsc	(8),1	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l354
u3870:
	
l355:	
	btfss	(6),1	;volatile
	goto	u3881
	goto	u3880
u3881:
	goto	l355
u3880:
	
l3413:	
	movlw	low(038h)
	goto	l320
	line	43
	
l354:	
	btfsc	(6),2	;volatile
	goto	u3891
	goto	u3890
u3891:
	goto	l353
u3890:
	
l3419:	
	btfsc	(8),1	;volatile
	goto	u3901
	goto	u3900
u3901:
	goto	l353
u3900:
	
l360:	
	btfss	(6),2	;volatile
	goto	u3911
	goto	u3910
u3911:
	goto	l360
u3910:
	
l3423:	
	movlw	low(039h)
	goto	l320
	line	45
	
l353:	
	bsf	(8),3	;volatile
	bsf	(8),2	;volatile
	bsf	(8),1	;volatile
	bcf	(8),0	;volatile
	line	46
	
l3427:	
	clrf	(scanKeypad@i_812)
	clrf	(scanKeypad@i_812+1)
	
l3433:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_812),f
	skipnc
	incf	(scanKeypad@i_812+1),f
	movlw	0
	addwf	(scanKeypad@i_812+1),f
	
l3435:	
	movf	(scanKeypad@i_812+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3925
	movlw	05h
	subwf	(scanKeypad@i_812),w
u3925:

	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l3433
u3920:
	
l364:	
	line	47
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3931
	goto	u3930
u3931:
	goto	l365
u3930:
	
l3437:	
	btfsc	(8),0	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l365
u3940:
	
l366:	
	btfss	(6),0	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l366
u3950:
	
l3441:	
	movlw	low(02Ah)
	goto	l320
	line	48
	
l365:	
	btfsc	(6),1	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l370
u3960:
	
l3447:	
	btfsc	(8),0	;volatile
	goto	u3971
	goto	u3970
u3971:
	goto	l370
u3970:
	
l371:	
	btfss	(6),1	;volatile
	goto	u3981
	goto	u3980
u3981:
	goto	l371
u3980:
	
l3451:	
	movlw	low(030h)
	goto	l320
	line	49
	
l370:	
	btfsc	(6),2	;volatile
	goto	u3991
	goto	u3990
u3991:
	goto	l3465
u3990:
	
l3457:	
	btfsc	(8),0	;volatile
	goto	u4001
	goto	u4000
u4001:
	goto	l3465
u4000:
	
l376:	
	btfss	(6),2	;volatile
	goto	u4011
	goto	u4010
u4011:
	goto	l376
u4010:
	
l3461:	
	movlw	low(023h)
	goto	l320
	line	51
	
l3465:	
	movlw	low(078h)
	line	52
	
l320:	
	return
	opt callstack 0
GLOBAL	__end_of_scanKeypad
	__end_of_scanKeypad:
	signat	_scanKeypad,89
	global	_initUART

;; *************** function _initUART *****************
;; Defined at:
;;		line 5 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	5
global __ptext25
__ptext25:	;psect for function _initUART
psect	text25
	file	"serial.c"
	line	5
	global	__size_of_initUART
	__size_of_initUART	equ	__end_of_initUART-_initUART
	
_initUART:	
;incstack = 0
	opt	callstack 4
; Regs used in _initUART: [wreg]
	line	7
	
l3707:	
	movlw	low(019h)
	movwf	(153)^080h	;volatile
	line	8
	
l3709:	
	bsf	(135)^080h,7	;volatile
	line	9
	
l3711:	
	bcf	(135)^080h,6	;volatile
	line	11
	
l3713:	
	bcf	(152)^080h,6	;volatile
	line	12
	
l3715:	
	bsf	(152)^080h,5	;volatile
	line	13
	
l3717:	
	bcf	(152)^080h,4	;volatile
	line	14
	
l3719:	
	bsf	(152)^080h,2	;volatile
	line	16
	
l3721:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24),7	;volatile
	line	17
	
l3723:	
	bcf	(24),6	;volatile
	line	18
	
l3725:	
	bsf	(24),4	;volatile
	line	20
	
l3727:	
	bcf	(12),5	;volatile
	line	21
	
l274:	
	return
	opt callstack 0
GLOBAL	__end_of_initUART
	__end_of_initUART:
	signat	_initUART,89
	global	_initTimer1

;; *************** function _initTimer1 *****************
;; Defined at:
;;		line 214 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	214
global __ptext26
__ptext26:	;psect for function _initTimer1
psect	text26
	file	"main.c"
	line	214
	global	__size_of_initTimer1
	__size_of_initTimer1	equ	__end_of_initTimer1-_initTimer1
	
_initTimer1:	
;incstack = 0
	opt	callstack 4
; Regs used in _initTimer1: []
	line	215
	
l3745:	
	bsf	(135)^080h,0	;volatile
	line	216
	bcf	status, 5	;RP0=0, select bank0
	bsf	(16),5	;volatile
	line	217
	bsf	(16),4	;volatile
	line	218
	bcf	(16),3	;volatile
	line	219
	bcf	(16),2	;volatile
	line	220
	bsf	(16),1	;volatile
	line	221
	bsf	(16),0	;volatile
	line	222
	
l162:	
	return
	opt callstack 0
GLOBAL	__end_of_initTimer1
	__end_of_initTimer1:
	signat	_initTimer1,89
	global	_initTimer0

;; *************** function _initTimer0 *****************
;; Defined at:
;;		line 204 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	204
global __ptext27
__ptext27:	;psect for function _initTimer0
psect	text27
	file	"main.c"
	line	204
	global	__size_of_initTimer0
	__size_of_initTimer0	equ	__end_of_initTimer0-_initTimer0
	
_initTimer0:	
;incstack = 0
	opt	callstack 4
; Regs used in _initTimer0: []
	line	205
	
l3743:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(129)^080h,5	;volatile
	line	206
	bcf	(129)^080h,5	;volatile
	line	207
	bcf	(129)^080h,3	;volatile
	line	208
	bsf	(129)^080h,2	;volatile
	line	209
	bsf	(129)^080h,1	;volatile
	line	210
	bsf	(129)^080h,0	;volatile
	line	211
	bcf	(11),2	;volatile
	line	212
	
l159:	
	return
	opt callstack 0
GLOBAL	__end_of_initTimer0
	__end_of_initTimer0:
	signat	_initTimer0,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 5 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  freq            2   34[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	5
global __ptext28
__ptext28:	;psect for function _initPWM
psect	text28
	file	"pwm.c"
	line	5
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	callstack 3
; Regs used in _initPWM: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l3731:	
	movf	(initPWM@freq+1),w
	movwf	(??_initPWM+0)+0+1
	movf	(initPWM@freq),w
	movwf	(??_initPWM+0)+0
	clrc
	rlf	(??_initPWM+0)+0,f
	rlf	(??_initPWM+0)+1,f
	clrc
	rlf	(??_initPWM+0)+0,f
	rlf	(??_initPWM+0)+1,f
	clrc
	rlf	(??_initPWM+0)+0,f
	rlf	(??_initPWM+0)+1,f
	clrc
	rlf	(??_initPWM+0)+0,f
	rlf	(??_initPWM+0)+1,f
	movf	0+(??_initPWM+0)+0,w
	movwf	(___aldiv@divisor)
	movf	1+(??_initPWM+0)+0,w
	movwf	((___aldiv@divisor))+1
	clrf	2+((___aldiv@divisor))
	clrf	3+((___aldiv@divisor))
	movlw	0
	movwf	(___aldiv@dividend+3)
	movlw	03Dh
	movwf	(___aldiv@dividend+2)
	movlw	09h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(0+(?___aldiv)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	8
	
l3733:	
	bcf	(135)^080h,2	;volatile
	line	9
	
l3735:	
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	10
	
l3737:	
	bsf	(18),2	;volatile
	line	12
	
l3739:	
	bcf	(12),1	;volatile
	line	13
	
l399:	
	btfss	(12),1	;volatile
	goto	u4481
	goto	u4480
u4481:
	goto	l399
u4480:
	
l401:	
	line	14
	bcf	(12),1	;volatile
	line	15
	
l402:	
	btfss	(12),1	;volatile
	goto	u4491
	goto	u4490
u4491:
	goto	l402
u4490:
	line	16
	
l405:	
	return
	opt callstack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,4217
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   25[BANK0 ] long 
;;  dividend        4   29[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK1 ] long 
;;  sign            1    1[BANK1 ] unsigned char 
;;  counter         1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   25[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       6       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initPWM
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext29
__ptext29:	;psect for function ___aldiv
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l3507:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___aldiv@sign)^080h
	line	14
	
l3509:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u4141
	goto	u4140
u4141:
	goto	l647
u4140:
	line	15
	
l3511:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	16
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___aldiv@sign)^080h
	incf	(___aldiv@sign)^080h,f
	line	17
	
l647:	
	line	18
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___aldiv@dividend+3),7
	goto	u4151
	goto	u4150
u4151:
	goto	l3517
u4150:
	line	19
	
l3513:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	20
	
l3515:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(___aldiv@sign)^080h,f
	line	22
	
l3517:	
	movlw	high highword(0)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___aldiv@quotient+3)^080h
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)^080h
	movlw	high(0)
	movwf	(___aldiv@quotient+1)^080h
	movlw	low(0)
	movwf	(___aldiv@quotient)^080h

	line	23
	
l3519:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u4161
	goto	u4160
u4161:
	goto	l3539
u4160:
	line	24
	
l3521:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___aldiv@counter)^080h
	incf	(___aldiv@counter)^080h,f
	line	25
	goto	l3525
	line	26
	
l3523:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u4175:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u4175
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___aldiv@counter)^080h,f
	line	25
	
l3525:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l3523
u4180:
	line	30
	
l3527:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___aldiv+0)+0
u4195:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	rlf	(___aldiv@quotient)^080h,f
	rlf	(___aldiv@quotient+1)^080h,f
	rlf	(___aldiv@quotient+2)^080h,f
	rlf	(___aldiv@quotient+3)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(??___aldiv+0)+0
	goto	u4195
	line	31
	
l3529:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u4205
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u4205
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u4205
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u4205:
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l3535
u4200:
	line	32
	
l3531:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	33
	
l3533:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(___aldiv@quotient)^080h+(0/8),(0)&7
	line	35
	
l3535:	
	movlw	01h
u4215:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u4215

	line	36
	
l3537:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(___aldiv@counter)^080h,f
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l3527
u4220:
	line	38
	
l3539:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((___aldiv@sign)^080h),w
	btfsc	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l3543
u4230:
	line	39
	
l3541:	
	comf	(___aldiv@quotient)^080h,f
	comf	(___aldiv@quotient+1)^080h,f
	comf	(___aldiv@quotient+2)^080h,f
	comf	(___aldiv@quotient+3)^080h,f
	incf	(___aldiv@quotient)^080h,f
	skipnz
	incf	(___aldiv@quotient+1)^080h,f
	skipnz
	incf	(___aldiv@quotient+2)^080h,f
	skipnz
	incf	(___aldiv@quotient+3)^080h,f
	line	40
	
l3543:	
	movf	(___aldiv@quotient+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___aldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___aldiv@quotient+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___aldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___aldiv@quotient+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___aldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___aldiv@quotient)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___aldiv)

	line	41
	
l657:	
	return
	opt callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_initMatricialKey

;; *************** function _initMatricialKey *****************
;; Defined at:
;;		line 5 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	5
global __ptext30
__ptext30:	;psect for function _initMatricialKey
psect	text30
	file	"matricial_key.c"
	line	5
	global	__size_of_initMatricialKey
	__size_of_initMatricialKey	equ	__end_of_initMatricialKey-_initMatricialKey
	
_initMatricialKey:	
;incstack = 0
	opt	callstack 4
; Regs used in _initMatricialKey: []
	line	6
	
l3671:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(136)^080h,0	;volatile
	line	7
	bcf	(136)^080h,1	;volatile
	line	8
	bcf	(136)^080h,2	;volatile
	line	9
	bcf	(136)^080h,3	;volatile
	line	11
	bsf	(134)^080h,0	;volatile
	line	12
	bsf	(134)^080h,1	;volatile
	line	13
	bsf	(134)^080h,2	;volatile
	line	15
	bcf	status, 5	;RP0=0, select bank0
	bsf	(8),3	;volatile
	line	16
	bsf	(8),2	;volatile
	line	17
	bsf	(8),1	;volatile
	line	18
	bsf	(8),0	;volatile
	line	20
	bsf	(6),0	;volatile
	line	21
	bsf	(6),1	;volatile
	line	22
	bsf	(6),2	;volatile
	line	23
	
l311:	
	return
	opt callstack 0
GLOBAL	__end_of_initMatricialKey
	__end_of_initMatricialKey:
	signat	_initMatricialKey,89
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 4 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_ms
;;		_rsLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	4
global __ptext31
__ptext31:	;psect for function _initLCD
psect	text31
	file	"lcd.c"
	line	4
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	callstack 2
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	5
	
l3665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(9),1	;volatile
	line	6
	bcf	(9),2	;volatile
	line	7
	
l3667:	
	movlw	014h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	8
	
l3669:	
	bsf	(9),1	;volatile
	line	10
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	11
	movlw	05h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	12
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	13
	movlw	01h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	14
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	15
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(08h)
	fcall	_rsLCD
	line	16
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0Fh)
	fcall	_rsLCD
	line	17
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	18
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	19
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	20
	
l229:	
	return
	opt callstack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,89
	global	_rsLCD

;; *************** function _rsLCD *****************
;; Defined at:
;;		line 23 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;;  string          1   31[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;;		_initLCD
;;		_strLCD
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext32
__ptext32:	;psect for function _rsLCD
psect	text32
	file	"lcd.c"
	line	23
	global	__size_of_rsLCD
	__size_of_rsLCD	equ	__end_of_rsLCD-_rsLCD
	
_rsLCD:	
;incstack = 0
	opt	callstack 3
; Regs used in _rsLCD: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rsLCD@val)
	line	24
	
l3181:	
	bsf	(9),1	;volatile
	line	25
	
l3183:	
	movf	(rsLCD@val),w
	movwf	(8)	;volatile
	line	26
	
l3185:	
		movlw	99
	xorwf	((rsLCD@string)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3189
u3500:
	
l3187:	
	bcf	(9),2	;volatile
	line	27
	
l3189:	
		movlw	100
	xorwf	((rsLCD@string)),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3193
u3510:
	
l3191:	
	bsf	(9),2	;volatile
	line	28
	
l3193:	
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	29
	
l3195:	
	bcf	(9),1	;volatile
	line	30
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	31
	
l3197:	
	bsf	(9),1	;volatile
	line	32
	
l234:	
	return
	opt callstack 0
GLOBAL	__end_of_rsLCD
	__end_of_rsLCD:
	signat	_rsLCD,8313
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 59 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             2   25[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   28[BANK0 ] unsigned int 
;;  j               1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_initLCD
;;		_rsLCD
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext33
__ptext33:	;psect for function _delay_ms
psect	text33
	file	"lcd.c"
	line	59
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	callstack 3
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	62
	
l3157:	
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l252
	line	63
	
l3159:	
	clrf	(delay_ms@j)
	
l254:	
	line	65
# 65 "lcd.c"
NOP ;# 
	line	66
# 66 "lcd.c"
NOP ;# 
	line	67
# 67 "lcd.c"
NOP ;# 
	line	68
# 68 "lcd.c"
NOP ;# 
	line	69
# 69 "lcd.c"
NOP ;# 
psect	text33
	line	63
	
l3165:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay_ms+0)+0
	movf	(??_delay_ms+0)+0,w
	addwf	(delay_ms@j),f
	
l3167:	
	movlw	low(0C8h)
	subwf	(delay_ms@j),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l254
u3470:
	line	62
	
l3169:	
	movlw	01h
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	0
	addwf	(delay_ms@i+1),f
	
l252:	
	movf	(delay_ms@val+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u3485
	movf	(delay_ms@val),w
	subwf	(delay_ms@i),w
u3485:
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3159
u3480:
	line	73
	
l257:	
	return
	opt callstack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_initISR

;; *************** function _initISR *****************
;; Defined at:
;;		line 196 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	196
global __ptext34
__ptext34:	;psect for function _initISR
psect	text34
	file	"main.c"
	line	196
	global	__size_of_initISR
	__size_of_initISR	equ	__end_of_initISR-_initISR
	
_initISR:	
;incstack = 0
	opt	callstack 4
; Regs used in _initISR: []
	line	197
	
l3747:	
	bsf	(11),7	;volatile
	line	198
	bsf	(11),5	;volatile
	line	199
	bsf	status, 5	;RP0=1, select bank1
	bsf	(140)^080h,0	;volatile
	line	200
	bsf	(11),6	;volatile
	line	201
	bsf	(11),4	;volatile
	line	202
	
l156:	
	return
	opt callstack 0
GLOBAL	__end_of_initISR
	__end_of_initISR:
	signat	_initISR,89
	global	_initI2C

;; *************** function _initI2C *****************
;; Defined at:
;;		line 8 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	8
global __ptext35
__ptext35:	;psect for function _initI2C
psect	text35
	file	"i2c.c"
	line	8
	global	__size_of_initI2C
	__size_of_initI2C	equ	__end_of_initI2C-_initI2C
	
_initI2C:	
;incstack = 0
	opt	callstack 4
; Regs used in _initI2C: []
	line	9
	
l3741:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),3	;volatile
	line	11
	bsf	(7),4	;volatile
	line	12
	
l420:	
	return
	opt callstack 0
GLOBAL	__end_of_initI2C
	__end_of_initI2C:
	signat	_initI2C,89
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 5 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	5
global __ptext36
__ptext36:	;psect for function _initADC
psect	text36
	file	"adc.c"
	line	5
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	callstack 4
; Regs used in _initADC: [wreg]
	line	6
	
l3729:	
	movlw	low(041h)
	movwf	(31)	;volatile
	line	9
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	11
	
l175:	
	return
	opt callstack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,89
	global	_dutyPWM

;; *************** function _dutyPWM *****************
;; Defined at:
;;		line 19 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1   20[BANK1 ] unsigned char 
;;  temp            2   21[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/B00
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	19
global __ptext37
__ptext37:	;psect for function _dutyPWM
psect	text37
	file	"pwm.c"
	line	19
	global	__size_of_dutyPWM
	__size_of_dutyPWM	equ	__end_of_dutyPWM-_dutyPWM
	
_dutyPWM:	
;incstack = 0
	opt	callstack 3
; Regs used in _dutyPWM: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 6	;RP1=0, select bank1
	movwf	(dutyPWM@d)^080h
	line	22
	
l3769:	
	movlw	0
	movwf	(___lldiv@divisor+3)^080h
	movlw	0
	movwf	(___lldiv@divisor+2)^080h
	movlw	0
	movwf	(___lldiv@divisor+1)^080h
	movlw	0FFh
	movwf	(___lldiv@divisor)^080h

	movf	(dutyPWM@d)^080h,w
	movwf	(??_dutyPWM+0)^080h+0
	clrf	(??_dutyPWM+0)^080h+0+1
	clrf	(??_dutyPWM+0)^080h+0+2
	clrf	(??_dutyPWM+0)^080h+0+3
	movf	3+(??_dutyPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	2+(??_dutyPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(??_dutyPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_dutyPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier)

	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	movwf	(??_dutyPWM+4)^080h+0
	clrf	(??_dutyPWM+4)^080h+0+1
	clrc
	rlf	(??_dutyPWM+4)^080h+0,f
	rlf	(??_dutyPWM+4)^080h+1,f
	clrc
	rlf	(??_dutyPWM+4)^080h+0,f
	rlf	(??_dutyPWM+4)^080h+1,f
	movlw	03h
	iorwf	0+(??_dutyPWM+4)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplicand)
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	iorwf	1+(??_dutyPWM+4)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(___lmul@multiplicand)
	clrf	(___lmul@multiplicand)+2
	btfsc	(___lmul@multiplicand)+1,7
	decf	2+(___lmul@multiplicand),f
	movf	(___lmul@multiplicand)+2,w
	movwf	3+(___lmul@multiplicand)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lldiv@dividend+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lldiv@dividend+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lldiv@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lldiv@dividend)^080h

	fcall	___lldiv
	movf	(1+(?___lldiv))^080h,w
	movwf	(dutyPWM@temp+1)^080h
	movf	(0+(?___lldiv))^080h,w
	movwf	(dutyPWM@temp)^080h
	line	23
	
l3771:	
	movf	(dutyPWM@temp+1)^080h,w
	movwf	(??_dutyPWM+0)^080h+0+1
	movf	(dutyPWM@temp)^080h,w
	movwf	(??_dutyPWM+0)^080h+0
	clrc
	rrf	(??_dutyPWM+0)^080h+1,f
	rrf	(??_dutyPWM+0)^080h+0,f
	clrc
	rrf	(??_dutyPWM+0)^080h+1,f
	rrf	(??_dutyPWM+0)^080h+0,f
	movf	0+(??_dutyPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	24
	
l3773:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(dutyPWM@temp)^080h,w
	andlw	03h
	movwf	(??_dutyPWM+0)^080h+0
	movlw	(04h)-1
u4525:
	clrc
	rlf	(??_dutyPWM+0)^080h+0,f
	addlw	-1
	skipz
	goto	u4525
	clrc
	rlf	(??_dutyPWM+0)^080h+0,w
	iorlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	25
	
l408:	
	return
	opt callstack 0
GLOBAL	__end_of_dutyPWM
	__end_of_dutyPWM:
	signat	_dutyPWM,4217
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   25[BANK0 ] unsigned long 
;;  multiplicand    4   29[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   34[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   25[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dutyPWM
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
global __ptext38
__ptext38:	;psect for function ___lmul
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l3469:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l3471:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l3475
u4020:
	line	122
	
l3473:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4031
	addwf	(___lmul@product+1),f
u4031:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4032
	addwf	(___lmul@product+2),f
u4032:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4033
	addwf	(___lmul@product+3),f
u4033:

	line	123
	
l3475:	
	movlw	01h
	movwf	(??___lmul+0)+0
u4045:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u4045
	line	124
	
l3477:	
	movlw	01h
u4055:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u4055

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l3471
u4060:
	line	128
	
l3479:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l590:	
	return
	opt callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK1 ] unsigned long 
;;  dividend        4    4[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[BANK1 ] unsigned long 
;;  counter         1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dutyPWM
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
global __ptext39
__ptext39:	;psect for function ___lldiv
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	13
	
l3483:	
	movlw	high highword(0)
	movwf	(___lldiv@quotient+3)^080h
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)^080h
	movlw	high(0)
	movwf	(___lldiv@quotient+1)^080h
	movlw	low(0)
	movwf	(___lldiv@quotient)^080h

	line	14
	movf	(___lldiv@divisor+3)^080h,w
	iorwf	(___lldiv@divisor+2)^080h,w
	iorwf	(___lldiv@divisor+1)^080h,w
	iorwf	(___lldiv@divisor)^080h,w
	skipnz
	goto	u4071
	goto	u4070
u4071:
	goto	l3503
u4070:
	line	15
	
l3485:	
	clrf	(___lldiv@counter)^080h
	incf	(___lldiv@counter)^080h,f
	line	16
	goto	l3489
	line	17
	
l3487:	
	movlw	01h
	movwf	(??___lldiv+0)^080h+0
u4085:
	clrc
	rlf	(___lldiv@divisor)^080h,f
	rlf	(___lldiv@divisor+1)^080h,f
	rlf	(___lldiv@divisor+2)^080h,f
	rlf	(___lldiv@divisor+3)^080h,f
	decfsz	(??___lldiv+0)^080h+0
	goto	u4085
	line	18
	movlw	low(01h)
	movwf	(??___lldiv+0)^080h+0
	movf	(??___lldiv+0)^080h+0,w
	addwf	(___lldiv@counter)^080h,f
	line	16
	
l3489:	
	btfss	(___lldiv@divisor+3)^080h,(31)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3487
u4090:
	line	21
	
l3491:	
	movlw	01h
	movwf	(??___lldiv+0)^080h+0
u4105:
	clrc
	rlf	(___lldiv@quotient)^080h,f
	rlf	(___lldiv@quotient+1)^080h,f
	rlf	(___lldiv@quotient+2)^080h,f
	rlf	(___lldiv@quotient+3)^080h,f
	decfsz	(??___lldiv+0)^080h+0
	goto	u4105
	line	22
	
l3493:	
	movf	(___lldiv@divisor+3)^080h,w
	subwf	(___lldiv@dividend+3)^080h,w
	skipz
	goto	u4115
	movf	(___lldiv@divisor+2)^080h,w
	subwf	(___lldiv@dividend+2)^080h,w
	skipz
	goto	u4115
	movf	(___lldiv@divisor+1)^080h,w
	subwf	(___lldiv@dividend+1)^080h,w
	skipz
	goto	u4115
	movf	(___lldiv@divisor)^080h,w
	subwf	(___lldiv@dividend)^080h,w
u4115:
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l3499
u4110:
	line	23
	
l3495:	
	movf	(___lldiv@divisor)^080h,w
	subwf	(___lldiv@dividend)^080h,f
	movf	(___lldiv@divisor+1)^080h,w
	skipc
	incfsz	(___lldiv@divisor+1)^080h,w
	subwf	(___lldiv@dividend+1)^080h,f
	movf	(___lldiv@divisor+2)^080h,w
	skipc
	incfsz	(___lldiv@divisor+2)^080h,w
	subwf	(___lldiv@dividend+2)^080h,f
	movf	(___lldiv@divisor+3)^080h,w
	skipc
	incfsz	(___lldiv@divisor+3)^080h,w
	subwf	(___lldiv@dividend+3)^080h,f
	line	24
	
l3497:	
	bsf	(___lldiv@quotient)^080h+(0/8),(0)&7
	line	26
	
l3499:	
	movlw	01h
u4125:
	clrc
	rrf	(___lldiv@divisor+3)^080h,f
	rrf	(___lldiv@divisor+2)^080h,f
	rrf	(___lldiv@divisor+1)^080h,f
	rrf	(___lldiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4125

	line	27
	
l3501:	
	movlw	01h
	subwf	(___lldiv@counter)^080h,f
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l3491
u4130:
	line	29
	
l3503:	
	movf	(___lldiv@quotient+3)^080h,w
	movwf	(?___lldiv+3)^080h
	movf	(___lldiv@quotient+2)^080h,w
	movwf	(?___lldiv+2)^080h
	movf	(___lldiv@quotient+1)^080h,w
	movwf	(?___lldiv+1)^080h
	movf	(___lldiv@quotient)^080h,w
	movwf	(?___lldiv)^080h

	line	30
	
l612:	
	return
	opt callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK1 ] unsigned int 
;;  multiplicand    2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   35[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       4       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext40
__ptext40:	;psect for function ___wmul
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	callstack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3839:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l3841:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(___wmul@multiplier)^080h,(0)&7
	goto	u4621
	goto	u4620
u4621:
	goto	l576
u4620:
	line	46
	
l3843:	
	movf	(___wmul@multiplicand)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(___wmul@multiplicand+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(___wmul@product+1),f
	
l576:	
	line	47
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	
u4635:
	clrc
	rlf	(___wmul@multiplicand)^080h,f
	rlf	(___wmul@multiplicand+1)^080h,f
	addlw	-1
	skipz
	goto	u4635
	line	48
	
l3845:	
	movlw	01h
	
u4645:
	clrc
	rrf	(___wmul@multiplier+1)^080h,f
	rrf	(___wmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u4645
	line	49
	
l3847:	
	movf	((___wmul@multiplier)^080h),w
iorwf	((___wmul@multiplier+1)^080h),w
	btfss	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l3841
u4650:
	line	52
	
l3849:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___wmul@product+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___wmul+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(___wmul@product),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___wmul)^080h
	line	53
	
l578:	
	return
	opt callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 32 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_rsLCD
;;		i1_sprintf
;;		i1_writeUART
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	32
global __ptext41
__ptext41:	;psect for function _isr
psect	text41
	file	"main.c"
	line	32
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	callstack 1
; Regs used in _isr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+2)
	movf	fsr0,w
	movwf	(??_isr+3)
	movf	pclath,w
	movwf	(??_isr+4)
	movf	btemp+1,w
	movwf	(??_isr+5)
	ljmp	_isr
psect	text41
	line	34
	
i1l2949:	
	btfss	(11),2	;volatile
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l2983
u320_20:
	
i1l2951:	
	movf	((_run)),w
	btfsc	status,2
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l2983
u321_20:
	line	35
	
i1l2953:	
	bcf	(11),2	;volatile
	line	37
	
i1l2955:	
		movlw	14
	xorwf	((_nMSeconds)),w
iorwf	((_nMSeconds+1)),w
	btfss	status,2
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l2981
u322_20:
	line	38
	
i1l2957:	
	movf	(_tempWindV),w
	subwf	(14),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_tempWindV+1),w
	skipc
	incf	(_tempWindV+1),w
	subwf	(15),w	;volatile
	movwf	1+(??_isr+0)+0
	movf	0+(??_isr+0)+0,w
	movwf	(_windV)
	movf	1+(??_isr+0)+0,w
	movwf	(_windV+1)
	line	39
	
i1l2959:	
	movf	(15),w	;volatile
	movwf	(_tempWindV+1)
	movf	(14),w	;volatile
	movwf	(_tempWindV)
	line	40
	
i1l2961:	
		incf	((_oldPotP1)),w
	skipz
	goto	u323_20
	incf	((_oldPotP1+1)),w
	btfsc	status,2
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l2969
u323_20:
	
i1l2963:	
	movf	(_oldPotP1),w
	subwf	(_potP1),w
	movwf	(??_isr+0)+0
	movf	(_oldPotP1+1),w
	skipc
	incf	(_oldPotP1+1),w
	subwf	(_potP1+1),w
	movwf	1+(??_isr+0)+0
	movlw	0
	subwf	1+(??_isr+0)+0,w
	movlw	03Dh
	skipnz
	subwf	0+(??_isr+0)+0,w
	skipc
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l2969
u324_20:
	
i1l2965:	
	movf	(_potP1+1),w
	subwf	(_oldPotP1+1),w
	skipz
	goto	u325_25
	movf	(_potP1),w
	subwf	(_oldPotP1),w
u325_25:
	skipnc
	goto	u325_21
	goto	u325_20
u325_21:
	goto	i1l2969
u325_20:
	line	41
	
i1l2967:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1sprintf@sp)
	movlw	(0x1)
	movwf	(i1sprintf@sp+1)
	movlw	low(((STR_1)|8000h))
	movwf	(i1sprintf@f)
	movlw	high(((STR_1)|8000h))
	movwf	((i1sprintf@f))+1
	movf	(_tempC+1),w
	movwf	1+(?i1_sprintf)+04h
	movf	(_tempC),w
	movwf	0+(?i1_sprintf)+04h
	movf	(_windV+1),w
	movwf	1+(?i1_sprintf)+06h
	movf	(_windV),w
	movwf	0+(?i1_sprintf)+06h
	movf	(_potP2+1),w
	movwf	1+(?i1_sprintf)+08h
	movf	(_potP2),w
	movwf	0+(?i1_sprintf)+08h
	fcall	i1_sprintf
	line	42
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1writeUART@val)
	movlw	(0x1)
	movwf	(i1writeUART@val+1)
	fcall	i1_writeUART
	line	44
	
i1l2969:	
	movf	(_potP1+1),w
	movwf	(_oldPotP1+1)
	movf	(_potP1),w
	movwf	(_oldPotP1)
	line	45
	
i1l2971:	
	movlw	01h
	addwf	(_nSeconds),f
	skipnc
	incf	(_nSeconds+1),f
	movlw	0
	addwf	(_nSeconds+1),f
	line	46
	
i1l2973:	
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	48
	
i1l2975:	
		movlw	55
	xorwf	((_nSeconds)),w
iorwf	((_nSeconds+1)),w
	btfss	status,2
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l2983
u326_20:
	line	49
	
i1l2977:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1sprintf@sp)
	movlw	(0x1)
	movwf	(i1sprintf@sp+1)
	movlw	low(((STR_2)|8000h))
	movwf	(i1sprintf@f)
	movlw	high(((STR_2)|8000h))
	movwf	((i1sprintf@f))+1
	movf	(_tempC+1),w
	movwf	1+(?i1_sprintf)+04h
	movf	(_tempC),w
	movwf	0+(?i1_sprintf)+04h
	movf	(_windV+1),w
	movwf	1+(?i1_sprintf)+06h
	movf	(_windV),w
	movwf	0+(?i1_sprintf)+06h
	movf	(_potP2+1),w
	movwf	1+(?i1_sprintf)+08h
	movf	(_potP2),w
	movwf	0+(?i1_sprintf)+08h
	fcall	i1_sprintf
	line	50
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1writeUART@val)
	movlw	(0x1)
	movwf	(i1writeUART@val+1)
	fcall	i1_writeUART
	line	51
	
i1l2979:	
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	goto	i1l2983
	line	54
	
i1l2981:	
	movlw	01h
	addwf	(_nMSeconds),f
	skipnc
	incf	(_nMSeconds+1),f
	movlw	0
	addwf	(_nMSeconds+1),f
	line	58
	
i1l2983:	
	btfss	(11),1	;volatile
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l119
u327_20:
	line	59
	
i1l2985:	
	bcf	(11),1	;volatile
	line	60
	
i1l2987:	
	movf	((_run)),w
	btfsc	status,2
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l117
u328_20:
	line	61
	
i1l2989:	
	bcf	(7),5	;volatile
	line	62
	bsf	(7),1	;volatile
	line	63
	bcf	(7),2	;volatile
	line	64
	
i1l2991:	
	clrf	(23)	;volatile
	line	65
	
i1l2993:	
	movlw	low(063h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(i1rsLCD@string)
	movlw	low(08h)
	fcall	i1_rsLCD
	line	66
	goto	i1l2999
	line	67
	
i1l117:	
	line	68
	bsf	(7),5	;volatile
	line	69
	
i1l2995:	
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	70
	
i1l2997:	
	movlw	low(063h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(i1rsLCD@string)
	movlw	low(0Fh)
	fcall	i1_rsLCD
	line	72
	
i1l2999:	
	movf	((_run)),w
	btfsc	status,2
	goto	u329_21
	goto	u329_20
u329_21:
	movlw	1
	goto	u330_20
u329_20:
	movlw	0
u330_20:
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_run)
	line	74
	
i1l119:	
	movf	(??_isr+5),w
	movwf	btemp+1
	movf	(??_isr+4),w
	movwf	pclath
	movf	(??_isr+3),w
	movwf	fsr0
	swapf	(??_isr+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	i1_writeUART

;; *************** function i1_writeUART *****************
;; Defined at:
;;		line 30 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2    1[COMMON] PTR const unsigned char 
;;		 -> STR_15(34), STR_14(34), STR_13(34), STR_12(23), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  writeUART       1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_putUART
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	30
global __ptext42
__ptext42:	;psect for function i1_writeUART
psect	text42
	file	"serial.c"
	line	30
	global	__size_ofi1_writeUART
	__size_ofi1_writeUART	equ	__end_ofi1_writeUART-i1_writeUART
	
i1_writeUART:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_writeUART: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
i1l2879:	
	clrf	(i1writeUART@i)
	line	32
	goto	i1l2885
	
i1l2881:	
	movf	(i1writeUART@i),w
	addwf	(i1writeUART@val),w
	movwf	fsr0
	movf	(i1writeUART@val+1),w
	skipnc
	incf	(i1writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	i1_putUART
	
i1l2883:	
	movlw	low(01h)
	movwf	(??i1_writeUART+0)+0
	movf	(??i1_writeUART+0)+0,w
	addwf	(i1writeUART@i),f
	
i1l2885:	
	movf	(i1writeUART@i),w
	addwf	(i1writeUART@val),w
	movwf	fsr0
	movf	(i1writeUART@val+1),w
	skipnc
	incf	(i1writeUART@val+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l2881
u311_20:
	line	33
	
i1l2887:	
	movlw	low(0Ah)
	fcall	i1_putUART
	line	34
	movlw	low(0Dh)
	fcall	i1_putUART
	line	35
	
i1l2889:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	36
	
i1l286:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_writeUART
	__end_ofi1_writeUART:
	signat	i1_writeUART,4185
	global	i1_putUART

;; *************** function i1_putUART *****************
;; Defined at:
;;		line 24 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_writeUART
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext43
__ptext43:	;psect for function i1_putUART
psect	text43
	file	"serial.c"
	line	24
	global	__size_ofi1_putUART
	__size_ofi1_putUART	equ	__end_ofi1_putUART-i1_putUART
	
i1_putUART:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_putUART: [wreg]
	movwf	(i1putUART@val)
	line	25
	
i1l2553:	
	movf	(i1putUART@val),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	26
	
i1l277:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l277
u266_20:
	line	27
	
i1l280:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_putUART
	__end_ofi1_putUART:
	signat	i1_putUART,4185
	global	i1_sprintf

;; *************** function i1_sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2    0[BANK0 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(37), STR_8(9), STR_2(37), 
;;		 -> STR_1(38), 
;; Auto vars:     Size  Location     Type
;;  sprintf         4    0        struct .
;;  sprintf         2   16[BANK0 ] unsigned int 
;;  sprintf         2    0        PTR const unsigned char 
;;  sprintf         2    0        unsigned int 
;;  sprintf         1   18[BANK0 ] unsigned char 
;;  sprintf         1   15[BANK0 ] char 
;;  sprintf         1   14[BANK0 ] unsigned char 
;;  sprintf         1   13[BANK0 ] PTR void [1]
;;		 -> ?i1_sprintf(2), ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      10       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___lwdiv
;;		i1___lwmod
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext44
__ptext44:	;psect for function i1_sprintf
psect	text44
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_ofi1_sprintf
	__size_ofi1_sprintf	equ	__end_ofi1_sprintf-i1_sprintf
	
i1_sprintf:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
i1l2891:	
	movlw	(low(?i1_sprintf|((0x0)<<8)+04h))&0ffh
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@ap)
	line	553
	goto	i1l2943
	line	555
	
i1l2893:	
		movlw	37
	xorwf	((i1sprintf@c)),w
	btfsc	status,2
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l2899
u312_20:
	line	558
	
i1l2895:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2897:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	559
	goto	i1l2943
	line	565
	
i1l2899:	
	clrf	(i1sprintf@flag)
	line	661
	
i1l2903:	
	movf	(i1sprintf@f+1),w
	movwf	(??i1_sprintf+0)+0+1
	movf	(i1sprintf@f),w
	movwf	(??i1_sprintf+0)+0
	incf	(i1sprintf@f),f
	skipnz
	incf	(i1sprintf@f+1),f
	movf	1+(??i1_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??i1_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(i1sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l2945
	xorlw	100^0	; case 100
	skipnz
	goto	i1l2905
	xorlw	105^100	; case 105
	skipnz
	goto	i1l2905
	goto	i1l2943
	opt asmopt_pop

	line	1285
	
i1l2905:	
	movf	(i1sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(i1sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(i1sprintf@val+1)
	
i1l2907:	
	movlw	low(02h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@ap),f
	line	1287
	
i1l2909:	
	btfss	(i1sprintf@val+1),7
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l2915
u313_20:
	line	1288
	
i1l2911:	
	movlw	low(03h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	iorwf	(i1sprintf@flag),f
	line	1289
	
i1l2913:	
	comf	(i1sprintf@val),f
	comf	(i1sprintf@val+1),f
	incf	(i1sprintf@val),f
	skipnz
	incf	(i1sprintf@val+1),f
	line	1331
	
i1l2915:	
	clrf	(i1sprintf@c)
	incf	(i1sprintf@c),f
	
i1l2917:	
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l2921
u314_20:
	goto	i1l2927
	line	1332
	
i1l2921:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??i1_sprintf+1)+0
	fcall	stringtab
	movwf	(??i1_sprintf+1)+0+1
	movf	1+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val+1),w
	skipz
	goto	u315_25
	movf	0+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val),w
u315_25:
	skipnc
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l2925
u315_20:
	goto	i1l2927
	line	1331
	
i1l2925:	
	movlw	low(01h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@c),f
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l2921
u316_20:
	line	1464
	
i1l2927:	
	movf	(i1sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l2933
u317_20:
	line	1465
	
i1l2929:	
	movlw	low(02Dh)
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2931:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1498
	
i1l2933:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@prec)
	line	1500
	goto	i1l2941
	line	1515
	
i1l2935:	
	movlw	0Ah
	movwf	(i1___lwmod@divisor)
	movlw	0
	movwf	((i1___lwmod@divisor))+1
	movf	(i1sprintf@prec),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(i1___lwdiv@divisor)
	fcall	stringtab
	movwf	(i1___lwdiv@divisor+1)
	movf	(i1sprintf@val+1),w
	movwf	(i1___lwdiv@dividend+1)
	movf	(i1sprintf@val),w
	movwf	(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	movwf	(i1___lwmod@dividend+1)
	movf	(0+(?i1___lwdiv)),w
	movwf	(i1___lwmod@dividend)
	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	addlw	030h
	movwf	(??i1_sprintf+1)+0
	movf	(??i1_sprintf+1)+0,w
	movwf	(i1sprintf@c)
	line	1550
	
i1l2937:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2939:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1500
	
i1l2941:	
	movlw	low(-1)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@prec),f
		incf	(((i1sprintf@prec))),w
	btfss	status,2
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l2935
u318_20:
	line	553
	
i1l2943:	
	movf	(i1sprintf@f+1),w
	movwf	(??i1_sprintf+0)+0+1
	movf	(i1sprintf@f),w
	movwf	(??i1_sprintf+0)+0
	incf	(i1sprintf@f),f
	skipnz
	incf	(i1sprintf@f+1),f
	movf	1+(??i1_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??i1_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??i1_sprintf+2)+0
	movf	(??i1_sprintf+2)+0,w
	movwf	(i1sprintf@c)
	movf	(((i1sprintf@c))),w
	btfss	status,2
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l2893
u319_20:
	line	1564
	
i1l2945:	
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	line	1567
	
i1l572:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_sprintf
	__end_ofi1_sprintf:
	signat	i1_sprintf,4186
	global	i1___lwmod

;; *************** function i1___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwmod         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_sprintf
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext45
__ptext45:	;psect for function i1___lwmod
psect	text45
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	12
	
i1l2581:	
	movf	((i1___lwmod@divisor)),w
iorwf	((i1___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2599
u274_20:
	line	13
	
i1l2583:	
	clrf	(i1___lwmod@counter)
	incf	(i1___lwmod@counter),f
	line	14
	goto	i1l2589
	line	15
	
i1l2585:	
	movlw	01h
	
u275_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u275_25
	line	16
	
i1l2587:	
	movlw	low(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	line	14
	
i1l2589:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2585
u276_20:
	line	19
	
i1l2591:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u277_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u277_25:
	skipc
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2595
u277_20:
	line	20
	
i1l2593:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	line	21
	
i1l2595:	
	movlw	01h
	
u278_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u278_25
	line	22
	
i1l2597:	
	movlw	01h
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l2591
u279_20:
	line	24
	
i1l2599:	
	movf	(i1___lwmod@dividend+1),w
	movwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	movwf	(?i1___lwmod)
	line	25
	
i1l994:	
	return
	opt callstack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
	signat	i1___lwmod,8282
	global	i1___lwdiv

;; *************** function i1___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    5[COMMON] unsigned int 
;;  __lwdiv         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_sprintf
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext46
__ptext46:	;psect for function i1___lwdiv
psect	text46
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	13
	
i1l2555:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	14
	
i1l2557:	
	movf	((i1___lwdiv@divisor)),w
iorwf	((i1___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l2577
u267_20:
	line	15
	
i1l2559:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	16
	goto	i1l2565
	line	17
	
i1l2561:	
	movlw	01h
	
u268_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u268_25
	line	18
	
i1l2563:	
	movlw	low(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	line	16
	
i1l2565:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l2561
u269_20:
	line	21
	
i1l2567:	
	movlw	01h
	
u270_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u270_25
	line	22
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u271_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u271_25:
	skipc
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l2573
u271_20:
	line	23
	
i1l2569:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	24
	
i1l2571:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
i1l2573:	
	movlw	01h
	
u272_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u272_25
	line	27
	
i1l2575:	
	movlw	01h
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2567
u273_20:
	line	29
	
i1l2577:	
	movf	(i1___lwdiv@quotient+1),w
	movwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	movwf	(?i1___lwdiv)
	line	30
	
i1l984:	
	return
	opt callstack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,8282
	global	i1_rsLCD

;; *************** function i1_rsLCD *****************
;; Defined at:
;;		line 23 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;;  string          1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_delay_ms
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	23
global __ptext47
__ptext47:	;psect for function i1_rsLCD
psect	text47
	file	"lcd.c"
	line	23
	global	__size_ofi1_rsLCD
	__size_ofi1_rsLCD	equ	__end_ofi1_rsLCD-i1_rsLCD
	
i1_rsLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_rsLCD: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i1rsLCD@val)
	line	24
	
i1l2861:	
	bsf	(9),1	;volatile
	line	25
	
i1l2863:	
	movf	(i1rsLCD@val),w
	movwf	(8)	;volatile
	line	26
	
i1l2865:	
		movlw	99
	xorwf	((i1rsLCD@string)),w
	btfss	status,2
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l2869
u309_20:
	
i1l2867:	
	bcf	(9),2	;volatile
	line	27
	
i1l2869:	
		movlw	100
	xorwf	((i1rsLCD@string)),w
	btfss	status,2
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l2873
u310_20:
	
i1l2871:	
	bsf	(9),2	;volatile
	line	28
	
i1l2873:	
	movlw	03h
	movwf	(i1delay_ms@val)
	movlw	0
	movwf	((i1delay_ms@val))+1
	fcall	i1_delay_ms
	line	29
	
i1l2875:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	30
	movlw	03h
	movwf	(i1delay_ms@val)
	movlw	0
	movwf	((i1delay_ms@val))+1
	fcall	i1_delay_ms
	line	31
	
i1l2877:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),1	;volatile
	line	32
	
i1l234:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_rsLCD
	__end_ofi1_rsLCD:
	signat	i1_rsLCD,8281
	global	i1_delay_ms

;; *************** function i1_delay_ms *****************
;; Defined at:
;;		line 59 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  delay_ms        2    3[COMMON] unsigned int 
;;  delay_ms        1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_rsLCD
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext48
__ptext48:	;psect for function i1_delay_ms
psect	text48
	file	"lcd.c"
	line	59
	global	__size_ofi1_delay_ms
	__size_ofi1_delay_ms	equ	__end_ofi1_delay_ms-i1_delay_ms
	
i1_delay_ms:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_delay_ms: [wreg+status,2+status,0]
	line	62
	
i1l2539:	
	clrf	(i1delay_ms@i)
	clrf	(i1delay_ms@i+1)
	goto	i1l252
	line	63
	
i1l2541:	
	clrf	(i1delay_ms@j)
	
i1l254:	
	line	65
# 65 "lcd.c"
NOP ;# 
	line	66
# 66 "lcd.c"
NOP ;# 
	line	67
# 67 "lcd.c"
NOP ;# 
	line	68
# 68 "lcd.c"
NOP ;# 
	line	69
# 69 "lcd.c"
NOP ;# 
psect	text48
	line	63
	
i1l2547:	
	movlw	low(01h)
	movwf	(??i1_delay_ms+0)+0
	movf	(??i1_delay_ms+0)+0,w
	addwf	(i1delay_ms@j),f
	
i1l2549:	
	movlw	low(0C8h)
	subwf	(i1delay_ms@j),w
	skipc
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l254
u264_20:
	line	62
	
i1l2551:	
	movlw	01h
	addwf	(i1delay_ms@i),f
	skipnc
	incf	(i1delay_ms@i+1),f
	movlw	0
	addwf	(i1delay_ms@i+1),f
	
i1l252:	
	movf	(i1delay_ms@val+1),w
	subwf	(i1delay_ms@i+1),w
	skipz
	goto	u265_25
	movf	(i1delay_ms@val),w
	subwf	(i1delay_ms@i),w
u265_25:
	skipc
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l2541
u265_20:
	line	73
	
i1l257:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_delay_ms
	__end_ofi1_delay_ms:
	signat	i1_delay_ms,4185
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
