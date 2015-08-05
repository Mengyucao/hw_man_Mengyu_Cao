
color black, white;
int ballX, ballY;
void setup() {
  
  size(400, 600);
  black = color(0, 0, 0);
  white = color(255, 255, 255);
  ballX = 20;
  ballY = 50;
  
  background(170, 187, 204);
  
  frameRate(80);
  
}

void draw() {
  
  if (mousePressed) {
    fill(random(255), random(255), random(255));
  } else {
  fill(0);
  }
  ellipse(mouseX, mouseY, 20, 20);
  
  ballX++;
  ballY++;
  
  rectMode(CENTER);
  stroke(53,34,34);
  strokeWeight(2);
  noFill();
  rect(width/2, height/2, 355, 555);
  
  //head circles
  
  noStroke();
  fill(255);
  rect(width/2, (height/2)-60, 120, 80);
  ellipse(width/2, (height/2)-30, 120, 120);
  
  //spots
  
  fill(139, 136, 120);
  ellipse((width/2)-30, (height/2)-80, 20, 10);
  ellipse((width/2)+30, (height/2)-80, 20, 10);
  
  fill(black);
  ellipse((width/2)-30, (height/2)-80, 10, 10);
  ellipse((width/2)+30, (height/2)-80, 10, 10);
  
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
  triangle((width/2)+30, (height/2)-30, (width/2)-2, (height/2)-40, (width/2)+40, height/2);
  triangle((width/2)-30, (height/2)-30, (width/2)+2, (height/2)-40, (width/2)-40, height/2);
  
}
