PGraphics canvas;
int canvas_height = 4200;
int canvas_width = 4200;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

 PFont f;

 //  canvas.textAlign (CENTER); 
    

/*  SET UPS
 _________________________________________________________________ */

void setup() { 
  size(800, 800);
  background(100);
  smooth();

f = loadFont ("Helvetica-48.vlw");
  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  ModularGrid grid = new ModularGrid(10, 10, 100);
 
f = createFont ("Helvetica", 48, true);

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);

Module redModule = grid.modules[5][5];
canvas.textFont (f);
    canvas.text ( "A", canvas.width/2, canvas.height/2);



 


Module greenModule = grid.modules[7][7];

canvas.fill (0, 255,0);
canvas.rect (greenModule.x,greenModule.y,greenModule.w,greenModule.h, 90 );

  grid.display();
  





  canvas.endDraw();






// CALCULATIONS
  // what is resized canvas size?
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  // draw canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("gridtesting.png" );

}

/*  Calculate resizing function
 _________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}


//        8==D ~~~

