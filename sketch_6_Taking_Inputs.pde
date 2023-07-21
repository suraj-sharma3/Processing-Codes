String userInput = ""; // Variable to store the user's input
String greeting = ""; // Variable to store the greeting message

void setup() {
  size(400, 200);
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  background(220);
  text("Enter your name:", width/2, height/2);
  text(userInput, width/2, height/2 + 30);
  
  // Display the greeting message
  text(greeting, width/2, height/2 + 60);
}

void keyPressed() {
  // Capture user's input when Enter key is pressed
  if (key == ENTER) {
    greeting = "Hello, " + userInput; // Create the greeting message
    userInput = ""; // Clear the input field
  } else if (key == BACKSPACE) {
    if (userInput.length() > 0) {
      userInput = userInput.substring(0, userInput.length() - 1); // Remove the last character
    }
  } else {
    // Add the key pressed to the user input
    userInput += key;
  }
}
