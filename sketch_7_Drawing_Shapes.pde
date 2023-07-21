void setup() {
  size(400, 400);
  background(220);
}

void draw() {
  // Draw different shapes
  fill(255, 0, 0); // Set fill color to red (R, G, B)
  stroke(0);       // Set stroke color to black (R, G, B)

  // Draw a rectangle
  rect(50, 50, 100, 50);

  // Draw an ellipse
  fill(0, 255, 0); // Set fill color to green
  ellipse(200, 100, 80, 80);

  // Draw a triangle
  fill(0, 0, 255); // Set fill color to blue
  triangle(300, 200, 350, 250, 250, 250);

  // Draw a line
  stroke(255, 0, 255); // Set stroke color to magenta
  line(50, 300, 350, 350);

  // Draw a point
  strokeWeight(5); // Set stroke weight (thickness) to 5 pixels
  point(200, 250);

  // Draw an arc
  fill(255, 255, 0); // Set fill color to yellow
  arc(100, 300, 80, 80, PI, TWO_PI);

  // Draw a quad
  fill(128, 0, 128); // Set fill color to purple
  quad(300, 300, 350, 350, 325, 380, 275, 330);

  // Draw a star
  fill(255, 165, 0); // Set fill color to orange
  star(200, 200, 5, 40, 20);
}

// Function to draw a star
void star(float x, float y, int numPoints, float outerRadius, float innerRadius) {
  float angle = TWO_PI / numPoints;
  float halfAngle = angle / 2.0;

  beginShape();
  for (int i = 0; i < numPoints; i++) {
    float x1 = x + cos(angle * i) * outerRadius;
    float y1 = y + sin(angle * i) * outerRadius;
    vertex(x1, y1);
    float x2 = x + cos(angle * i + halfAngle) * innerRadius;
    float y2 = y + sin(angle * i + halfAngle) * innerRadius;
    vertex(x2, y2);
  }
  endShape(CLOSE);
}
