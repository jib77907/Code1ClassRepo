//map() takes 5 arguments
//example
//mouse x range = 0-600
//color range = 0-255
// >>>color = map (mouseX, 0[min], 600[max], 0[min], 255[max])
//background(color); == color changes as mouse x move

void setup () {
  size (600, 600);
}

void draw () {
  //float bgColor = map (mouseX, 0, width, 0, 255);
  //background (bgColor); 
  //println (bgColor);

  for (int i = 0; i < 10; i ++) {  //i is counting up to 10
    float c = map (i, 0, 10, 0, 255);
    fill (c);
    println (c);
    
    //ellipse (30 + i * 60, height/2, 50 - (i * 5), 50 + i * 10);  //1st ellipse is 30 + 0+60 = 30, 2nnd ellipse is 30+1 * 60 = 90 ; and so on...
    
    ellipse (map (i, 0, 10, 0, width), height/2, 50 - (i * 5), 50 + i * 10);
  }

  rect (0, 0, map (mouseX, 0, width, 0, 100), mouseY);
}
