void setup() {
  size(400, 200);
}

void draw() {
  background(220);

  // Print text to the console
  print("Hello, ");
  print("Processing!");
  
  // Draw shapes on the canvas
  fill(255, 0, 0); // Set fill color to red (R, G, B)
  stroke(0); // Set stroke color to black
  strokeWeight(2); // Set stroke weight to 2 pixels

  // Draw a rectangle
  rect(50, 100, 100, 50);

  // Draw an ellipse
  fill(0, 255, 0); // Set fill color to green
  ellipse(250, 100, 80, 80);

  // Draw a line
  stroke(0, 0, 255); // Set stroke color to blue
  line(300, 50, 350, 150);

  // Draw a point
  strokeWeight(5); // Set stroke weight (thickness) to 5 pixels
  point(200, 150);
}
