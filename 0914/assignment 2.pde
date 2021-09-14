At first, I want to create a design of sea wave lapping against the beach. However, my skills did not match my thoughts ---- the sea waves ended up looking quite 
ugly, so I gave up on that idea and got rid of the semi-circles. My final version consists of a moon and my imaginary sea wave: I was exploring different functions 
and thinking this one might share some similarities with the waves. I still need to practice more, and also it'd be better to have a more concrete idea before making
any works.

Here are my codes (still includes the ugly sea waves):

int arcSize=40;

void setup() {

  size(500, 600);
  
  //strokeWeight(2);
  
  background(7, 59, 147);
  
  noStroke();
  
  circle(400,150,100);
  
  //for (int x = 0; x < 40; x++) {
  
  //  for (int y = 0; y < 40; y++) {
  
  //    arc(x*(arcSize), y*(arcSize), arcSize, arcSize, 0, PI, CHORD);
  
      //fill(230, 237, 250);
  
    }
    
  //}  
  
//}

void draw(){

size(500, 600);

   smooth();
   
   noStroke();
   
   for (int y = 0; y <= height; y += 50) {
   
     for (int x = 20; x <= width; x += 80) {
     
       ellipse(x, x+y, 40-y, 40-x/10.0);
       
     }
     
   }
   
} 



