char val;//data received from the serial port
int LED = 12;//set the pin to digital I/O 12

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {//if data is available to read
    val = Serial.read();//read & stored in val
  }
  if (val == '1') {
    digitalWrite(LED, HIGH);
  }
  else{ 
    digitalWrite(LED, LOW);
  }
  delay(10);
}
