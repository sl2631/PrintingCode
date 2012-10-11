PGraphics canvas;
int canvas_height = 4200;
int canvas_width = 4200;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

 PFont f;



/*  SET UPS
 _________________________________________________________________ */

void setup() { 
  size(800, 800);
  background(100);
  smooth();


  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

 
 
 ModularGrid grid = new ModularGrid(10, 10, 100, 600);
 

ModularGrid Hgrid = new ModularGrid(4, 1, 10, 600);

f = loadFont ("PoplarStd-80.vlw");
 

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
  
  

Module FModule = grid.modules[0][1];
canvas.textAlign (CENTER); 
canvas.textFont (f, 500);
canvas.fill (255, 0,0, 100);
canvas.strokeCap(ROUND);
canvas.strokeWeight (5);
canvas.text ( "F", FModule.x, FModule.y);

 for (int x = 400; x <=canvas.width-50; x += 200) {
      for (int y = 700; y <= canvas.height-50; y+=200) {

        canvas.strokeWeight (2);
        canvas.stroke (255,0,0, 50);
        canvas.line(x, y, 500,550);
      }
    }
   
   
Module AModule = grid.modules[2][3];
canvas.textAlign (CENTER); 
canvas.textFont (f, 1000);
canvas.fill (153,24,24);
canvas.strokeCap(ROUND);
canvas.strokeWeight (5);
canvas.text ( "A", AModule.x, AModule.y+300);

Module LModule = grid.modules[4][5];
canvas.textAlign (CORNER); 
canvas.textFont (f, 1500);
canvas.fill(83,13,13);
canvas.strokeCap(ROUND);
canvas.strokeWeight (10);
canvas.text ( "L", LModule.x, LModule.y+500);

Module lModule = grid.modules[8][9];
canvas.textAlign (CORNER); 
canvas.textFont (f, 2000);

canvas.fill (50,0,0);

canvas.strokeCap(ROUND);
canvas.strokeWeight (15);
canvas.text ( "L", lModule.x, lModule.y+500);



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


//     

