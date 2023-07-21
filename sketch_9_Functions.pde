int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

float divide(float a, float b) {
  return a / b;
}

void setup() {
  size(200, 150);
  
  int a = 5;
  int b = 3;
  
  // Call the functions and display the results
  int resultAdd = add(a, b);
  int resultSubtract = subtract(a, b);
  float resultDivide = divide(a, b);
  
  println("Addition: " + resultAdd);
  println("Subtraction: " + resultSubtract);
  println("Division: " + resultDivide);
}
