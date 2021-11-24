char val;
int LED = 12;

void setup() {
  pinMode(LED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    val = Serial.read();
  }
  if (val == '1') {
    digitalWrite(LED, HIGH);
  }
  else{ 
    digitalWrite(LED, LOW);
  }
  delay(10);
}
