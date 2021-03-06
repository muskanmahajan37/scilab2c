/* Copyright (C) 2016 - IIT Bombay - FOSSEE

 This file must be used under the terms of the CeCILL.
 This source file is licensed as described in the file COPYING, which
 you should have received as part of this distribution.  The terms
 are also available at
 http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 Author: Siddhesh Wani
 Revised by: Yash Pratap Singh Tomar
 Organization: FOSSEE, IIT Bombay
 Email: toolbox@scilab.in
*/

#include "cmd_dcmotor_setup.h"
#include "Arduino.h"

uint8 dcm_pin_1[4], dcm_pin_2[4], dcm_mode[4];

void u8cmd_dcmotor_setups(uint8 board_no, uint8 driver_type, uint8 motor_no,\
							uint8 pin_1, uint8 pin_2)
{
    dcm_pin_1[motor_no] = pin_1;
    dcm_pin_2[motor_no] = pin_2;
    dcm_mode[motor_no] = driver_type;

	//Initialise pins
	pinMode(pin_1,OUTPUT);
	pinMode(pin_2,OUTPUT);

	//Set output to low.
	if(driver_type == 3)
	{
		analogWrite(pin_1,0);
		analogWrite(pin_2,0);		
	}
	else
	{
		digitalWrite(pin_1,LOW);
		digitalWrite(pin_2,LOW);
	}

}

