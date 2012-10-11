PGraphics canvas;
int canvas_height = 4200;
int canvas_width = 4200;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


int brickWidth = 80*4;
int brickHeight = 80*4;
int cols = 20/2;
int rows = 20/2;
int columnOffset = 60*4*2;
int rowOffset = 60*4*2;
float rotationIncrement = 0.15;

void setup() {

  size(800, 800);
  background(100);
  smooth();



 canvas = createGraphics(canvas_width, canvas_height);

  calculateResizeRatio();
  
   canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();
 
 canvas.translate(60*2, 60*2);
  for (int i=0; i<cols; i++) {
    canvas.pushMatrix();
    canvas.translate(i * columnOffset, 0);
    float r = random(-QUARTER_PI, QUARTER_PI);
    int dir = 1;
    for (int j=0; j<rows; j++) {
      canvas.pushMatrix();
      canvas.translate(0, rowOffset * j);
      canvas.rotate(r);
      canvas.fill (255,0,0, 50);
      canvas.noStroke();
      canvas.rect(0, 0, brickWidth, brickHeight);
      canvas.popMatrix();
      r += dir * rotationIncrement;
      if (r > QUARTER_PI || r < -QUARTER_PI) dir *= -1;
    }
   canvas.popMatrix();
  }
  
 canvas.endDraw();
 
 
 
/* ------------------------RESIZING-----------------------*/

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("grab.png");
  
 
}



/* RESIZING CALCULATION */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}


