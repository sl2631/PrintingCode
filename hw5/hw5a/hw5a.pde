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

// background grid
  ModularGrid Mgrid = new ModularGrid(10, 10, 0, 100); 
  

  

f = loadFont ("Helvetica-48.vlw");


  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth(8);
 
  
Module redModule = Mgrid.modules[5][5];
canvas.textFont (f, redModule.w);
canvas.fill ( 255,0,0, 50);
 canvas.textAlign (CENTER); 
canvas.text ( "A", redModule.x + redModule.w/2, redModule.y);



Mgrid.display();

 ModularGrid grid = new ModularGrid(5, 5, 10, 200); 
 
  
  
    canvas.translate((random (50, canvas.width-50)), (random (50, canvas.height-50)));
     canvas.pushMatrix();
    float r = random(0, QUARTER_PI);
  
       for(int i = 0; i < grid.cols; i++){
      for(int j = 0; j < grid.rows; j++){
    canvas.rotate(r);
      canvas.fill (255,0,0, 50);
      canvas.noStroke();
      //canvas.rectMode (CENTER);
  canvas.rect(grid.modules[i][j].x+pageMargin, grid.modules[i][j].y+pageMargin, grid.modules[i][j].w, grid.modules[i][j].h);
    
    }
       }
   canvas.popMatrix();



    

  
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

