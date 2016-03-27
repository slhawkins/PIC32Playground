#include "usbDebug.h"

// Perform startup routines:
//  Make LED1 and _LED2 pins outputs (_USER is by default an input)
//  Initialize the serial port - UART3 (no interrupt) 
//  Enable interrupts
void Startup() {
  // disable interrupts
  __builtin_disable_interrupts();

  // enable the cache 
  // This command sets the CP0 CONFIG register
  // the lower 4 bits can be either 0b0011 (0x3) or 0b0010 (0x2)
  // to indicate that kseg0 is cacheable (0x3) or uncacheable (0x2)
  // see Chapter 2 "CPU for Devices with M4K Core" of the PIC32 reference manual
  // most of the other bits have prescribed values
  // microchip does not provide a _CP0_SET_CONFIG macro, so we directly use
  // the compiler built-in command _mtc0
  // to disable cache, use 0xa4210582 
  __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583); 
  
  // set the prefectch cache wait state to 2, as per the
  // electrical characteristics data sheet
  CHECONbits.PFMWS = 0x2;   

  //enable prefetch for cacheable and noncacheable memory
  CHECONbits.PREFEN = 0x3; 

  // 0 data RAM access wait states
  BMXCONbits.BMXWSDRM = 0x0;
  
  // enable multi vector interrupts
  INTCONbits.MVEC = 0x1;

  // disable JTAG to get B10, B11, B12 and B13 back
  DDPCONbits.JTAGEN = 0;

  DATA_LED0_DIR = 0, DATA_LED1_DIR = 0;  // Make F0 and F1 outputs (LED1 and LED2)
  DATA_LED0 = 1;      // LED1 is off
  DATA_LED1 = 0;      // LED2 is on

  // turn on UART3 without an interrupt
  U1MODEbits.BRGH = 0; // set baud to DESIRED_BAUD
  U1BRG = ((SYS_FREQ / DESIRED_BAUD) / 16) - 1;

  // 8 bit, no parity bit, and 1 stop bit (8N1 setup)
  U1MODEbits.PDSEL = 0;
  U1MODEbits.STSEL = 0;

  // configure TX & RX pins as output & input pins
  U1STAbits.UTXEN = 1;
  U1STAbits.URXEN = 1;
  // configure hardware flow control using RTS and CTS
  U1MODEbits.UEN = 0;

  // enable the uart
  U1MODEbits.ON = 1;

  __builtin_enable_interrupts();
}

// Read from UART3
// block other functions until you get a '\r' or '\n'
// send the pointer to your char array and the number of elements in the array
void ReadUART1(char * message, int maxLength) {
  char data = 0;
  int complete = 0, num_bytes = 0;
  // loop until you get a '\r' or '\n'
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

// Write a character array using UART3
void WriteUART1(const char * string) {
  while (*string != '\0') {
    while (U1STAbits.UTXBF) {
      ; // wait until tx buffer isn't full
    }
    U1TXREG = *string;
    ++string;
  }
}