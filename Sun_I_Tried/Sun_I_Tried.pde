void setup () {
  size (1000, 600);
}

//draw beach landscape
void draw () {
  background (255);
  
  drawSky (225, 125, mouseY);
  
  drawSun ();
  
  drawWater ();
  
  drawSand ();
  
  
}

//make sky change color as mouse move down
void drawSky(int R, int G, int B){
  fill (R, G, B);
  noStroke();
  rect (0,0,1000,600);
}

//make ocean with darker blue as bg and lighter blur lines
void drawWater () {
  fill (70, 100, 255);
  noStroke ();
  rect (0, 250, 1000, 420);
  stroke (230,230,255);
  strokeWeight (3);
  line (0, 280, 460, 280);
  stroke (230,230,255);
  strokeWeight (3);
  line (85, 300, 655, 300);
  stroke (230,230,255);
  strokeWeight (3);
  line (480, 330, 1000, 330);
}

//make block of sand
void drawSand (){
  fill (225,175,95);
  noStroke ();
  rect (0,400,1000,200);
}

//make sun move with mouse
void drawSun () {
  stroke (255,255,0);
  strokeWeight (2);
  fill (255,200,0);
  ellipse (mouseX,mouseY,110,110);
}
