import processing.serial.*;
Serial myPort;
char tone_data[] = {'C', 'D', 'E', 'F', 'G', 'A', 'B', 'C', 'D', 'E'};
int key=0;
int old_key=0;
int enter=0;

void setup() {
  size(800, 240);
  myPort = new Serial(this, "/dev/cu.usbmodem143101", 9600);
}

void draw() {
  draw_all_piano();
  draw_play_key();
}

void draw_all_piano() {
  fill(163,208,234);
  //ten keys for piano keys C~G, A~D
  for (int j=0; j<10; j++) rect(j*80, 0, 80, 240);
  fill(255,247,95);
  for (int j=0; j<9; j++) {
    if (j==2 || j==6) continue;
    rect(56+j*80, 0, 48, 160);
  }
  fill(235,238,240);
  textSize(32);
  for (int j=0; j<10; j++) text(tone_data[j], 26+j*80, 230);
}

void draw_play_key() {
  if (myPort.available() > 0) {
    key = myPort.read();
    println(key);
    if (key==80) enter=1; //Enter the key
    if (key==81) enter=0;
  }
  //myPort.clear();
  fill(0, 48);
  if (key!=80 && key!=81) old_key=key;
  rect(old_key*80, 0, 80, 240);  //'P'
  if (key==80 && enter!=0) { //Enter the key
    fill(0, 96);
    text(tone_data[old_key], 26+old_key*80, 230);
    rect(old_key*80, 0, 80, 240);
  }
}
