PFont f;
String message = "help";

color disappearingText;

void setup() {
//  background (0);
  size(400, 400);
  f = createFont("AmericanTypewriter-Bold", 12,true);
  background(162);
}


void draw() {
  
   background (0);
  frameRate (1);
  
  textFont(f);
 
 
  float x = random (50, 350);
  float y = random (50, 350);
  for (int i = 0; i < message.length(); i++) {
int r = 255;
  int  g = 255;
  int  b =255;
  float t  = (random (50, 100));
textSize (random (12,200));
  disappearingText = color (r, g, b, t);
  fill(disappearingText); // semi-transparent white
    text(message.charAt(i), x, y);
    x+= textWidth (message.charAt(i));
  //  x+= random (20, 40);
    y+= random (20, 40);
  }
}

