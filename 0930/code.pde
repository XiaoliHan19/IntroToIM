PFont letterMontserrat;
//letterMontserrat = loadFont("NotoNastaliqUrdu-48.vlw");
//textFont(letterMonserrat,32);
String[] nouns = {"raindrop", "river", "apple", "leaf", "sunlight", "shadow", "dream", "sunday"};
String[]adjectives = {"crazy", "spinning", "bubbly", "sweet", "illusory", "unreal", "drifting", "broken"};
String[]verbs = {"drops", "laughs", "sleeps", "rains", "runs", "cries", "draws", "hides"};
int n, m, x;

void shuffle() {
  n = int(random(8));
  m = int(random(8));
  x = int(random(8));
}

void setup() {
  size(500, 500, P2D);
  background(215, 213, 237);
  fill(181, 216, 195);
  textSize(32);
  //textAlign(LEFT);
}

void draw() {
  background(91, 86, 180);
  text(nouns[n], 95, 120);
  text(adjectives[m], 45, 60);
  text(verbs[x], 135, 180);
}

void mousePressed() {
  shuffle();
}
