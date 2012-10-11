

// at 300ppi 3010 px = 10.03 "
PGraphics canvas;
int canvas_width = 3010; 
int canvas_height = 3010;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

PFont f;
String message = "help";

color disappearingText;

int timer;


void setup()
{ 
  size(800, 800);
  background(162);
  smooth();
  frameRate (1);
  
  canvas = createGraphics(canvas_width, canvas_height);

  calculateResizeRatio();
  
   f = createFont("AmericanTypewriter-Bold", 12,true);
  background(162);
  
}

void draw(){

  canvas.beginDraw();
  canvas.background(0);
  canvas.smooth();
  canvas. textFont(f);
 
   float x = random (200, 1500);
  float y = random (200, 1500);
  for (int i = 0; i < message.length(); i++) {
int r = 255;
  int  g = 255;
  int  b =255;
  float t  = (random (50, 100));
canvas.textSize (random (360,1440));
  disappearingText = color (r, g, b, t);
  canvas.fill(disappearingText); // semi-transparent white
    canvas.text(message.charAt(i), x, y);
    x+= canvas.textWidth (message.charAt(i));
    y+= random (20, 40);
    
    if (millis() - timer >= 4000) {
      canvas.save("grab1.png");
      if (millis() - timer >= 10000){
      canvas.save("grab2.png");
   timer = millis();
      }
 }

  }

  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

 // canvas.save("grab.png");
  
}




/* RESIZING CALCULATION */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}


