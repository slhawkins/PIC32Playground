#include "../I2CLib.X/I2C.h"
//#include "../MPU9250.X/MPU9250.h"
#include "../USBDebug.X/USBDebug.h"
//#include "../VL6180.X/SparkFun_VL6180X.h"

#pragma config FNOSC    = PRIPLL
#pragma config POSCMOD  = XT
#pragma config FPLLIDIV = DIV_2
#pragma config FPLLMUL  = MUL_16
#pragma config FPLLODIV = DIV_1
#pragma config FPBDIV   = DIV_1
#pragma config FSOSCEN  = OFF
#pragma config IESO     = OFF
#pragma config FCKSM    = CSDCMD
#pragma config OSCIOFNC = OFF
#pragma config FWDTEN   = OFF
#pragma config WDTPS    = PS1024
#pragma config CP       = OFF
#pragma config BWP      = OFF
#pragma config PWP      = OFF
#pragma config ICESEL   = ICS_PGx2
#pragma config DEBUG    = ON
#pragma config FCANIO = OFF
#pragma config UPLLEN = ON
#pragma config UPLLIDIV = DIV_2