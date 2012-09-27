Button[] buttons = new Button[6];

void setup() {
  size(400,400);
  smooth();
  // A loop to evenly space out the buttons along the window
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(i*30, i*10, 50, 50); 
    frameRate (2);
  }
}

void draw() {
  background(255);
  // Show all the buttons
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display(); 
  }
}



