import processing.serial.*;
Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port
//import processing.video.*; //load karaokue videos
//Movie movie1; //Declare a Video object.
//Movie movie2;
//Movie movie3;

//page 0: home screen
PFont letterAvenir; //text font setup
int currentPage = 0;
PImage karaoke;
boolean SING = true;
//karaoke.start;

//page 1: song list
String guide1 = "choose a picture that can best describe your mood right now";
PImage cali;
boolean a = true;
PImage pizza;
boolean c = true;
PImage seashell;
boolean d = true;

//page 2: California Dreamin'
boolean play0 = true;

//page 3: Bliding Lights
boolean play1 = true;

//page 4: Xmas
boolean play2 = true;


void setup() {
  printArray(Serial.list());
  String portName = Serial.list()[3];
  myPort = new Serial(this, Serial.list()[3], 9600);

  //page 0
  size (1200, 720);
  printArray(PFont.list());
  letterAvenir = loadFont("AvenirNextCondensed-HeavyItalic-48.vlw");
  karaoke = loadImage("karaoke.jpg");

  //page 1
  cali = loadImage("cali.jpg");
  pizza = loadImage("pizza.png");
  seashell = loadImage("seashell.png");

  //page 2
  background(10, 10, 200);
  //movie1 = new Movie(this, "California Dreamin'.mp4");// Initialize Movie object
  //movie1.loop();

  //page 3
  background(0);
  //movie2 = new Movie(this, "Blinding Lights'.mp4");// Initialize Movie object
  //movie2.loop();

  //page 4
  background(122, 121, 200);
  //movie3 = new Movie(this, "XMAS'.mp4");// Initialize Movie object
  //movie3.loop();
}

//void movieEvent(Movie movie) {
//  movie.read();
//movie2.read();
//movie3.read();
//}

void draw() {
  //page 0
  image(karaoke, 0, 0, 1200, 720);
  textFont(letterAvenir, 50);
  fill(170, 236, 255);
  text("SING?", 150, 200);
  fill(42, 10, 255);
  text("BYEEE!", 900, 600);
  fill(206, 46, 255);
  text("SING?", 155, 205);
  fill(254, 10, 255);
  text("BYEEE!", 905, 605);

  //page 1
  if (currentPage == 1) {
    background(0);
    textFont(letterAvenir, 50);
    fill(170, 236, 255);
    text("choose a picture that can best describe your mood right now", 150, 200);
    fill(42, 10, 255);
    text("choose a picture that can best describe your mood right now", 155, 205);
    image(cali, 50, 0, 150, 100);
    image(pizza, 250, 150, 150, 100);
    image(seashell, 550, 200, 150, 100);
  }

  //page 2
  if (currentPage == 2) {
    background(0);
    //float ratio = mouseX / (float) width;
    //movie1.jump(ratio * movie1.duration());
    //image(movie1, 0, 0);
    return;
  }


  //page 3
  if (currentPage == 3) {
    background(0);
    //image(movie2, 0, 0);
    return;
  }

  //page 4
  if (currentPage == 4) {
    background(0);
    //image(movie3, 0, 0);
    return;
  }
}

void serialEvent(Serial myPort) {
  if (myPort.available() > 0) {
    val = myPort.readStringUntil('\n');
  }
  println(val); //print it out
  if (currentPage == 0 && val == "2") {
    myPort.write('2');
    println("2");
    currentPage = 1;
  } else if (currentPage == 1 && val == "3") {
    setup();
    currentPage = 2;
    return;
  } else if (currentPage == 1 && val == "4") {
    setup();
    currentPage = 3;
    return;
  } else if (currentPage == 1 && val == "5") {
    setup();
    currentPage = 4;
    return;
  }
}
