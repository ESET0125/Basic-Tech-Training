

#include <avr/io.h>
#include <util/delay.h>

#define LED_PINOFF PD2 // PIN 7 on PORTD
#define LED_PINON PD5 // pin 2 on PORTD
#define LED_PINTOGGLE PD7

int main(void){
    DDRD |= (1<<LED_PINOFF);
    DDRD |= (1<<LED_PINON);
    DDRD |= (1<<LED_PINTOGGLE);

    PORTD |= (1<<LED_PINOFF);
    PORTD &= ~(1<<LED_PINON);

    _delay_ms(1000);

    PORTD |= (1<<LED_PINON);
    PORTD &= ~(1<<LED_PINOFF);

    while(1){
        PORTD ^= (1<<LED_PINTOGGLE);
        _delay_ms(1000);
    }
}