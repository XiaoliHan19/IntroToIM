int pushButton1 = 2;
int pushButton2 = 3;
int pushButton3 = 4;
int pushButton4 = 5;
int pushButton5 = 6;

// the setup routine runs once when you press reset:
void setup() {
  Serial.begin(9600);
  // make the pushbutton's pin an input:
  pinMode(pushButton1, INPUT);
  pinMode(pushButton2, INPUT);
  pinMode(pushButton3, INPUT);
  pinMode(pushButton4, INPUT);
  pinMode(pushButton5, INPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  //page 0
  if (digitalRead(pushButton1) == HIGH) {
    Serial.write(1);
  } else {
    Serial.write(0);
  }
  delay(100);

  //page 1 to 2
  if (digitalRead(pushButton2) == HIGH) {
    Serial.write(3);
  } else {
    Serial.write(2);
  }
  delay(100);

  //page 1 to 3
  if (digitalRead(pushButton3) == HIGH) {
    Serial.write(4);
  } else {
    Serial.write(2);
  }
  delay(100);

  //page 1 to 4
  if (digitalRead(pushButton4) == HIGH) {
    Serial.write(5);
  } else {
    Serial.write(2);
  }
  delay(100);

  //jump back to page1
  if (digitalRead(pushButton5) == HIGH){
    Serial.write(6);
  } else {
    Serial.write(2);
  }
  delay(100);
}
