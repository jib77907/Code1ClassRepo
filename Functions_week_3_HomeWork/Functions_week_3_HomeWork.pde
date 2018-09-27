void setup () {
  //Write a function that checks to see if the number given as an argument is greater than 10, then returns true or false.

  int num1 = 9;
  boolean num1IsGreaterThanTen = tenFunction(num1);

  int num2 = 19;
  boolean num2IsGreaterThanTen = tenFunction(num2);

  println("Is " + num1 + " greater than ten?\t" + num1IsGreaterThanTen);
  println("Is " + num2 + " greater than ten?\t" + num2IsGreaterThanTen);

  //Write a function that concatenates two Strings given as arguments together, then returns the result.

  println (concatenateStr());

  //Write a function that returns the squared value of an argument number.

  int num3 = 10;
  float num3SquareResult = squareArg (num3);
  println ("The squared result of " + num3 + " is " + num3SquareResult);

  int num4 = 8;
  float num4SquareResult = squareArg (num4);
  println ("The squared result of " + num4 + " is " + num4SquareResult);
}

//Write a function that checks to see if the number given as an argument is greater than 10, then returns true or false.

boolean tenFunction(int num) {
  println ("If a number is greater than 10, return 'true,' otherwise return 'false.'");
  if (num > 10) {
    return true;
  } else {
    return false;
  }
}

//Write a function that concatenates two Strings given as arguments together, then returns the result.

String concatenateStr() {
  String Str1 = "I want pizza.";

  String Str2 = "I want french fries.";
  println ( "\nThis function concatenates two strings together");
  return (Str1 + Str2);
}

//Write a function that returns the squared value of an argument number.

Float squareArg (int num) {
  println ("\nThis function returns the squared number of the argument");
  return (sq(num));
  //or
  //int squareNumber (int num){
  //return int(sq(num));
  //return num*num;
  //return pow(num, 2);
  //}
}
