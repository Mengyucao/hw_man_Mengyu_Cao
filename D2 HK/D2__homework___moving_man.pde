color black, white;
int colorCounter;
boolean mouseOnRight;
int xPos;
int yPos;
int speed;
int section;

void setup() {
  
  size(400, 600);
  background(170, 187, 204);
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  
  mouseOnRight = false;
  colorCounter = 0;
  
  xPos = width/2;
  yPos = width/2;
  speed = 1;
  section = 0;
}

void draw() {
    //backgrond
  fill(170-colorCounter, 187-colorCounter, 204-colorCounter);
  rect(0, 0, 800, 1200);
  
  if(mouseX >= width/2 && mouseOnRight == false) {
    mouseOnRight = true;
    colorCounter+=5;
}
  if(mouseX < width/2 && mouseOnRight == true) {
    mouseOnRight = false;
    colorCounter +=5;
    section = 1;
}
  
  rectMode(CENTER);
  stroke(53,34,34);
  strokeWeight(2);
  noFill();
  rect(width/2, height/2, 355, 555);
  section = 2;

  
  //head circles
  
  noStroke();
  fill(255);
  rect(width/2, (height/2)-60, 120, 80);
  ellipse(width/2, (height/2)-30, 120, 120);
  section = 3;
  
  //spots
  
  fill(139, 136, 120);
  ellipse((width/2)-30, (height/2)-80, 20, 10);
  ellipse((width/2)+30, (height/2)-80, 20, 10);
  
  fill(black);
  ellipse(xPos-30, yPos+20, 10, 10);
  ellipse(xPos+30, yPos+20, 10, 10);
  
  //clothes
  
  fill(white);
  
  if (mouseX > width/2 && xPos < width) {
  xPos+=speed;
}
else if (mouseX <= width/2 && xPos > 0) {
  xPos-=speed;
  fill(black);
}
  triangle(xPos+60, yPos+300, xPos-60, yPos+300,  xPos, yPos+180);
  
  
  
  fill(black);
  
  if (mouseX > width/2 && xPos < width) {
  xPos+=speed;
}
else if (mouseX <= width/2 && xPos > 0) {
  xPos-=speed;
  fill(white);
}
 
 
  ellipse(xPos+20, yPos+230, 20, 20);
  ellipse(xPos-20, yPos+230, 20, 20);
  ellipse(xPos+40, yPos+225, 10, 10);
  ellipse(xPos-40, yPos+225, 10, 10);
  ellipse(xPos+50, yPos+220, 10, 10);
  ellipse(xPos-50, yPos+220, 10, 10);
   fill(white);
  
  if (mouseX > width/2 && xPos < width) {
  xPos+=speed;
}
else if (mouseX <= width/2 && xPos > 0) {
  xPos-=speed;
  fill(black);
}
  
  
  
  
  
  fill(black);
  ellipse((width/2)-20, (height/2)-130, 30, 30);
  ellipse((width/2)+30, (height/2)-130, 50, 50);
  ellipse((width/2)+60, (height/2)-120, 30, 30); 
  ellipse((width/2)-40, (height/2)-150, 30, 30);
  ellipse((width/2)-60, (height/2)-110, 45, 45);
  triangle(width/2, (height/2)-10, (width/2)-10, height/2, (width/2)+10, height/2);
  
  triangle(width/2, (height/2)+40, (width/2)-10, (height/2)+30, (width/2)+10, (height/2)+30);
  if (mousePressed) 
      fill(255,64,64);
  triangle(width/2, (height/2)+40, (width/2)-10, (height/2)+50, (width/2)+10, (height/2)+50);
  triangle(width/2, (height/2)+210, (width/2)-10, (height/2)+50, (width/2)+10, (height/2)+50);
  if (mousePressed) 
      fill(173,255,47);
  triangle((width/2)+60, (height/2)-20, (width/2)-2, (height/2)-40, (width/2)+40, height/2);
  triangle((width/2)-60, (height/2)-20, (width/2)+2, (height/2)-40, (width/2)-40, height/2);
  section = 4;
  
}
