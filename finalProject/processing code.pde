import processing.serial.*;
Serial myPort;  // Create object from Serial class
int val;     // Data received from the serial port
import processing.video.*; //load karaokue videos
Movie movie1; //Declare a Video object.
Movie movie2;
Movie movie3;
boolean start = true;

//page 0: home screen
PFont letterAvenir; //text font setup
int currentPage = 0;
PImage karaoke;
PImage disco;
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
  myPort = new Serial(this, portName, 9600);

  //page 0
  size (1440, 845);
  printArray(PFont.list());
  letterAvenir = loadFont("AvenirNextCondensed-HeavyItalic-48.vlw");
  karaoke = loadImage("karaoke.jpg");
  disco = loadImage("disco.png");

  //page 1
  cali = loadImage("cali.jpg");
  pizza = loadImage("pizza.png");
  seashell = loadImage("seashell.png");

  //page 2
  background(0);
  movie1 = new Movie(this, "California Dreamin'.mp4");// Initialize Movie object

  //page 3
  background(0);
  movie2 = new Movie(this, "Blinding Lights.mp4");// Initialize Movie object

  //page 4
  background(0);
  movie3 = new Movie(this, "XMAS.mp4");// Initialize Movie object
}

void draw() {
  //page 0
  image(karaoke, 0, 0, 1440, 845);
  image(disco, 300, 100, 150, 150);
  textFont(letterAvenir, 40);
  fill(170, 236, 255);
  text("SING?", 150, 690);
  fill(255, 95, 255);
  text("SING?", 155, 695);
  fill(42, 10, 255);
  text("PRESS THE [BLUE BUTTON] TO START", 700, 690);
  fill(254, 10, 255);
  text("PRESS THE [BLUE BUTTON] TO START",705, 695);


  //page 1
  if (currentPage == 1) {
    background(153, 237, 231);
    textFont(letterAvenir, 60);
    fill(42, 10, 255);
    text("choose a picture that", 105, 140);
    fill(254, 10, 255);
    text("choose a picture that", 100, 145);
    fill(42, 10, 255);
    text("best describes your", 305, 220);
    fill(254, 10, 255);
    text("best describes your", 300, 225);
    textFont(letterAvenir, 150);
    fill(42, 10, 255);
    text("MOOD", 920, 220);
    fill(254, 10, 255);
    text("MOOD", 925, 225);
    image(cali, 60, 290, 400, 300);
    image(pizza, 520, 290, 400, 300);
    image(seashell, 980, 290, 400, 300);
    textFont(letterAvenir, 50);
    fill(232, 164, 180);
    text("[RED]", 195, 670);
    fill(224, 45, 87);
    text("[RED]", 200, 675);
    fill(242, 231, 2);
    text("[YELLOW]", 615, 670);
    fill(242, 199, 22);
    text("[YELLOW]", 620, 675);
    fill(152, 222, 132);
    text("[GREEN]", 1100, 670);
    fill(77, 178, 47);
    text("[GREEN]", 1105, 675);
    textFont(letterAvenir, 30);
    fill(247, 162, 238);
    text("*IF YOU WANNA GO BACK TO THE MENU, PRESS [GREY BUTTON]*", 550, 750);
  }

  //page 2
  if (currentPage == 2) {
    background(0);
    movie1.play();
    start = true;
    //float ratio = mouseX / (float) width;
    //movie1.jump(ratio * movie1.duration());
    image(movie1, 0, 0, 1440, 845);
    //return;
  }

  //page 3
  if (currentPage == 3) {
    background(0);
    movie2.play();
    start = true;
    image(movie2, 0, 0, 1440, 845);
    //return;
  }

  //page 4
  if (currentPage == 4) {
    background(0);
    movie3.play();
    start = true;
    image(movie3, 0, 0, 1440, 845);
    //return;
  }
}

void serialEvent (Serial myPort) {
  if (myPort.available() > 0) {
    val = myPort.read();
    println(val);
  }

  if (currentPage == 0 && val == 1) {
    currentPage = 1;
  }

  if (currentPage == 1 && val == 3) {
    currentPage = 2;
  }

  if (currentPage == 1 && val == 4) {
    currentPage = 3;
  }

  if (currentPage == 1 && val == 5) {
    currentPage = 4;
  }
  
  if (currentPage == 2 && val == 6) {
    currentPage = 1;
    movie1.stop();
  }
  
  if (currentPage == 3 && val == 6) {
    currentPage = 1;
    movie2.stop();
  }
  
  if (currentPage == 4 && val == 6) {
    currentPage = 1;
    movie3.stop();
  }
  return;
}

void movieEvent(Movie movie) {
  movie.read();
}
