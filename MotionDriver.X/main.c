#include "main.h"

#define MAX_MESSAGE_LENGTH 200
#define SLAVE_ADDR 0x32

void printI2CStatus();

int main(void) {
    INTCONbits.MVEC = 0x1;
    
    char message[MAX_MESSAGE_LENGTH];

    Startup(); // cache on, interrupts on, LED/button init, UART init
    WriteUART1("Hello! Welcome to the Max32!\r\n");
    I2CInit();
    uint8_t MPUAddress = 0x68;
    uint8_t VLAddress = 0x29;
    
    uint8_t master_write0 = 0x48;       // first byte that master writes
    uint8_t master_write1 = 0x69;       // second byte that master writes
    uint8_t master_read0  = 0x00;       // first received byte
    uint8_t master_read1  = 0x00;       // second received byte
    
    printI2CStatus();
    VL6180X mainProx; VL6180XInit(&mainProx, 0x29);
    MPU9250 mainAccel; MPU9250Init(&mainAccel, 0x68, MPU9250_CLOCK_PLL_XGYRO, MPU9250_GYRO_FS_500, MPU9250_ACCEL_FS_2);
    printI2CStatus();
    //VL6180xDefautSettings();
    //printI2CStatus();
    WriteUART1("Everything Initialized!\r\n");
    while (1) {
        _CP0_SET_COUNT(0);
        while (_CP0_GET_COUNT() < 64000000) {
            ;
        }
        char value[12];
        /* VL6180 Tests
        uint8_t d = mainProx.getDistance(&mainProx);
        printI2CStatus();
        WriteUART1("Distance: "); itoa(value, d, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("Iteration!\r\n");
        */
        MPU9250_getMotion6(&ax, &ay, &az, &gx, &gy, &gz);  printI2CStatus();
        WriteUART1("ACCEL_X: "); itoa(value, ax, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("ACCEL_Y: "); itoa(value, ay, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("ACCEL_Z: "); itoa(value, az, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("GYRO_X: "); itoa(value, gx, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("GYRO_Y: "); itoa(value, gy, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("GYRO_Z: "); itoa(value, gz, 10); WriteUART1(value); WriteUART1("\r\n");
        //printI2CStatus();
        //WriteUART1("Distance: "); itoa(value, distance, 10); WriteUART1(value); WriteUART1("\r\n");
        //uint8_t light = (uint8_t)getAmbientLight(GAIN_1);
        //printI2CStatus();
        //WriteUART1("Ambient Light: "); itoa(value, light, 10); WriteUART1(value); WriteUART1("\r\n");
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

void printI2CStatus() {
    if (I2CStatus == I2CSuccess) {
        ;//WriteUART1("Success!\r\n");
    } else if (I2CStatus == I2CTimeout) {
        WriteUART1("Timeout!\r\n");
    } else if (I2CStatus == I2CBusCollision) {
        WriteUART1("Bus Collision!\r\n");
    } else if (I2CStatus == I2CAcknowledgementNotSent) {
        WriteUART1("Acknowledgement Not Sent!\r\n");
    } else if (I2CStatus == I2CReceiveOverflow) {
        WriteUART1("Receiver Overflow!\r\n");
    }
}