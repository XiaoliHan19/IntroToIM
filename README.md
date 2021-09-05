# IntroToIM

##0907 Assignment##
//Self Protrait

void setup(){
  size (500, 500);
}

void draw(){
  
  background(255, 200, 70);
  
  //use mouseX and mouseY to draw a small ellipse 
  ellipse (mouseX, mouseY, 100, 35);
  println("mouse coordinates = " + mouseX +"," + mouseY);
  
  //use mouseX and mouseY to draw a small circle 
  circle (mouseX, mouseY, 50);
  println("mouse coordinates = " + mouseX +"," + mouseY);
  
  //use mouseX and mouseY to draw a small triangle
  triangle (mouseX, mouseY, mouseX, mouseY, mouseX, mouseY);
  println("mouse coordinates = " + mouseX +"," + mouseY);
  
  //draw eye glasses and eye shadows
  fill(100,10,25);
  arc(100, 100, 100, 100, 0, PI, CHORD);

  {
    noStroke();
    int ellipseTopLeftX = 150;
    fill(255, 255, 255);
    ellipse (ellipseTopLeftX, ellipseTopLeftX, 150, 50);
  }
  
  {
    int circleTopLeftX = 150;
    fill(0,10,10);
    circle (circleTopLeftX, circleTopLeftX, 45);
  }

  {
    noStroke();
    int ellipseTopRightX = 345;
    fill(255, 255, 255);
    ellipse (ellipseTopRightX, ellipseTopRightX-125, 150, 50);
  }

  {
    int circleTopRightX = 345;
    fill(0,10,10);
    circle (circleTopRightX, circleTopRightX-125, 45);
  }

  {
    noStroke();
    int triangleMiddleX = 200;
    fill(30,10,255);
    triangle (triangleMiddleX, 250, //top corner
              triangleMiddleX-80, 320, //bottom left corner
              triangleMiddleX+70, 290); //bottom right corner
  }
  
  {
    noStroke();
    int circleBottomRightX = 260;
    fill(255,30,0);
    circle (circleBottomRightX, circleBottomRightX+110, 35);
  }
  
  {
    noStroke();
    int circleEdgeX = 350;
    fill(255,30,0);
    circle (circleEdgeX, circleEdgeX-330, 300);
  }
  
  {
    fill(100,10,25);
    arc(120, 180, 100, 100, 0, PI, CHORD);//eye glasses (left)
  }
  
  {
    fill(100,10,25);
    arc(350, 260, 100, 100, 0, PI, CHORD);//eye glasses (right)
  }
  
  {
    fill(100,10,25);
    line(200, 300, 200, 400);
  }
  
  {
    noStroke();
    int circleEye1X = 80;
    fill(25,200,90);
    circle (circleEye1X, circleEye1X+50, 15);
  }
  
  {
    noStroke();
    int circleEye1X = 110;
    fill(25,200,90);
    circle (circleEye1X, circleEye1X+5, 22);
  }
  
  {
    noStroke();
    int circleEye1X = 145;
    fill(25,200,90);
    circle (circleEye1X, circleEye1X-35, 22);
  }
  
  {
    noStroke();
    int circleEye1X = 175;
    fill(25,200,90);
    circle (circleEye1X, circleEye1X-60, 22);
  }
  
  {
    noStroke();
    int circleEye1X = 205;
    fill(25,200,90);
    circle (circleEye1X, circleEye1X-80, 15);
  }
  
   {
    noStroke();
    int circleEye2X = 290;
    fill(25,200,90);
    circle (circleEye2X, circleEye2X-100, 15);
  }
  
   {
    noStroke();
    int circleEye2X = 320;
    fill(25,200,90);
    circle (circleEye2X, circleEye2X-135, 22);
  }
  
  {
    noStroke();
    int circleEye2X = 355;
    fill(25,200,90);
    circle (circleEye2X, circleEye2X-172, 22);
  }
  
  {
    noStroke();
    int circleEye2X = 385;
    fill(25,200,90);
    circle (circleEye2X, circleEye2X-197, 22);
  }
  
  {
    noStroke();
    int circleEye2X = 415;
    fill(25,210,50);
    circle (circleEye2X, circleEye2X-212, 15);
  }
}
