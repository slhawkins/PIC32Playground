#include <xc.h>                     // processor SFR definitions
#include <sys/attribs.h>            // __ISR macro

#define DATA_LED0_DIR   TRISEbits.TRISE0
#define DATA_LED0       LATEbits.LATE0
#define DATA_LED1_DIR   TRISEbits.TRISE1
#define DATA_LED1       LATEbits.LATE1
#define SYS_FREQ 64000000ul    // 80 million Hz
#define DESIRED_BAUD 235000

void Startup(void);
void ReadUART1(char * string, int maxLength);
void WriteUART1(const char * string);