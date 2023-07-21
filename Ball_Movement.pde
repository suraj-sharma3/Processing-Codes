int ballSize = 20; // Diameter of the ball
float ballX, ballY; // Ball position
float speedX = 5; // Horizontal speed
float speedY = 5; // Vertical speed

void setup() {
  size(800, 600); // Set the window size
  ballX = width / 2; // Initial horizontal position at the center of the window
  ballY = height / 2; // Initial vertical position at the center of the window
  
  background(220); // Set the background color (light gray)
}

void draw() {
  background(220); // Clear the canvas with the background color
  
  // Move the ball diagonally
  ballX += speedX;
  ballY += speedY;
  
  // Check for collisions with the window edges and bounce the ball if necessary
  if (ballX < 0 || ballX > width) {
    speedX *= -1; // Reverse the horizontal direction
  }
  if (ballY < 0 || ballY > height) {
    speedY *= -1; // Reverse the vertical direction
  }
  
  // Draw the ball
  fill(255, 0, 0); // Red color for the ball
  ellipse(ballX, ballY, ballSize, ballSize);
}
