void setup () {
  size (1000, 1000);
}

void draw () {
  background(255);
  alienFace(100, 100, 400);
  alienFace(200, 200, 400);
  alienFace(200, 400, 400);
  alienFace(300, 150, 400);
  //greyCircle (width/2, height/2, mouseX);
  greyCircle (width/2, height/2, 500, mouseX);

  //printNumber (8898, 1.0);
}


//create a new function called alienFace()

//size
void alienFace(int x, int y, int size) {
  ellipse (x, y, size, size);
  ellipse (x, y, size/4, size/4);
  ellipse (y, y, size/4, size/4);
}

//void printNumber (int num, float someOtherNum) {
// print (num);


void greyCircle(int x, int y, int r) {
  fill(255, 0, 200, 50);
  ellipse (x, y, r*2, r*2);
}

void greyCircle (int x, int y, int r, int c) {
  fill (c);
  ellipse (x, y, r*2, r*2);
}
