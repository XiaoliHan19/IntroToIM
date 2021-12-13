import processing.serial.*;
Serial myPort;  // Create object from Serial class
int val;     // Data received from the serial port
import processing.video.*; //load karaokue videos
Movie movie1; //Declare a Video object.
Movie movie2;
Movie movie3;
Movie movie4;
Movie movie5;
Movie movie6;
Movie movie7;
Movie movie8;
Movie movie9;
boolean start = true;

//page 0: home screen
PFont letterAvenir; //text font setup
int currentPage = 0;
PImage karaoke;
PImage disco;
//karaoke.start;

//page 1: song list
String guide1 = "choose a picture that can best describe your mood right now";
PImage star;
PImage squidward;
PImage sponge;

//page 2: song list(STAR)
String guide2 = "choose again a picture that can best describe your mood right now";
PImage star1;
PImage star2;
PImage star3;

//page 6: songlist(SQUID)
String guide3 = "choose again a picture that can best describe your mood right now";
PImage squid1;
PImage squid2;
PImage squid3;

//page 10: songlist(SPONGE)
String guide4 = "choose again a picture that can best describe your mood right now";
PImage sponge1;
PImage sponge2;
PImage sponge3;

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
  star = loadImage("star.png");
  squidward = loadImage("squidward.png");
  sponge = loadImage("seashell.png");

  //page 2
  star1 = loadImage("star1.jpg");
  star2 = loadImage("star2.png");
  star3 = loadImage("star3.png");

  //page 3
  movie1 = new Movie(this, "California Dreamin'.mp4");// Initialize Movie object

  //page 4
  movie2 = new Movie(this, "Blinding Lights.mp4");// Initialize Movie object

  //page 5
  movie3 = new Movie(this, "XMAS.mp4");// Initialize Movie object
  
  //page 6
  squid1 = loadImage("squid1.jpg");
  squid2 = loadImage("squid2.jpg");
  squid3 = loadImage("squid3.jpg");
  
  //page 7
  movie4 = new Movie(this, "last xmas.mp4");
  
  //page 8
  movie5 = new Movie(this, "UAE.mp4");
  
  //page 9
  movie6 = new Movie(this, "dancing queen.mp4");
  
  //page 10
  sponge1 = loadImage("sponge1.jpg");
  sponge2 = loadImage("sponge2.jpg");
  sponge3 = loadImage("sponge3.jpg");
  
  //page 11
  movie7 = new Movie(this, "welcome to ny.mp4");
  
  //page 12
  movie8 = new Movie(this, "feeling good.mp4");
  
  //page 13
  movie9 = new Movie(this, "hero.mp4");
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
  text("PRESS THE [BLUE BUTTON] TO START", 705, 695);


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
    image(star, 60, 290, 400, 300);
    image(squidward, 520, 290, 400, 300);
    image(sponge, 980, 290, 400, 300);
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
  }

  //page 2: song list star
  if (currentPage == 2) {
    background(237, 153, 236);
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
    image(star1, 60, 290, 400, 300);
    image(star2, 520, 290, 400, 300);
    image(star3, 980, 290, 400, 300);
    textFont(letterAvenir, 50);
    fill(242, 231, 2);
    text("[YELLOW]", 195, 670);
    fill(242, 199, 22);
    text("[YELLOW]", 200, 675);
    fill(152, 222, 132);
    text("[GREEN]", 615, 670);
    fill(77, 178, 47);
    text("[GREEN]", 620, 675);
    fill(222, 222, 222);
    text("[GREY]", 1100, 670);
    fill(142, 130, 142);
    text("[GREY]", 1105, 675);
    textFont(letterAvenir, 30);
    fill(42, 10, 255);
    text("*IF YOU WANNA GO BACK TO THE MENU, PRESS [BLUE BUTTON]*", 550, 750);
  }

  //page 6: song list squid
  if (currentPage == 6) {
    background(84, 142, 134);
    textFont(letterAvenir, 60);
    fill(42, 10, 255);
    text("choose a picture that", 105, 140);
    fill(245, 227, 27);
    text("choose a picture that", 100, 145);
    fill(42, 10, 255);
    text("best describes your", 305, 220);
    fill(245, 227, 27);
    text("best describes your", 300, 225);
    textFont(letterAvenir, 150);
    fill(42, 10, 255);
    text("MOOD", 920, 220);
    fill(245, 227, 27);
    text("MOOD", 925, 225);
    image(squid1, 60, 290, 400, 300);
    image(squid2, 520, 290, 400, 300);
    image(squid3, 980, 290, 400, 300);
    textFont(letterAvenir, 50);
    fill(152, 222, 132);
    text("[GREEN]", 195, 670);
    fill(77, 178, 47);
    text("[GREEN]", 200, 675);
    fill(222, 222, 222);
    text("[GREY]", 615, 670);
    fill(142, 130, 142);
    text("[GREY]", 620, 675);
    fill(64,248,252);
    text("[BLUE]", 1100, 670);
    fill(12,21,242);
    text("[BLUE]", 1105, 675);
    textFont(letterAvenir, 30);
    fill(245, 227, 27);
    text("*IF YOU WANNA GO BACK TO THE MENU, PRESS [RED BUTTON]*", 550, 750);
  }

  //page 10: song list sponge
  if (currentPage == 10) {
    background(245, 277, 27);
    textFont(letterAvenir, 60);
    fill(13, 88, 165);
    text("choose a picture that", 105, 140);
    fill(240, 188, 0);
    text("choose a picture that", 100, 145);
    fill(13, 88, 165);
    text("best describes your", 305, 220);
    fill(240, 188, 0);
    text("best describes your", 300, 225);
    textFont(letterAvenir, 150);
    fill(13, 88, 165);
    text("MOOD", 920, 220);
    fill(240, 188, 0);
    text("MOOD", 925, 225);
    image(sponge1, 60, 290, 400, 300);
    image(sponge2, 520, 290, 400, 300);
    image(sponge3, 980, 290, 400, 300);
    textFont(letterAvenir, 50);
    fill(222, 222, 222);
    text("[GREY]", 195, 670);
    fill(142, 130, 142);
    text("[GREY]", 200, 675);
    fill(64,248,252);
    text("[BLUE]", 615, 670);
    fill(12,21,242);
    text("[BLUE]", 620, 675);
    fill(232, 164, 180);
    text("[RED]", 1100, 670);
    fill(224, 45, 87);
    text("[RED]", 1105, 675);
    textFont(letterAvenir, 30);
    fill(240, 188, 0);
    text("*IF YOU WANNA GO BACK TO THE MENU, PRESS [YELLOW BUTTON]*", 550, 750);
  }

  //page 3
  if (currentPage == 3) {
    background(0);
    movie1.play();
    start = true;
    //float ratio = mouseX / (float) width;
    //movie1.jump(ratio * movie1.duration());
    image(movie1, 0, 0, 1440, 845);
    //return;
  }

  //page 4
  if (currentPage == 4) {
    background(0);
    movie2.play();
    start = true;
    image(movie2, 0, 0, 1440, 845);
    //return;
  }  

  //page 5
  if (currentPage == 5) {
    background(0);
    movie3.play();
    start = true;
    image(movie3, 0, 0, 1440, 845);
    //return;
  }
  
  //page 7
  if (currentPage == 7) {
    background(0);
    movie4.play();
    image(movie4, 0, 0, 1440, 845);
    start = true;
  }
  
  //page 8
  if (currentPage == 8) {
    background(23,25,45);
    movie5.play();
    image(movie5, 0, 0, 1440, 845);
    start = true;
  }
  
  //page 9
  if (currentPage == 9) {
    background(44,67,23);
    movie6.play();
    image(movie6, 0, 0, 1440, 845);
    start = true;
  }
    
  //page 11
  if (currentPage == 11) {
    background(44,67,23);
    movie7.play();
    image(movie7, 0, 0, 1440, 845);
    start = true;
  }
  
  //page 12
  if (currentPage == 12) {
    background(44,67,23);
    movie8.play();
    image(movie8, 0, 0, 1440, 845);
    start = true;
  }
  
  //page 13
  if (currentPage == 13) {
    background(44,67,23);
    movie9.play();
    image(movie9, 0, 0, 1440, 845);
    start = true;
  }
}


void serialEvent (Serial myPort) {
  if (myPort.available() > 0) {
    val = myPort.read();
    println(val);
  }

  if (currentPage == 0 && val == 1) { //beginning page to song list
    currentPage = 1;
  }

//STAR
  if (currentPage == 1 && val == 3) { //songlist page to songlist(star) page
    currentPage = 2;
  }
  
  if (currentPage == 2 && val == 4) { //cali dreamin'
    currentPage = 3;
  }

  if (currentPage == 2 && val == 5) { //blinding lights
    currentPage = 4;
  }

  if (currentPage == 2 && val == 6) { //let it snow
    currentPage = 5;
  }
  
  if (currentPage == 2 && val == 1) {
    currentPage = 1;
  }
  
  if (currentPage == 3 && val == 1) { //back to songlist
    currentPage = 1;
    movie1.stop();
  }

  if (currentPage == 4 && val == 1) { //back to songlist
    currentPage = 1;
    movie2.stop();
  }

  if (currentPage == 5 && val == 1) { //back to songlist
    currentPage = 1;
    movie3.stop();
  }

//SQUID
  if (currentPage == 1 && val == 4) { //songlist page to songlist(squid) page
    currentPage = 6;
  }

  if (currentPage == 6 && val == 5) { //last xmas
    currentPage = 7;
  }

  if (currentPage == 6 && val == 6) { //UAE national anthem
    currentPage = 8;
  }

  if (currentPage == 6 && val == 1) { //dancing queen
    currentPage = 9;
  }
  
  if (currentPage == 6 && val == 3) {
    currentPage = 1;
  }

  if (currentPage == 7 && val == 3) { //back to songlist
    currentPage = 1;
    movie4.stop();
  }
  
  if (currentPage == 8 && val == 3) { //back to songlist
    currentPage = 1;
    movie5.stop();
  }
  
  if (currentPage == 9 && val == 3) { //back to songlist
    currentPage = 1;
    movie6.stop();
  }
  
//SPONGE  
  if (currentPage == 1 && val == 5) { //songlist page to songlist(SPONGE) page
    currentPage = 10;
  }
  
  if (currentPage == 10 && val == 6) { //welcome to ny
    currentPage = 11;
  }

  if (currentPage == 10 && val == 1) { //feeling good
    currentPage = 12;
  }

  if (currentPage == 10 && val == 3) { //heros
    currentPage = 13;
  }
  
  if (currentPage == 10 && val == 4) {
    currentPage = 1;
  }

  if (currentPage == 11 && val == 4) { //back to songlist
    currentPage = 1;
    movie7.stop();
  }
  
  if (currentPage == 12 && val == 4) { //back to songlist
    currentPage = 1;
    movie8.stop();
  }
  
  if (currentPage == 13 && val == 4) { //back to songlist
    currentPage = 1;
    movie9.stop();
  }
  return;
}


void movieEvent(Movie movie) {
  movie.read();
}
