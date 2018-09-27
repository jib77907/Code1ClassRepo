//FOR LOOP

int size = 100;

void setup() {
  size (1000, 1000);


  //simple for loop
  //counts by 2\1 from 0 to 5
  for (int i = 0; i<5; i++) {
    println (i);
  }

  // for is kinda like if
  //++ is shorthand for +1
  //+=2 is add 2 every single time

  //simple for loop
  //counts by 2 from 0 to 10
  for (int i = 0; i<10; i+=2) {
    println (i);
  }
}

void draw() {
  background (255);
  //for (int i = 0; i < 6; i++) {
  //  for (int j = 0; j<6; j++) {
  //    ellipse (i*100, j * 100, 50, 50);
  //  }
  //}
  
  for (int i=0; i<= width; i+=size) {
    for (int j = 0; j<= height; j+=size){
    int b = int(map(i,0,width,0,255));
    int g = int(map(j,0,height,0,255));
  // map opacity to our circle to how close mouse is to circle
  
  //calculate distance from mouse to circle //distance formula
  float dist = dist (i,j, mouseX, mouseY);
  //use map function to map from 0, width, 0, 255
  
  int o = int(map(dist, 0,100,0,255));
    fill (0,g,b, o);
   ellipse(i,j,size,size); 
  }
  }
}
