

// at 300ppi width 7000 = 23.3 and height 5100 = 17
PGraphics canvas;
int canvas_width = 7000; 
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


void setup()
{ 
  size(1300, 850);
  background(162);
  smooth();

  canvas = createGraphics(canvas_width, canvas_height);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();

  canvas.endDraw();

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


