void setup() {
  // Arithmetic Operators
  int a = 5;
  int b = 3;

  int sum = a + b;      // Addition
  int difference = a - b; // Subtraction
  int product = a * b;  // Multiplication
  int quotient = a / b; // Division
  int remainder = a % b; // Modulo (remainder after division)

  // Comparison Operators
  int x = 10;
  int y = 5;

  boolean isEqual = x == y;     // Equal to
  boolean isNotEqual = x != y;  // Not equal to
  boolean isGreater = x > y;    // Greater than
  boolean isLess = x < y;       // Less than
  boolean isGreaterOrEqual = x >= y; // Greater than or equal to
  boolean isLessOrEqual = x <= y;    // Less than or equal to

  // Logical Operators
  boolean p = true;
  boolean q = false;

  boolean logicalAND = p && q; // Logical AND
  boolean logicalOR = p || q;  // Logical OR
  boolean logicalNOT_p = !p;   // Logical NOT (negation)

  // Assignment Operators
  int num = 5;

  num += 3; // Equivalent to: num = num + 3;
  num -= 2; // Equivalent to: num = num - 2;
  num *= 4; // Equivalent to: num = num * 4;
  num /= 2; // Equivalent to: num = num / 2;
  num %= 3; // Equivalent to: num = num % 3;

  // Increment and Decrement Operators
  int counter = 0;

  counter++; // Increment by 1 (post-increment)
  ++counter; // Increment by 1 (pre-increment)
  counter--; // Decrement by 1 (post-decrement)
  --counter; // Decrement by 1 (pre-decrement)

  // Printing the output
  println("Arithmetic Operators:");
  println("Sum: " + sum);
  println("Difference: " + difference);
  println("Product: " + product);
  println("Quotient: " + quotient);
  println("Remainder: " + remainder);
  println();

  println("Comparison Operators:");
  println("Is Equal: " + isEqual);
  println("Is Not Equal: " + isNotEqual);
  println("Is Greater: " + isGreater);
  println("Is Less: " + isLess);
  println("Is Greater or Equal: " + isGreaterOrEqual);
  println("Is Less or Equal: " + isLessOrEqual);
  println();

  println("Logical Operators:");
  println("Logical AND: " + logicalAND);
  println("Logical OR: " + logicalOR);
  println("Logical NOT (p): " + logicalNOT_p);
  println();

  println("Assignment Operators:");
  println("num += 3: " + num);
  num = 5; // Reset num to 5 for the next examples
  println("num -= 2: " + num);
  num = 5;
  println("num *= 4: " + num);
  num = 5;
  println("num /= 2: " + num);
  num = 5;
  println("num %= 3: " + num);
  println();

  println("Increment and Decrement Operators:");
  println("Counter (post-increment): " + counter++);
  counter = 0; // Reset counter to 0 for the next examples
  println("Counter (pre-increment): " + ++counter);
  counter = 0;
  println("Counter (post-decrement): " + counter--);
  counter = 0;
  println("Counter (pre-decrement): " + --counter);
}
