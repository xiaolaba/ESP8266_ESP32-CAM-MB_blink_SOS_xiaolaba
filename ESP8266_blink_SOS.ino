/*
  ESP8266 Blink by Simon Peter
  Blink the blue LED on the ESP-01 module
  This example code is in the public domain

  The blue LED on the ESP-01 module is connected to GPIO1
  (which is also the TXD pin; so we cannot use Serial.print() at the same time)

  Note that this sketch uses LED_BUILTIN to find the pin with the internal LED
*/

// xiaolaba, 2019-MAR-02

void longblink(){
  digitalWrite(LED_BUILTIN, LOW);   // Turn the LED on (Note that LOW is the voltage level
  // but actually the LED is on; this is because
  // it is active low on the ESP-01)
  delay(1000);                      // Wait for a second
  digitalWrite(LED_BUILTIN, HIGH);  // Turn the LED off by making the voltage HIGH
  delay(200);                      // Wait for 200ms (to demonstrate the active low LED)
}

void shortblink(){
  digitalWrite(LED_BUILTIN, LOW);   // Turn the LED on (Note that LOW is the voltage level
  // but actually the LED is on; this is because
  // it is active low on the ESP-01)
  delay(200);                      // Wait for 200ms
  digitalWrite(LED_BUILTIN, HIGH);  // Turn the LED off by making the voltage HIGH
  delay(200);                      // Wait for 200ms (to demonstrate the active low LED)
}

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);     // Initialize the LED_BUILTIN pin as an output
}

// MORSE CODE ...---... = SOS
// the loop function runs over and over again forever
void loop() {
  shortblink();
  shortblink();
  shortblink();

  longblink();
  longblink();
  longblink();

  shortblink();
  shortblink();
  shortblink();
  
  delay(3000);                      // Wait for 3 second

}
