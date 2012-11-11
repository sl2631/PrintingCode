PGraphics canvas;

import toxi.geom.*;

//Dimensions of Plotter Paper in Inches
float paper_width = 10;
float paper_height = 14;
float paper_ratio = paper_height/paper_width;


//Dimensions of an A4 Paper in Pixels at 300dpi
int canvas_width = int(paper_width*300);
int canvas_height = int(paper_height*300);

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;



void setup(){


  int width = 500;//Change this number to get a display window with papers aspect ratio
  int height = int(width*paper_ratio);
  size(width, height);

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();

  canvas.beginDraw();
  canvas.background(0);
  canvas.smooth();

//values for the red arches

float redArchesX = random(150,200);
float redArchesY = 1600;
PVector redloc = new PVector( redArchesX, redArchesY);

 // PVector loc = new PVector( random(150,200),1600);

  // create 4 random dots from that starting point in a line
  ArrayList<PVector> points = new ArrayList();

//number of red arches
  for (int i = 0; i < 6; i++) {
   
    float newX = redloc.x*2 + (i*400);
    float newY = redloc.y+ random (-300,300);
    points.add( new PVector(newX, newY) );
  }

  for (int i = 0; i < points.size(); i++) {
    PVector thisPoint = points.get(i);

    if (i < points.size() - 1) {
      PVector nextPoint = points.get(i + 1);

      // draw the curved line
      canvas.beginShape(); 
      canvas.strokeWeight (100);
      canvas.stroke (255, 0, 0, 90);
      canvas.noFill();
      canvas.vertex(thisPoint.x, thisPoint.y);
      canvas.bezierVertex(thisPoint.x-thisPoint.x/6, thisPoint.y/2, nextPoint.x, nextPoint.y/3, nextPoint.x, nextPoint.y);
      canvas.endShape();
    }
  }

  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  //Show the canvas on the screen
  image(canvas, (width / 2) - (resizedWidth / 2), 
  (height / 2) - (resizedHeight / 2), 
  resizedWidth, resizedHeight);
}

void calculateResizeRatio() {
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else ratio = ratioHeight;
}

void keyPressed() {
  //SAVE IMAGES OUT
  if (key == 's') {  
    println("Saving Image");
    canvas.save("image_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".tiff");
    println("Saved Image");
  }
}

  //println ( "x: =" + mouseX + "y:" + mouseY);
