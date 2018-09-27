//draw loop is for animation, to vary each time
//loop inside of draw is for repeating elements multiple of times in one frame of animation

//NESTED LOOP
//example, instead of having 2 separate for loops

int b;
int r = 120;
int g = 180;
int x, y;

void setup() {
  size (800, 600);
}

void draw() {
  drawPool ();
  waterTension();
}

void drawPool() {
  b = int (map (mouseX, 0, width, 180, 255));

  for (int y = 0; y < height; y = y +20) {
    for (int x = 0; x < width; x = x +20) {
      stroke (r, g, b);
      strokeWeight (5);

      float d = dist(width/2, height/2, mouseX, mouseY);
      float maxDist = dist(0, 0, width/2, height);
      float deepBlue = map(d, 0, maxDist, b, 255);
      fill (20, 230, deepBlue);
      rect (x, y, 20, 20);
    }
  }
}

void waterTension() {
  stroke (255);
  strokeWeight(2);
  noFill();
  arc(mouseX, mouseY, 70, 70, 0, HALF_PI);
  arc (mouseX, mouseY, 85, 85, HALF_PI, PI);
  arc (mouseX, mouseY, 70, 70, PI, PI+QUARTER_PI);
  arc (mouseX, mouseY, 110, 110, 0, PI+QUARTER_PI);
  ellipse (mouseX, mouseY, 50, 50);
  ellipse (mouseX, mouseY, 30, 30);
  ellipse (mouseX, mouseY, 10, 10);
}

//dist(x1,y1,x2,y2)
