void setup() {

  Cookie aCookie = new Cookie("delicious", "tiny");
  Cookie anotherCookie = new Cookie ("choco", "BIG" );
  //println("what size of cookie?");
  //println(aCookie.size);
  //println (anotherCookie.size);
  //like arrays, we need to use 'new' keyword when creating object. 'new' keyword tells java to do memory stuff
  //dot (.) operator used to acces the varibles and methods of a class instance.

  aCookie.cookieInfo();
  anotherCookie.cookieInfo ();
  aCookie.eat("yummily");
  
  String str = aCookie.getSize();
}

void draw () {
}

//name of class = capital letter
class Cookie {
  String kind;
  String size;

  //constructor
  Cookie(String whatKind, String whatSize) {

    //instantiation
    println ("baked new " + whatSize + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
  }
  //method (function inside the class scope, outside of constructor)
  void cookieInfo() {
    println("this cookie is " + size + " " + kind + " cookie!");
  }
  
  void eat(String modifier){
  println("you eat the cookie " + modifier);
  }
  
  String getSize(){
  return size;
  }
}
