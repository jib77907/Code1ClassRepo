int givemeAnInt () {
  return 1;
}

int add10(int n) {
  return n+10;
}

//float sqrt (float value){
// //do math
// return result;
//}

boolean yayy() {
  return true;
}

String getHello(String name) {
  return "Hello " + name;
}

void setup() {
  String helloResult = getHello("somebody");
  println(helloResult);
  //println (sqrt(100));
  //int result =  givemeAnInt ();
  //println(givemeAnInt ()+10);
  //println(add10(10));
}



//global variable/ continues to live in scope
//int num = 1000;
//int 

//// variable type    varible name  =  something

//void setup() {
//  int num = 10;
//  println(num);
//}

//void draw(){
//  //redefining the global
//  num = 0;
//  //println(num);
//  printGlobal();
//}

//void printGlobal() {
//  println(num);
//}

//boolean myBool = true;
//myBool = false;


//String myStr = "Hello I'm a String!";
//println(message);

//void sayHello(String name) {
//  String message = "Hello\nthere";
//  println(message + " " + name);
//}

//void setup() {
//  sayHello("Sanchi");
//}
