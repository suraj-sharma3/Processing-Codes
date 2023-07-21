int number = 5;
String fontName = "Arial";
int fontSize = 20;
color textColor = color(0); // Black color by default

void setup() {
  size(400, 300);
  textAlign(LEFT, CENTER);
}

void draw() {
  background(220);

  int multiplier = 1;
  int result;

  // Display the input text
  fill(textColor);
  textFont(createFont(fontName, fontSize));
  text("Enter a number:", 30, 50);
  text(number, 30, 80);

  // Printing the multiplication table using a while loop
  int x = 50;
  int y = 130;
  while (multiplier <= 10) {
    result = number * multiplier;
    text(number + " x " + multiplier + " = " + result, x, y);
    y += 20; // Move to the next row
    multiplier++;
  }
}

void keyPressed() {
  // Append the typed key to the input text
  if (key >= '0' && key <= '9') {
    number = int(key) - '0';
  }
}

void keyReleased() {
  // Change font, color, or text size when keys 'f', 'c', or 's' are pressed
  if (key == 'f') {
    fontName = "Courier New";
  } else if (key == 'c') {
    textColor = color(random(255), random(255), random(255));
  } else if (key == 's') {
    fontSize = int(random(20, 40));
  }
}
