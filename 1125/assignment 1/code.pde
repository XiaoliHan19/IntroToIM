import processing.serial.*;
Serial myPort;
float posX;

void setup() {
  size(500, 500);
  background(234, 225, 121);
  myPort = new Serial(this, Serial.list()[3], 9600);// "/dev/cu.usbmodem143101"
}

void draw() {
  fill(234, 173, 57);
  ellipse(posX, 250, 100, 30);
 
}

void serialEvent(Serial myPort) {
  String myString=myPort.readStringUntil('\n');
  myString=trim(myString);
  if (myString!=null) { // read from arduino
    println(myString);
    int value = int(myString);
    posX=(int)map(value, 0, 1000, 0, width);
  }
  myPort.write("\n");
}
