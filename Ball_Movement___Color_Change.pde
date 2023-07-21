int ballSize = 20; // Diameter of the ball
float ballX, ballY; // Ball position
float speedX = 5; // Horizontal speed
float speedY = 5; // Vertical speed
color bgColor = color(220); // Initial background color (light gray)
color ballColor = color(255, 0, 0); // Initial ball color (red)

void setup() {
  size(800, 600); // Set the window size
  ballX = width / 2; // Initial horizontal position at the center of the window
  ballY = height / 2; // Initial vertical position at the center of the window
  
  background(bgColor); // Set the background color
}

void draw() {
  background(bgColor); // Clear the canvas with the background color
  
  // Move the ball diagonally
  ballX += speedX;
  ballY += speedY;
  
  // Check for collisions with the window edges and bounce the ball if necessary
  if (ballX < 0 || ballX > width) {
    speedX *= -1; // Reverse the horizontal direction
    changeBallColor(); // Change the ball color
  }
  if (ballY < 0 || ballY > height) {
    speedY *= -1; // Reverse the vertical direction
    changeBallColor(); // Change the ball color
  }
  
  // Draw the ball
  fill(ballColor); // Set the ball color
  ellipse(ballX, ballY, ballSize, ballSize);
}

void changeBallColor() {
  // Randomly generate new colors for the background and the ball
  bgColor = color(random(256), random(256), random(256));
  ballColor = color(random(256), random(256), random(256));
}
