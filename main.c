#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "adc.h"
#include "lcd.h"
#include "serial.h"
#include "pwm.h"
#include "matricial_key.h"
#include "eeprom_ext.h"
#include "i2c.h"
//xc8 --chip=16f877a main.c adc.c display7s.c lcd.c serial.c matricial_key.c pwm.c i2c.c eeprom_ext.c

//configuration
#pragma config FOSC = HS // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF // Watchdog Timer Enable bit
#pragma config PWRTE = OFF // Power-up Timer Enable bit
#pragma config BOREN = OFF // Brown-out Reset Enable bit
#pragma config LVP = OFF // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
#pragma config CPD = OFF // Data EEPROM Memory Code Protection bit
#pragma config WRT = OFF // Flash Program Memory Write Enable bits
#pragma config CP = OFF // Flash Program Memory Code Protection bit

//global variables
int nMSeconds = 0;                //represents 100ms
int nSeconds = 0;                 //represents 1sec
char strUART[40], strADC[11];     //string with adquire data
bool run = true;                  //current machine state
unsigned int windV=0, potP2, tempC, potP1, oldPotP1=-1, tempWindV; //values adquired from ADC

//interrupt
void interrupt isr() {
	//send periodic (1min) msgs to the app
	if(INTCONbits.TMR0IF && run) {  //timer0 overflow flag
		INTCONbits.TMR0IF = 0; //clean flag

		if(nMSeconds==14) {  //1 second
			windV = (((TMR1H<<8) + TMR1L) - tempWindV);
      tempWindV = ((TMR1H<<8) + TMR1L);
			if(oldPotP1!=-1 && (potP1-oldPotP1)>60 && potP1>oldPotP1 ) {  //check wind variation speed
 				sprintf(strUART, "{\"s\":\"emrgW\", \"t\":%d, \"w\":%d, \"h\":%d}", tempC, windV, potP2);
 				writeUART(strUART);
			}
			oldPotP1 = potP1;
			nSeconds++;
			nMSeconds = 0;

			if(nSeconds==55) { // 1 minute
				sprintf(strUART, "{\"s\":\"1min\", \"t\":%d, \"w\":%d, \"h\":%d}", tempC, windV, potP2);
				writeUART(strUART);
				nSeconds = 0;
			}
		}
		else nMSeconds++;
	}

	//change machine state
	if(INTCONbits.INTF==1) { //RBO flag
		INTCONbits.INTF = 0;   //clean flag
		if(run){  //if it was ON, now is OFF
			PORTCbits.RC5 = 0;   //turn off temp
			PORTCbits.RC1 = 1;   //turn off buzzer
			PORTCbits.RC2 = 0;   //turn off fan
			CCP1CON = 0x00;
			rsLCD(L_OFF, 'c');//turn off LCD
		}
		else {    //if it was OFF, now is ON
			PORTCbits.RC5 = 1;   //turn on temp
			CCP1CON = 0x0F;      //turn on fan
			rsLCD(L_ON, 'c'); //turn on LCD
		}
		run = !run;
	}
}

//functions
void initISR();
void initTimer0();
void initTimer1();

/********************************************************************************************************/
int main(void) {
	//init ports
	TRISA=0xC3; //11000011
	TRISB=0xFF; //11111111  LED B7 / buttons
	TRISC=0x80; //10000001
	TRISD=0x00; //00000000  display DATAx for LCD / LEDS as outputs
	TRISE=0x00; //00000000  EN and RS from LCD
	//init components
	initLCD();
	initMatricialKey();
	//init variables
	int tempRB3 = 0; //temp value for RB3 (debounce)
	unsigned int duty; //for ADC values
	int constHum=20, constTemp=40, constWind=60;//emergency constants
	char pass[5] = "0862", code[5], strOld[11], strConfig1[1];
	bool boolPass = false, boolEmerg = false; //boolean for password verification and emergency situation
	PORTCbits.RC1 = 1; //buzzer off

	//password verification
	while (!boolPass) {
		printlnLCD("Weather Station", "Pass:");
		rsLCD(L_L2+5, 'c');
		for(int i=0; i<4; i++) {
			code[i] = pressSwitch();
			rsLCD(code[i], 'd');
		}
		if(!strcmp(code, pass)) {
			 boolPass = true; //correct password
			 printlnL2LCD("Password correct");
		}
		else printlnL2LCD("Password incorrect");
		delay_ms(50);
	}

	//init components
	TRISA=0x07; //for the temperature
	initUART();
	initADC();
	initPWM(1000);
	initI2C();
	initTimer0();
	initTimer1();
	initISR();
	run = true;
	PORTCbits.RC5 = 1; //temperature on
	printlnL1LCD("Temp/Wind/Hum");

	while (1) {
		if(run) {
			//change heater state
			if(!PORTBbits.RB3 && !tempRB3) PORTCbits.RC5 = !PORTCbits.RC5;
			tempRB3 = !PORTBbits.RB3; //bebounce button RB3

			//read from the ADC to get Temperature/Fan velocity/Humidity
			potP1 = ((unsigned int)readADC(0)*10)/102;  //get fan velocity
			duty = (potP1*255)/100;
			dutyPWM(duty);
			potP2 = ((unsigned int)readADC(1)*10)/102;  //get humidity
			tempC = ((unsigned int)readADC(2)*100)/202; //get temperature

			//print info retrieved to the LCD
			sprintf(strADC, "%d/%d/%d", tempC, windV, potP2);
			if(strcmp(strADC, strOld)){
				if(strlen(strOld)!=strlen(strADC)){
					rsLCD(L_CLR, 'c');
					printlnL1LCD("Temp/Wind/Hum");
				}
				printlnL2LCD(strADC);
				strcpy(strOld, strADC);
			}

			//check for dangerous situations
			if(potP2<constHum && windV>constWind && tempC>constTemp) {
				PORTCbits.RC1 = 0; //buzzer on
				PORTD = 0x80;      //turn on LED D7
				if(!boolEmerg) {
					sprintf(strUART, "{\"s\":\"emrg\", \"t\":%d, \"w\":%d, \"h\":%d}", tempC, windV, potP2);
					writeUART(strUART);   //send emergency msg to app
					writeEEPROM(1,tempC); //store info to eeprom
					writeEEPROM(2,windV);
					writeEEPROM(3,potP2);
				}
				boolEmerg = true;
			}
			else {
				boolEmerg = false;
				PORTCbits.RC1 = 1; //buzzer off
			}

			//check for msg from the app (UART)
			if(PIR1bits.RCIF) {
				readUART(strConfig1); //strConfig =getUART();
				PIR1bits.RCIF = 0; //clean flag
				switch (strConfig1[0]) {
					case 'h': if(readEEPROM(1)!=255) {
											sprintf(strUART, "{\"s\":\"hist\", \"t\":%d, \"w\":%d, \"h\":%d}", readEEPROM(1), readEEPROM(2), readEEPROM(3));
											writeUART(strUART);
										} else writeUART("{\"s\":\"no emergencies\"}");
										break;
					case 'a': constHum=10; constTemp=50; constWind=70;
										writeUART("{\"s\":\"emergency config option A\"}"); break;
					case 'b': constHum=20; constTemp=40; constWind=60;
										writeUART("{\"s\":\"emergency config option B\"}"); break;
					case 'c': constHum=30; constTemp=30; constWind=50;
										writeUART("{\"s\":\"emergency config option C\"}"); break;
					default: break;
				}
			}
			delay_ms(20);
		}
	}
}


void initISR() {
	INTCONbits.GIE  = 1;   //enable global interrupt
	INTCONbits.TMR0IE = 1; //enable timer0 interrupt
	PIE1bits.TMR1IE = 1;   //enable timer interrupt bit in PIE1 register
	INTCONbits.PEIE = 1;   //enable the peripheral interrupt
	INTCONbits.INTE = 1;   //enable RB0 as external interrupt pin
}

void initTimer0() {
	OPTION_REGbits.T0CS = 0; //TMR0 Clock Source Select bit : internal instruction cycle clock (CLKO)
	OPTION_REGbits.T0CS = 0; //increment on low-to-high transition on T0CKI pin
	OPTION_REGbits.PSA  = 0; //prescaler assigned to Timer0 module
	OPTION_REGbits.PS2  = 1; //prescaler 1:256
	OPTION_REGbits.PS1  = 1;
	OPTION_REGbits.PS0  = 1;
	INTCONbits.TMR0IF   = 0; //turn flag off
}

void initTimer1() {
	TRISCbits.TRISC0 = 1;
	T1CONbits.T1CKPS1 = 1; //prescaler 1:8
	T1CONbits.T1CKPS0 = 1;
	T1CONbits.T1OSCEN = 0; //oscillator is shut-off
	T1CONbits.T1SYNC  = 0; //synchronize external clock input
	T1CONbits.TMR1CS  = 1; //external clock from pin RC0/T1OSO/T1CKI (on the rising edge)
	T1CONbits.TMR1ON  = 1; //enable Timer1
}
