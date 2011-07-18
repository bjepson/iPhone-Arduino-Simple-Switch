void setup() {                
  Serial.begin(9600);  // Start the serial port
  pinMode(13, OUTPUT); // Set the built-in LED to output mode
}

void loop() {
  if (Serial.available()) {   // If there's anything on the serial port,
    byte cmd = Serial.read(); // read a single byte from it.

    if (cmd == '1') {  // If the command is the character '1',
      digitalWrite(13, HIGH);   // set the LED on
    } 
    if (cmd == '0') {  // If the command is the character '0',
      digitalWrite(13, LOW);    // set the LED off
      Serial.print(cmd, BYTE);
    }
  }
}

