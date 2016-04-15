#include "MPU9250.h"
#include <xc.h>
#include <sys/attribs.h> 

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
#define SYS_FREQ 64000000ul    // 80 million Hz
#define DESIRED_BAUD 235000

void Startup(void); // Basic startup
void getMessage(char * string, int maxLength); // Retrieves a message sent over serial
void print(const char * string); // Send a message over serial
void printI2CStatus(); // Wrapper for checking the status of the I2C bus

int main(void) {
    char message[MAX_MESSAGE_LENGTH];
    Startup();
    print("Hello! Welcome to the Max32!\r\n");
    I2CInit();
    _CP0_SET_COUNT(0);
    while (_CP0_GET_COUNT() < 3200000) {
        ;
    }
    printI2CStatus();
    VL6180X mainProx; VL6180XInit(&mainProx, 0x29);
    printI2CStatus();
    /*MPU9250(0x68);
    MPU9250Compass(0x0C);
    MPU9250_initialize();
    printI2CStatus();*/
    WriteUART1("Everything Initialized!\r\n");
    while (1) {
        _CP0_SET_COUNT(0);
        while (_CP0_GET_COUNT() < 3200000) {
            ;
        }
        char value[12];
        /* VL6180 Tests
        uint8_t d = mainProx.getDistance(&mainProx);
        printI2CStatus();
        WriteUART1("Distance: "); itoa(value, d, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("Iteration!\r\n");
        */
        /*
        uint16_t ax, ay, az, gx, gy, gz, mx, my, mz;
        MPU9250_getMotion9(&ax, &ay, &az, &gx, &gy, &gz, &mx, &my, &mz);  printI2CStatus();
        itoa(value, ax, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, ay, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, az, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, gx, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, gy, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, gz, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, mx, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, my, 10); WriteUART1(value); WriteUART1("\t");
        itoa(value, mz, 10); WriteUART1(value); WriteUART1("\r\n");
         * */
        
        mainProx.getDistance(&mainProx);
        printI2CStatus();
        WriteUART1("Distance: "); itoa(value, mainProx.distance, 10); WriteUART1(value); WriteUART1("\r\n");
        mainProx.getAmbientLight(&mainProx, GAIN_1);
        printI2CStatus();
        WriteUART1("Ambient Light: "); itoa(value, (int16_t)mainProx.ambientLight, 10); WriteUART1(value); WriteUART1("\r\n");
        
        if (I2CStatus == I2CBusCollision) {
            I2CDisable();
            I2CInit();
        }
    }
    /*
    while (1) {
        WriteUART1("Send something to start the transmission.\r\n");
        ReadUART1(message, MAX_MESSAGE_LENGTH);
        //char testMessage[12];
        //itoa(testMessage, -100, 10);
        //WriteUART1(testMessage);
        // Start
        // Send 
        //WriteUART1("PWR_MGMT_1 Set Op: "); 
        I2CWriteByte(MPUAddress, 0x6B, 0x41); printI2CStatus();
        //WriteUART1("PWR_MGMT_2 Set Op: "); 
        I2CWriteByte(MPUAddress, 0x6C, 0x07); printI2CStatus();
        //WriteUART1("Gyro Set Op: "); 
        I2CWriteByte(MPUAddress, 0x1B, 0x08); printI2CStatus();
        //WriteUART1("Accel Set Op: "); 
        I2CWriteByte(MPUAddress, 0x1C, 0x08); printI2CStatus();
        uint8_t data[6];
        int Data[6];
        //WriteUART1("Accel Check: "); 
        I2CReadBytes(MPUAddress, 0x3B, 6, data); printI2CStatus();
        Data[0] = (data[0] << 8) | data[1];
        Data[1] = (data[2] << 8) | data[3];
        Data[2] = (data[4] << 8) | data[5];
        //WriteUART1("Gyro Check: "); 
        I2CReadBytes(MPUAddress, 0x43, 6, data); printI2CStatus();
        Data[3] = (data[0] << 8) | data[1];
        Data[4] = (data[2] << 8) | data[3];
        Data[5] = (data[4] << 8) | data[5];
        char value[6][12];
        size_t i = 0;
        for (i = 0; i < 6; i++) {
            itoa(value[i], Data[i], 10);
        }
        WriteUART1("ACCEL_X: "); WriteUART1(value[0]); WriteUART1("\r\n");
        WriteUART1("ACCEL_Y: "); WriteUART1(value[1]); WriteUART1("\r\n");
        WriteUART1("ACCEL_Z: "); WriteUART1(value[2]); WriteUART1("\r\n");
        WriteUART1("GYRO_X: "); WriteUART1(value[3]); WriteUART1("\r\n");
        WriteUART1("GYRO_Y: "); WriteUART1(value[4]); WriteUART1("\r\n");
        WriteUART1("GYRO_Z: "); WriteUART1(value[5]); WriteUART1("\r\n");
        //WriteUART1("WhoAmI Check: "); 
        //I2CReadBytes(MPUAddress, 0x75, 1, data); printI2CStatus();
        //I2CSendBytes(SLAVE_ADDR, master_write0, 1, &master_write1); printI2CStatus();
        
        WriteUART1("I2CStart() Status: "); I2CStart(); printI2CStatus();
        WriteUART1("I2CWriteByte(SLAVE_ADDR << 1) Status: "); I2CWriteByte(SLAVE_ADDR << 1); printI2CStatus();
        WriteUART1("I2CWriteByte(master_write0) Status: "); I2CWriteByte(master_write0); printI2CStatus();
        WriteUART1("I2CWriteByte(master_write1) Status: "); I2CWriteByte(master_write1); printI2CStatus();
        WriteUART1("I2CStop() Status: "); I2CStop(); printI2CStatus();
        //WriteUART1(message);                     // send message back
        //char uartMessage[] = {data[0], data[1]};
        //WriteUART1(uartMessage);
        
        
        WriteUART1("\r\n");
        if (I2CStatus == I2CBusCollision) {
            I2CDisable();
            I2CInit();
        }// carriage return and newline
        DATA_LED0 = !DATA_LED0;                       // toggle the LEDs
        DATA_LED1 = !DATA_LED1;
    }
    */
    return 0;
}

void Startup() {
  __builtin_disable_interrupts();
  __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583); 
  CHECONbits.PFMWS = 0x2;   
  CHECONbits.PREFEN = 0x3; 
  BMXCONbits.BMXWSDRM = 0x0;
  INTCONbits.MVEC = 0x1;
  DDPCONbits.JTAGEN = 0;
  U1MODEbits.BRGH = 0; // set baud to DESIRED_BAUD
  U1BRG = ((SYS_FREQ / DESIRED_BAUD) / 16) - 1;
  U1MODEbits.PDSEL = 0;
  U1MODEbits.STSEL = 0;
  U1STAbits.UTXEN = 1;
  U1STAbits.URXEN = 1;
  U1MODEbits.UEN = 0;
  U1MODEbits.ON = 1;
  __builtin_enable_interrupts();
}

void getMessage(char * message, int maxLength) {
  char data = 0;
  int complete = 0, num_bytes = 0;
  while (!complete) {
    if (U1STAbits.URXDA) {
      data = U1RXREG;
      if ((data == '\n') || (data == '\r')) {
        complete = 1;
      } else {
        message[num_bytes] = data;
        ++num_bytes;
        if (num_bytes >= maxLength) {
          num_bytes = 0;
        }
      }
    }
  }
  message[num_bytes] = '\0';
}

void print(const char * string) {
  while (*string != '\0') {
    while (U1STAbits.UTXBF) {
      ;
    }
    U1TXREG = *string;
    ++string;
  }
}

void printI2CStatus() {
    if (I2CStatus == I2CSuccess) {
        ;//WriteUART1("Success!\r\n");
    } else if (I2CStatus == I2CTimeout) {
        WriteUART1("Timeout!\r\n");
    } else if (I2CStatus == I2CBusCollision) {
        WriteUART1("Bus Collision!\r\n");
    } else if (I2CStatus == I2CAcknowledgementNotSent) {
        WriteUART1("Slave Acknowledgement Not Sent!\r\n");
    } else if (I2CStatus == I2CReceiveOverflow) {
        WriteUART1("Receiver Overflow!\r\n");
    }
}