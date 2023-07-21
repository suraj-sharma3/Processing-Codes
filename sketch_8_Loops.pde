
/*
void setup() {
  size(400, 200);
}

void draw() {
  background(220);

  // For loop to draw 10 circles
  for (int i = 0; i < 10; i++) {
    float x = 50 + i * 30;
    float y = height / 2;
    float diameter = 20;
    ellipse(x, y, diameter, diameter);
  }
}*/



int number = 5; // Change this number to generate the multiplication table

void setup() {
  size(200, 200);
  textSize(20);
}

void draw() {
  background(220);

  int multiplier = 1;
  int result;

  // Printing the multiplication table using a while loop
  int x = 50;
  int y = 50;
  while (multiplier <= 10) {
    result = number * multiplier;
    text(number + " x " + multiplier + " = " + result, x, y);
    y += 20; // Move to the next row
    multiplier++;
  }
}
