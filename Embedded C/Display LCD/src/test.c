#include<Arduino.c>
#include<avr/io.h>
#include<util/delay.h>

#define DATA_PIND7 PD7 
#define DATA_PIND6 PD0
#define DATA_PIND5 PD1
#define DATA_PIND4 PD2
#define ENABLE PB3
#define DATA_RS PB4

void lcd_command(unsigned char cmd){
    PORTB & = ~(<<DATA_RS>>);
    // send higher nibble
    
}

void lcd_data(unsigned char data){

}

void lcd_init(){

}

void lct_print(char *str){

}

int main(void){

}