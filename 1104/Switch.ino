const int LEDSwitch = A0;
const int bluePin = 13;
const int yellowPin = 12;

void setup() {
  // put your setup code here, to run once:
  pinMode(bluePin, OUTPUT); //setting blue LED for output
  pinMode(yellowPin, OUTPUT); //setting yellow LED for output
}

void loop() {
  // put your main code here, to run repeatedly:
  int LEDState = digitalRead(LEDSwitch);

  if (LEDState == HIGH) {
    digitalWrite(bluePin, HIGH);
    digitalWrite(yellowPin, LOW);
  }
  else {
    digitalWrite(bluePin, LOW);
    digitalWrite(yellowPin, HIGH);
  }
}

