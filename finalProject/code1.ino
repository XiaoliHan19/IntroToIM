char val;
int pushButton1 = 2;
int pushButton2 = 3;
int pushButton3 = 4;
int pushButton4 = 5;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  // make the pushbutton's pin an input:
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input pin:
  int button1State = digitalRead(2);
  // print out the state of the button:
  Serial.println(button1State);
  delay(500);        // delay in between reads for stability

  int button2State = digitalRead(3);
  Serial.println(button2State);
  delay(500);

  int button3State = digitalRead(4);
  Serial.println(button3State);
  delay(500);

  int button4State = digitalRead(5);
  Serial.println(button4State);
  delay(500);
}
