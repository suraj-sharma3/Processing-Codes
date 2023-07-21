int gridSize = 30;
int cellSize;
int snakeLength = 1;
int[] snakeX = new int[gridSize * gridSize];
int[] snakeY = new int[gridSize * gridSize];
int directionX = 1;
int directionY = 0;
int foodX, foodY;
boolean isGameOver = false;
int score = 0;

void setup() {
  cellSize = width / gridSize;
  size(600, 600);
  frameRate(10);

  snakeX[0] = gridSize / 2;
  snakeY[0] = gridSize / 2;
  placeFood();
}

void draw() {
  background(220);

  if (!isGameOver) {
    moveSnake();
    checkCollisions();
    checkFood();
  }

  // Draw the snake
  fill(0);
  for (int i = 0; i < snakeLength; i++) {
    rect(snakeX[i] * cellSize, snakeY[i] * cellSize, cellSize, cellSize);
  }

  // Draw the food
  fill(255, 0, 0);
  rect(foodX * cellSize, foodY * cellSize, cellSize, cellSize);

  if (isGameOver) {
    displayGameOver();
  }
  
  // Display the score at the center
  fill(0);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("Score: " + score, 300, 10);
}

void placeFood() {
  foodX = int(random(gridSize));
  foodY = int(random(gridSize));
}

void checkFood() {
  if (snakeX[0] == foodX && snakeY[0] == foodY) {
    snakeLength++;
    placeFood();
    score++; // Increase the score when the snake eats the food
  }
}

void moveSnake() {
  for (int i = snakeLength - 1; i > 0; i--) {
    snakeX[i] = snakeX[i - 1];
    snakeY[i] = snakeY[i - 1];
  }
  snakeX[0] += directionX;
  snakeY[0] += directionY;
}

void checkCollisions() {
  if (snakeX[0] < 0 || snakeX[0] >= gridSize || snakeY[0] < 0 || snakeY[0] >= gridSize) {
    isGameOver = true;
  }

  for (int i = 1; i < snakeLength; i++) {
    if (snakeX[0] == snakeX[i] && snakeY[0] == snakeY[i]) {
      isGameOver = true;
    }
  }
}

void keyPressed() {
  if (keyCode == UP && directionY == 0) {
    directionX = 0;
    directionY = -1;
  } else if (keyCode == DOWN && directionY == 0) {
    directionX = 0;
    directionY = 1;
  } else if (keyCode == LEFT && directionX == 0) {
    directionX = -1;
    directionY = 0;
  } else if (keyCode == RIGHT && directionX == 0) {
    directionX = 1;
    directionY = 0;
  } else if (keyCode == 'r' || keyCode == 'R') {
    restartGame();
  }
}

void mousePressed() {
  if (isGameOver) {
    restartGame();
  }
}

void restartGame() {
  isGameOver = false;
  snakeLength = 1;
  snakeX[0] = gridSize / 2;
  snakeY[0] = gridSize / 2;
  placeFood();
  score = 0; // Reset the score when restarting the game
}

void displayGameOver() {
  textAlign(CENTER);
  fill(255, 0, 0);
  textSize(40);
  text("Game Over", width / 2, height / 2);
  textSize(20);
  text("Click to restart", width / 2, height / 2 + 40);
}
