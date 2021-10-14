import processing.sound.*;//load game music
SoundFile game;

//page 0: start
PFont letterAvenir; //text font setup
int currentPage = 0;
PImage bird;
boolean start = true;

//page 1: guide
String guide1 = "Lead the bird to the end of the screen.";
String guide2 = "Be careful: the barriers can move! [C]";
boolean next = true;

//page 2: game
int numBarriers = 40; // set up the barriers in the game
float spring = 0.05;
float gravity = 0;
float friction = -0.1;
Barrier[] barriers = new Barrier[numBarriers];
boolean dead = false;
//boolean start = true;


float x;//Class Bird: when moving the mouse across the screen, the bird will follow
float y;
float easing = 0.1;

//page 3 + 4: result(s) + restart
String win = "CONGRATS!";
String lost = "END";
String restart = "Restart [R]";


void setup() {
  //page 0
  size (1200, 800);
  background (252, 212, 64);
  printArray(PFont.list());
  letterAvenir = loadFont("AvenirNextCondensed-HeavyItalic-48.vlw");
  bird = loadImage("bird.png");
  game = new SoundFile(this, "game.mp3");

  //page 2: bouncy barriers

  for (int i = 0; i < numBarriers; i++) {
    barriers[i] = new Barrier( random(width), random(height), random(30, 70), i, barriers);
  }

  noStroke();
  fill(255, 204);
}

void draw() {
  //page 0
  textFont(letterAvenir, 300);
  fill(255, 153, 0);
  text("BIRD", 300, 450);

  textFont(letterAvenir, 68);
  fill(44, 198, 42);
  text("push [s] to start", width/2, 600);

  image(bird, 0, height/2, bird.width/2, bird.height/2);

  //page1
  if (currentPage == 1) {
    background(252, 212, 64);
    fill(44, 198, 42);
    textFont(letterAvenir);
    textAlign(CENTER);
    text(guide1, width/2, 350);
    text(guide2, width/2, 450);
  }

  //page2
  if (currentPage == 2) {
    background(252, 212, 64);

    //set up bird
    image(bird, mouseX-70, mouseY-70, 140, 140);

    //set up bouncy barriers
    for (Barrier barrier : barriers) {
      barrier.collide();
      barrier.move();
      barrier.display();
    }

    if (mouseX > 1000) {
      currentPage = 4;
      return;
    }
  }

  //page3
  if (currentPage == 3) {
    background(252, 212, 64);
    fill(44, 198, 42);
    textFont(letterAvenir);
    textAlign(CENTER);
    text(lost, width/2, 350);
    text(restart, width/2, 450);
  }

  //page4
  if (currentPage == 4) {
    background(252, 212, 64);
    fill(44, 198, 42);
    textFont(letterAvenir);
    textAlign(CENTER);
    text(win, width/2, 350);
    text(restart, width/2, 450);
  }
}


class Barrier {

  float w, z;
  float diameter;
  float vw = 10;
  float vz = 10;
  int id;
  Barrier[] others;

  Barrier(float win, float zin, float din, int idin, Barrier[] oin) {
    w = win;
    z = zin;
    diameter = din;
    id = idin;
    others = oin;
  }

  void collide() {
    for (int i = id + 1; i < numBarriers; i++) {
      float dw = others[i].w - w;
      float dz = others[i].z - z;
      float distance = sqrt(dw*dw + dz*dz);
      float minDist = others[i].diameter/2 + diameter/2;
      if (distance < minDist) {
        float angle = atan2(dz, dw);
        float targetW = w + cos(angle) * minDist;
        float targetZ = z + sin(angle) * minDist;
        float aw = (targetW - others[i].w) * spring;
        float az = (targetZ - others[i].z) * spring;
        vw -= aw;
        vz -= az;
        others[i].vw += aw;
        others[i].vz += az;
      }
    }
  }

  void move() {
    vz += gravity;
    w += vw;
    z += vz;
    if (w + diameter/2 > width) {
      w = width - diameter/2;
      vw *= friction;
    } else if (w - diameter/2 < 0) {
      w = diameter/2;
      vw *= friction;
    }
    if (z + diameter/2 > height) {
      z = height - diameter/2;
      vz *= friction;
    } else if (z - diameter/2 < 0) {
      z = diameter/2;
      vz *= friction;
    }
  }

  void display() {
    ellipse(w, z, diameter, diameter);
  }

  void BirdCollidesBarrier() {
    float d = dist(mouseX, mouseY, w, z); 
    float minDist = 70 + diameter/2;
    if (d == minDist) {
      currentPage = 4;
      return;
    }
  }
}

void keyReleased() {
  if (currentPage == 0 && key == 's') {
    currentPage = 1;
  } else if (currentPage == 1 && key == 'c') {
    currentPage = 2;
  } else if (currentPage == 4 && key == 'r') {
    start = true;
    currentPage = 0;
    return;
  } else if (currentPage == 3 && key == 'r') {
    start = true;
    currentPage = 0;
    return;
  }
}
