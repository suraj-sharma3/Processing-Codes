int myInteger = 42;
float myFloat = 3.14;
char myChar = 'A';
boolean myBoolean = true;
String myString = "Hello, Processing!";
int[] myIntArray = {1, 2, 3, 4, 5};
String[] myStringArray = {"apple", "banana", "orange"};

void setup() {
  size(400, 200);
}

void draw() {
  background(220);

  // Print all the initialized variables
  println("myInteger: " + myInteger);
  println("myFloat: " + myFloat);
  println("myChar: " + myChar);
  println("myBoolean: " + myBoolean);
  println("myString: " + myString);
  
  println("myIntArray:");
  for (int i = 0; i < myIntArray.length; i++) {
    println("  " + myIntArray[i]);
  }
  
  println("myStringArray:");
  for (int i = 0; i < myStringArray.length; i++) {
    println("  " + myStringArray[i]);
  }
}
