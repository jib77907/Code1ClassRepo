//float[] myArr = {100,200,300};  //array has 3 spaces

//println (myArr [2]);
//myArr[0] = -100;
//myArr [1] *= 2;
//myArr[2] -= 5;


//float[] myArr2 = new float [10];  //10 floats can be store in this array
//myArr2 [0] = 10;
//// this enters array manually

//float[] positions = new float [100];

//void setup () {
//  size (1500, 1000);
//  for (int i =0; i < 100; i++) {                // loop 100 times
//    positions [i] = map (i, 0, 100, 0, width);   // map to width of screen
//  }
//}

//void draw () {
//  background(255);
//  for (int i = 0; i < 100; i++) {           //draw 100 ellipses
//    ellipse (positions[i], map (mouseX, 0, width, 0, i), 50, 300);    //use i position to draw where ellipses gonna go 
//    positions[i] += random (-1, 1);
//  }
//}


//draw 100 ellipses to screen in random locations
//every frame, move ellipses in random amount

float[] xPositions = new float [500];
float[] yPositions = new float [500];

//go\ive random array values
//random()  = 0-1
//random(5) = 0-5
//random(5,10) = 5-10

void setup () {
  size(1000, 1000);
  for (int i = 0; i < 100; i++) {
    xPositions[i] = random(width);
  }

  for (int i = 0; i < xPositions.length; i ++) {          //xPositions.length == 100  
    xPositions[i] = random(width);
    yPositions[i] = random(height);
  }
}

void draw() {
  background(200);
  noStroke();
  for (int i = 0; i < xPositions.length; i ++) {
    fill (map(i, 0, xPositions.length, 0, 255));
    ellipse(xPositions[i], yPositions[i], 30, 30);
    xPositions[i] += random(-3, 3);
    yPositions[i] += random(-3, 3);
  }
}
