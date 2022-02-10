/*
 * APP.c
 *
 *  Created on: Oct 15, 2021
 *      Author: Hazem
 */
#include "icu.h"
#include "ultrasonic.h"
#include "lcd.h"
#include "avr/io.h"
#include "common_macros.h"
uint16 data=0;
int main(){
	/*Initializing Modules*/
	LCD_init();
	Ultrasonic_init();
	/*Enable Global interrupts*/
	SET_BIT(SREG,7);
	LCD_displayString("Distance=");
	LCD_displayString("   CM");
	data=Ultrasonic_readDistance();/*Reading data from Ultrasonic sensor*/
	while(1){
		data=Ultrasonic_readDistance();
		/*Displaying Data on LCD*/
		LCD_moveCursor(0, 9);
		LCD_intgerToString(data);
		if(data<100){/*Solution when we go from 3 digits display on LCD to 2 digits or less*/
			LCD_displayCharacter(' ');
		}
	}
}
