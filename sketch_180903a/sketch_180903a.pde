  //start with a square canvas of 1000 by 1000 pixels
  //draw an ellipse in the center, radius 360
  //draw an ellipse in the center, radius 80
  //draw a line down the middle of the canvas, make the stroke white
  //draw 2 diagonal lines from corner to corner, making an x
  //draw 4 200 by 200 squares, with rounded edges, and no fill, around the ellipse, but not touching the ellipse
  //draw 2 triangle at the sides of the canvas, the highest point touching the center of the ellipse, no fill
  
void setup () {
  size (1000, 1000);
}
void draw () {
  ellipse (500, 500, 360, 360);
  stroke (0);
  ellipse (500, 500, 80, 80);
  stroke (255);
  line (500, 0, 500, 1000);
  stroke (0);
  line (0, 0, 1000, 1000);
  line (0, 1000, 1000, 0);
  noFill ();
  rect (250, 250, 200, 200, 60);
  rect (550, 250, 200, 200, 60);
  rect (250, 550, 200, 200, 60);
  rect (550, 550, 200, 200, 60);
  triangle (0, 250, 500, 500, 0, 750);
  triangle (1000, 250, 500, 500, 1000, 750);

}
