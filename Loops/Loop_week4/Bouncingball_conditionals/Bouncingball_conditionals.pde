int x, y;
int size;
int xSpeed, ySpeed;
color bgColor;
int colorRange;
int r, g, b;

void setup() {
  size (500, 500);
  x = width/2;
  y = height/2;

  //xSpeed = int (random(-5,5));
  //ySpeed = int (random(-5,5));

   if (xSpeed == 0 || ySpeed == 0 || xSpeed == ySpeed){
  xSpeed = int (random(-5,5));
  ySpeed = int (random(-5,5));
  }

  size = 100;
}

void draw() {
  background (bgColor);
  //map
  colorRange = int (map (x,0,width,0,150));
  // first two variables are the natyral range of value "x"
  // the second two variables are the range you want to map your variable to
  bgColor = color(colorRange,0, 100);
  
  g = int (map(y,0,height,0,255));
  b = int(map (mouseX,0,width,0,255));
  fill(0,g,0);
  colorRange = int (map (0,y,0,height,150));
  ellipse (x, y, size, size);

  println("x: " + xSpeed + "y: " + ySpeed);

  x = x + xSpeed;
  y = y + ySpeed;

  if (x<=size/2 || x>=width-size/2) {
    xSpeed = int (random (-5,5));
    xSpeed = - xSpeed;
  }
  if (y<=size/2 || y>=height-size/2) {
    ySpeed = - ySpeed;
    xSpeed = int (random (-5,5));
  }
}
