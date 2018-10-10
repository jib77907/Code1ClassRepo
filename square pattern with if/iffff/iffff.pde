void setup () {
  size (500, 500);
}


//void draw() {
//  if (mouseX > width/2) {
//    background(255, 0, 0);
//  } else if (mouseX > width/4) {
//    background (0, 0, 255);
//  } else {
//    background(200);
//  }

//}

float xPos = -50;
float yPos = 0;
//create a shape that move from left to right across the screen
//once shape is off side of the screen
//go back and down little bit
//continue moving right

void draw() {
  rectMode(CENTER);
  pushMatrix();
  translate (xPos, yPos);
  rotate(radians(xPos));
  rect (0, 0, 30, 30);
  popMatrix();
  xPos = xPos + 40;
  // if the rect position is off the right side of screen
  if (xPos>width + 50) {
    xPos = 0;
    yPos = yPos+40;
  }
}
