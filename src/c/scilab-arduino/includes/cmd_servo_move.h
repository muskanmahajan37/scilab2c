/* Copyright (C) 2016 - IIT Bombay - FOSSEE

 This file must be used under the terms of the CeCILL.
 This source file is licensed as described in the file COPYING, which
 you should have received as part of this distribution.  The terms
 are also available at
 http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
 Author: Siddhesh Wani
 Organization: FOSSEE, IIT Bombay
 Email: toolbox@scilab.in
*/
 
 
#ifndef __CMD_SERVO_MOVE_H__
#define __CMD_SERVO_MOVE_H__
 
#include "types.h"
//#include<Servo.h>

#ifdef  __cplusplus
extern "C" {
#endif

extern Servo servo1,servo2;
	
void u8cmd_servo_move(uint8 h, uint8 servo_no,uint8 val);

#ifdef  __cplusplus
} /* extern "C" */
#endif

#endif /* __CMD_DCMOTOR_SETUP_H__ */
