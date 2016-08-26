//#include <avr/io.h>
#include <util/delay.h>         //for delay
#define DDRB *((volatile unsigned char*)0x24)
#define PORTB *((volatile unsigned char*)0x25)


int main ()
{
  DDRB    |= ((1 << DDB5));

  while (1) 

	{
	    PORTB ^= ((1 << 5));
	    _delay_ms (1000);  
  	}

return 0;
}
