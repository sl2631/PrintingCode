
int patternSeperationX = 100;
int patternSeperationY = 100;


void setup() {
  size(800, 800);
  smooth();

  background(162);
  noStroke();
  //rect(0,0,patternSeperationX,patternSeperationY);
  // stroke(0);

  for (int i = 0; i < width/patternSeperationX; i++) {
    for (int j = 0; j < height/patternSeperationY; j++) {
      pushMatrix();
      translate(i*patternSeperationX, j*patternSeperationY);
      myGrid();
      popMatrix();
    }
  }
}


void draw()
{
  //This is here so the program keeps running and the screengrab will work
}


void myGrid() {


  fill(255); 
  rect(0, 0, 100, 100, 90); // rounded rectangle
  fill(0);
  triangle(50, 0, 0, 100, 100, 100);
}


