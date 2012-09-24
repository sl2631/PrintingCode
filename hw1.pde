
PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(255);
  smooth();
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  
  calculateResizeRatio();
  
  float middleY = canvas.height/2;
  float middleX = canvas.width/2;
  
  canvas.beginDraw();
     canvas.background(255);
     canvas.noStroke();
    // canvas.triangle(
     canvas.fill (0);
     canvas.rectMode (CORNER);
     canvas.rect (0, 0, canvas_width,canvas_height/3);
     canvas.ellipseMode(CENTER);
     canvas.fill (255);
     canvas.ellipse ( canvas_width/2, canvas_height/3, canvas_width,canvas_width);
     //canvas.triangle (x1, y1, x2, y2, x3, y3);
     canvas.fill (0);
    canvas.triangle (0, canvas_height/3, canvas_width/2, canvas_height, canvas_width, canvas_height/3);
 
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
	canvas.save("grab.png");
}

/*  Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}








  


