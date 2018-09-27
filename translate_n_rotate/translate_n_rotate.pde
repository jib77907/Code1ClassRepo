float count = 0;

void setup () {
  size (600, 600) ;
}

void draw() {
  //translate(100,300);
  //ellipse (0,0,50,50);
  //translate (100,0);
  //ellipse(0,0,50,50);
  //translate (100,0);
  //ellipse(0,0,50,50);
  //translate (100,0);
  //ellipse(0,0,50,50);
  //translate (100,0);
  //ellipse(0,0,50,50);
  //translate (-500,-300);
  //ellipse(0,0,100,100);

  //push
  //background(205);
  pushMatrix();
  translate(300, 300);
  float degrees = count;
  count = count + 0.3;
  float rads = radians(degrees);
  //rotate looks for radians
  rotate (rads);
  //rotate(PI/4);
  //rotate (TWO_PI); or PI * 2
  rectMode(CENTER);
  rect (0, 0, 100, 100);

  pushMatrix();
  translate(300, 0);
  rotate(radians(mouseX));
  rect (0, 0, 50, 50);  
  popMatrix();
  //pop

  pushMatrix();
  rotate(radians(count * 4));
  rect (0, 0, 30, 30);
  popMatrix();

  //rect(0, 0, 50, 50);
  popMatrix();

  ////draw back a origin
  //ellipse(0, 0, 200, 200);
}
