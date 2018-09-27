//if (x < width) {
//does sth
//can happen or not happen

//2 kinds of loop: while and for

// while (x < width) {...}
//can happen to infinity

//for loop = shorthand for while loop
//example

//int x = 0;
//while (x < width) {   //boolean expression
// line (x,0,x,height);
// x = x + 20;      //incrementation
//}
//the for loop for thhis would be..
//for (int x = 0; x < width ; x = x+20){
//  line (x, 0, x, height);
//}

//loop must always have an exit condition, otherwise it is infinite

//Write 3 loops (any kind) that will loop 10 times, in different ways (e.g. 0,1,2,3,4,5,6,7,8,9, 10,9,8,7,6,5,4,3,2,1, 10,20,30, ... etc.)

float x = 0;
float y = 2;

void draw (){ 

//loop 1
while (x < 60) {
 println(x);
 x = x + 6;
}

//loop 2
while (y < 22){
println (y);
y = y+2;
}

//loop 3
for (float x = 0; x < 1; x = x + 0.1){
println(x);
}

}


//Write a while loop that will result in an infinite loop.

//int x = 0;
//while (x < 20) {
//  println(x);
//  x = x - 2; 
//}



//Write a for loop that will result in an infinite loop.

//int x = 0;
//for (x = 0; x < 50; x = x - 1) {
//  println(x);
//}
