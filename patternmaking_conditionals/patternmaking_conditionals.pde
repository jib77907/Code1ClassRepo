int x, y;
int size = 100;

void setup() {
  size (500, 500);
  x=size/2;
  y=size/2;
  rectMode(CENTER);  //this draws shape from the center
}

void draw() {
  rect(x, y, size, size);
  x+=5;
  //x++; (moving across)
  if (x>width || y>height) { //x position goes beyond screen
    //then reset xPosition to 0
    x = 0;
    y = y + size;  //take last y Position and add size(100) to it
  
  }
}
