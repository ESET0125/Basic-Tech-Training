#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4 // PIN 7 on PORTD
#define BUTTON_PIN PD2 // pin 2 on PORTD

int main(void){
  DDRD |= (1 << LED_PIN);

  DDRD &= ~(1 << BUTTON_PIN);

  while(1) {
    if ((PIND & (1 << BUTTON_PIN))) {

      PORTD |= (1 << LED_PIN);
      _delay_ms(1000);
      PORTD &= (0 << LED_PIN);
      _delay_ms(1000);

    }
    else{
      PORTD &= (0 << LED_PIN);
    }
  }
  return 0;
}