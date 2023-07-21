int ballX, ballY;
int ballSpeedX = 5, ballSpeedY = 5;
int paddleWidth = 100, paddleHeight = 10;
int paddleX, paddleY;
int score = 0;
color ballColor, paddleColor, bgColor;

void setup() {
  size(400, 400);
  resetGame();
}

void draw() {
  background(bgColor);
  
  // Move the ball
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  // Check for collisions with walls
  if (ballX <= 0 || ballX >= width) {
    ballSpeedX *= -1;
  }
  if (ballY <= 0) {
    ballSpeedY *= -1;
  }
  
  // Check for collision with paddle
  if (ballY + 10 >= paddleY && ballX >= paddleX && ballX <= paddleX + paddleWidth) {
    ballSpeedY *= -1;
    score++;
    changeColors(); // Change colors when the ball hits the paddle
  }
  
  // Check for game over
  if (ballY >= height) {
    resetGame();
  }
  
  // Draw the ball
  fill(ballColor);
  ellipse(ballX, ballY, 20, 20);
  
  // Draw the paddle
  fill(paddleColor);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);
  
  // Display the score
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Score: " + score, width/2, 30);
}

void resetGame() {
  ballX = width / 2;
  ballY = height / 2;
  paddleX = width / 2 - paddleWidth / 2;
  paddleY = height - 50;
  ballSpeedX = 5;
  ballSpeedY = 5;
  score = 0;
  
  // Set initial colors
  ballColor = color(random(255), random(255), random(255));
  paddleColor = color(random(255), random(255), random(255));
  bgColor = color(random(255), random(255), random(255));
}

void changeColors() {
  // Change colors when the ball hits the paddle
  ballColor = color(random(255), random(255), random(255));
  paddleColor = color(random(255), random(255), random(255));
  bgColor = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (keyCode == LEFT) {
    paddleX -= 20;
  } else if (keyCode == RIGHT) {
    paddleX += 20;
  }
  
  // Ensure the paddle stays within the screen
  paddleX = constrain(paddleX, 0, width - paddleWidth);
}
