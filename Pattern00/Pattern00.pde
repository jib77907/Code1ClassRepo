//I couldn't use the conditional to make the pattern to move across in the canvas when using int x and int y or xPos and yPos, the only way I could make the pattern repeat on canvas is with having the translate on mouseX and mouseY so when it moves it creates a pattern?? 
//otherwise the pattern just repeat in one place and doesn't move across the canvas.


float count = 0;
//int x = 0;
//int y = 0;
float xPos = 100;
float yPos = 100;

void setup () {
  size (1000, 1000); 
  rectMode(CENTER);
}

void draw () {
  //background (0);

  pushMatrix();
 // translate (x, count + 50);

  float degrees = count;
  count = count + 15;
  float rads = radians(degrees);

  translate (mouseX, mouseY);
  rotate (rads);
  stroke(255);
  strokeWeight (2);
  fill (xPos, mouseX, mouseY);
  rect (xPos, yPos, 100, 100);

  xPos = xPos + 40;

  if (xPos>width) {
    xPos = 0;
    yPos = xPos+150;
  }

//  if (y > height + 50) {

//   x = x + 50;
//   y = 0;
//  }

 popMatrix();
}
