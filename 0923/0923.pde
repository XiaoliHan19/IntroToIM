Leaf myLeaf;
Leaf[] myLeafArray = new Leaf[1];


void setup() {
  size (650, 800);
  
  myLeafArray[0] = new Leaf(color(232, 202, 194), 100, 300, 50, 30, 5);
  //float xx;
  //float yy;

  //for (int i=0; i < myLeafArray.length; i++) {
  //  float xx = random(100, 600);
  //  float yy = random(100, 900);
  //  float ww = random(20, 100);
  //  float hh = random(40, 250);
  //  float rr = random(-5, 12);
  //  float c1 = random(0, 40);
  //  float c2 = random(0, 30);
  //  float c3 = random(0, 80);

  //  myLeafArray[i] = new Leaf(color(44+c1,111+c2,68+c3), xx, yy, ww, hh, rr
  //        );
  //}

  //for (int i=0; i < myLeafArray.length; i++) {
  //  myLeafArray[i].display();
  //}
  //myLeaf = new Leaf(color(44,111,68), 100, 300, 50, 150, 5);
}

void draw() {

  background(83, 133, 165);
  noStroke();
  rect(405, 105, 150, 250);
  triangle(240, 410, 310, 410, 275, 450);
  rect(260, 430, 30, 200);
  ellipse(275,700,90,200);
  
  

  for (int i = 0; i < myLeafArray.length; i++) {
    myLeafArray[i].display();
  }


  //ellipse(100, 100, 80, 150);

  //noStroke();
  //arc(100, 100, 100, 100, 0, radians(130));
  //beginShape();
  //curveVertex(0, 100);
  //curveVertex(50, 140);
  //curveVertex(200, 160);
  //curveVertex(350, 140);
  //curveVertex(400, 100);
  //endShape();

  //beginShape();
  //curveVertex(0, 180);
  //curveVertex(50, 140);
  //curveVertex(200, 120);
  //curveVertex(350, 140);
  //curveVertex(400, 180);
  //endShape();
}
void mousePressed () {
  float xx = mouseX;
  float yy = mouseY;
  float ww = random(20, 100);
  float hh = random(40, 250);
  float rr = random(-5, 12);
  float c1 = random(0, 40);
  float c2 = random(0, 30);
  float c3 = random(0, 80);


  Leaf leafinstance = new Leaf(color(44+c1, 111+c2, 68+c3), xx, yy, ww, hh, rr);
  myLeafArray = (Leaf[]) append(myLeafArray, leafinstance);
}



class Leaf {
  color c;
  float x;
  float y;
  float w;
  float h;
  float r;

  Leaf(color tempC, float tempX, float tempY, float tempH, float tempW, float tempR) {
    c = tempC;
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    r = tempR; //rotation
  }

  void display() {
    //noStroke();
    fill(c);


    float theta = map(x, y, 0, width, random(-5, 12));
    //rotate(random(-5, 12));
    //rotate(theta);
    ellipseMode(CENTER);
    ellipse(x, y, 0.5*w, 2*h);/////////////////////change size
  }
}
