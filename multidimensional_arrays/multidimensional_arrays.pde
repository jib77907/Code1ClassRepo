//int [][] myarr= {
//{1,100,1000},
//{2,-2,222},
//{9,987,789}
//};

//Multideimensional arrays store info that can also be stored by a single dimensional array,
//if multiple dimecsion make sense for the context

int [][] myarr;
float numCells = 50;

void setup() {
  size (500, 500);
  myarr = new int [numCells] [numCells];

  // loop through all the positions in the array to assign values.

  for (int i = 0; i <myarr.length; i++) {
    for (int j =0; j < myarr[0].length; j++) {  //length of array of array
      myarr[i][j] = int(map (i+j,0,myarr.length * 2, 0, 255));   //cast the returned value to another type of variable
    }
  }

  //for (int i =0; i< myarr.length; i++) {
  //  for (int j = 0; j< myarr[0].length; j++) {
  //    stroke(myarr[i][j]);
  //    point(i,j);
  //  }
  //}
  rectMode(CENTER);
}

void draw() {
  
   for (int i =0; i< myarr.length; i++) {
    for (int j = 0; j< myarr[0].length; j++) {
      myarr[i][j]++;
      if (myarr[i][j] > 255) {
        myarr[i][j] = 0;
      }
      noStroke();
      fill(myarr[i][j]);
      pushMatrix();
      translate (map(i, 0, myarr.length, 0, width), map (j, 0, myarr.length, 0, height);
      rect (0,0,width/numCells,height/numCells);
      //rect (map(i,0,myarr.length, 0, width),map(i,0,myarr.length, 0, height),width/numCells,height/numCells);
      //point(i,j);
    }
  }
}
