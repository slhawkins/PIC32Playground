#include "main.h"
#include <math.h>
#include "thermistor.h"
#define MAX_MESSAGE_LENGTH 200
#define SLAVE_ADDR 0x32

void printI2CStatus();

float getTemperature(int adcValue) {
    char output[100] = {};
    //sprintf(output, "Thermister: %5d\r\n", adcValue);
    WriteUART1(output);
    float thermistorResistance = THERMISTOR_SERIES_R / (1023.0/adcValue - 1);
    //sprintf(output, "Thermister Res Value: %5f\r\n", thermistorResistance);
    WriteUART1(output);
    _CP0_SET_COUNT(0);
    thermistorResistance = THERMISTOR_SERIES_R / (1023.0/adcValue - 1);
    float temperature = log(thermistorResistance / THERMISTOR_RTEMP_R)/THERMISTOR_BETA + 1.0 / (THERMISTOR_RTEMP + 273.15);
    temperature = 1.0 / temperature - 273.15;
    int end = _CP0_GET_COUNT();
    //float temperature = 1/THERMISTOR_RTEMP + (1/THERMISTOR_BETA) * log(thermistorResistance/THERMISTOR_RTEMP_R);
    //temperature = 1/temperature - 273.15;
    sprintf(output, "Thermister: %5d\t%5f\t%5f\t%5d\r\n", adcValue, thermistorResistance, temperature, end);//"Thermister Temperature: %5f\r\n", steinhart);
    WriteUART1(output);
}

int main(void) {
    INTCONbits.MVEC = 0x1;
    
    char message[MAX_MESSAGE_LENGTH];

    Startup(); // cache on, interrupts on, LED/button init, UART init
    WriteUART1("Hello! Welcome to the Max32!\r\n");
    /*
    int i = 100000;
    char output[100] = {};
    while(1) {
        _CP0_SET_COUNT(0);
        log(i * 2.42563);
        int end = _CP0_GET_COUNT();
        sprintf(output, "Clock Cycles: %5d\r\n", end);
        WriteUART1(output);
    }
    */
    ADCInit(5, true);


    ADCAdd(0, getTemperature);
    ADCAdd(1, getTemperature);
    ADCAdd(2, getTemperature);
    while (1) {;}
    /*
    I2CInit();
    _CP0_SET_COUNT(0);
    while (_CP0_GET_COUNT() < 3200000) {
        ;
    }
    printI2CStatus();
    VL6180X mainProx; VL6180XInit(&mainProx, 0x29);
    printI2CStatus();
    while (_CP0_GET_COUNT() < 32000000) {
        ;
    }*/
    /*MPU9250(0x68);
    MPU9250Compass(0x0C);
    MPU9250_initialize();
    printI2CStatus();*/
    /*WriteUART1("Everything Initialized!\r\n");
    while (1) {
        _CP0_SET_COUNT(0);
        while (_CP0_GET_COUNT() < 1600000) {
            ;
        }
        char value[12];
        /* VL6180 Tests
        uint8_t d = mainProx.getDistance(&mainProx);
        printI2CStatus();
        WriteUART1("Distance: "); itoa(value, d, 10); WriteUART1(value); WriteUART1("\r\n");
        WriteUART1("Iteration!\r\n");
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
        
        mainProx.getDistance(&mainProx);
        printI2CStatus();
        char output[100] = {};
        sprintf(output, "Distance Reading (mm): %3d\r\n", mainProx.distance);
        WriteUART1(output);
        mainProx.getAmbientLight(&mainProx, GAIN_1);
        printI2CStatus();
        WriteUART1("Ambient Light: "); itoa(value, (int16_t)mainProx.ambientLight, 10); WriteUART1(value); WriteUART1("\r\n");
        if (I2CStatus == I2CBusCollision) {
            I2CDisable();
            I2CInit();
        }
        while (1) {;}
    }
    */
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