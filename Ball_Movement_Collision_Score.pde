int ballSize = 20; // Diameter of the ball
float ballX, ballY; // Ball position
float speedX = 5; // Horizontal speed
float speedY = 5; // Vertical speed
color bgColor = color(220); // Initial background color (light gray)
color ballColor = color(255, 0, 0); // Initial ball color (red)
int collisionCount = 0; // Counter for the number of collisions

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
    collisionCount++; // Increment the collision counter
  }
  if (ballY < 0 || ballY > height) {
    speedY *= -1; // Reverse the vertical direction
    changeBallColor(); // Change the ball color
    collisionCount++; // Increment the collision counter
  }
  
  // Draw the ball
  fill(ballColor); // Set the ball color
  ellipse(ballX, ballY, ballSize, ballSize);
  
  // Display the collision count at the top of the window
  fill(0); // Set the text color to black
  textSize(24); // Set the text size
  textAlign(CENTER); // Center the text horizontally
  text("Collisions: " + collisionCount, width / 2, 40);
}

void changeBallColor() {
  // Randomly generate new colors for the background and the ball
  bgColor = color(random(256), random(256), random(256));
  ballColor = color(random(256), random(256), random(256));
}
