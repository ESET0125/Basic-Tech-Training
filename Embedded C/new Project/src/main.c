#include <Arduino.h>

// Define the digital pins for the three LEDs
const int LED_OFF = 2;
const int LED_ON = 5;
const int LED_BLINKING = 7;

void setup() {
  // Set each LED pin as an output
  pinMode(LED_OFF, OUTPUT);
  pinMode(LED_ON, OUTPUT);
  pinMode(LED_BLINKING, OUTPUT);

  // Set the states of the constant LEDs in the setup() function
  // LED on pin 2 will remain OFF
  digitalWrite(LED_OFF, LOW);
  
  // LED on pin 5 will remain ON
  digitalWrite(LED_ON, HIGH);
}

void loop() {
  // Toggle the blinking LED
  digitalWrite(LED_BLINKING, HIGH);
  delay(500); // Wait for 500 milliseconds (0.5 seconds)
  digitalWrite(LED_BLINKING, LOW);
  delay(500); // Wait for 500 milliseconds (0.5 seconds)
}