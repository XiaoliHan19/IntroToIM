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



