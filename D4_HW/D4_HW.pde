PImage diyige;
PImage dierge;
PImage disange;
PImage disige;
PImage diwuge;
PImage diliuge;
PImage diqige;
PImage dibage;
PFont myFont;
float r = 200;
float speed = 0.015;
float x,y,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8;


void setup() {
  size(640,600);
  background(207, 207, 207);
  diyige = loadImage("diyige.png");
  dierge = loadImage("2.png");
  disange = loadImage("3.png");
  disige = loadImage("4.png");
  diwuge = loadImage("5.png");
  diliuge = loadImage("8.png");
  diqige = loadImage("9.png");
  dibage = loadImage("11.png");
  myFont = loadFont("Allstar-Regular-48.vlw");

}

void draw() {

  background(207, 207, 207);
  fill(255,255,255);
  text("hello  :)",200,200);
  text("take me away",200,300);
  textFont(myFont, 45);
  float x = width/3 + r* cos(frameCount*speed);
  float y = height/3 + r* sin(frameCount*speed);
  image(diyige, x, y, 300, 225);
  
  float x2 = width/3 - r* cos(frameCount*speed);
  float y2 = height/3 + r* sin(frameCount*speed);
  image(dierge, x2, y2, 300, 225);

  float x3 = width/2 + r* cos(frameCount*speed);
  float y3 = height/2 - r* sin(frameCount*speed);
  image(disange, x3, y3, 300, 225);

  float x4 = width/5 - abs(r* cos(frameCount*speed));
  float y4 = height/5 + r* sin(frameCount*speed);
  image(disige, x4, y4, 300, 225);

  float x5 = width/4 - r* cos(frameCount*speed);
  float y5 = height/4 + abs(r* sin(frameCount*speed));
  image(diwuge, x5, y5, 300, 225);

  float x6 = width/2.5 - r* cos(frameCount*speed);
  float y6 = height/2.5 + abs(r* sin(frameCount*speed));
  image(diliuge, x6, y6, 300, 225);
  
  float x7 = width/0.5 - r* cos(frameCount*speed);
  float y7 = height/0.5 + abs(r* sin(frameCount*speed));
  image(diqige, x7, y7, 300, 225);
  
  float x8 = width/5.5 + r* cos(frameCount*speed);
  float y8 = height/1.5 - abs(r* sin(frameCount*speed));
  image(dibage, x8, y8, 300, 225);
  
}
