import processing.serial.*;
Serial myPort; 
String val;

void setup() {
  size (500, 500);
  String portName = Serial.list()[3];
  myPort = new Serial(this, Serial.list()[3], 9600);
}

void draw() {
  background(0);

  if (mousePressed == true) {
    myPort.write ('1');
    println("1");
    background(255);
  }
  else {
    myPort.write ('0');
    println("0");
  }
}
