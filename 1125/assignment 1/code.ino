int sensorValues = A0;
 
void setup() {
  Serial.begin(9600);
}
 
void loop() {
  if (Serial.available()) {
    if (Serial.read() == '\n') {
      int sensor = analogRead(sensorValues);
      delay(1);
      //print 
      Serial.println(sensor);
    }
  }
}
