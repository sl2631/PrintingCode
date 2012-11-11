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

Arch [] arch;

 


void setup(){

  arch = new Arch[7];
  
  int width = 500;//Change this number to get a display window with papers aspect ratio
  int height = int(width*paper_ratio);
  size(width, height);

  canvas = createGraphics(canvas_width, canvas_height);
  calculateResizeRatio();
  
  
  canvas.beginDraw();
canvas.background (223,223,208);
  canvas.smooth(4); 
  
   color redArch = color (255,0,0,190);
   color yellowArch =  color (255,230, 0,190);
     color greenArch =  color (0, 151,86,190);
       color blueArch =  color (0,151,255, 190);
       
arch = new Arch[7];

 float x;
  float y;
float archNumber;

for ( int i = 0; i <6; i++){

   arch [0] = new Arch  (50, 1900, 6); // red

   arch [1] = new Arch  (350, 1600, 5); // yellow

   arch [2] = new Arch  (1000, 900, 4); // blue 1 ORKB

  arch [3] = new Arch  (1300, 2500,  4); // blue 2 NSB

   arch [4] = new Arch  (700, 3000,  3); // green 4 JZA

arch [5] = new Arch  (350, 3600,  3); // green 5
}







 canvas.stroke (redArch);
    arch[0].display();
    canvas.stroke (yellowArch);
        arch[1].display();
          canvas.stroke(blueArch);
         arch[2].display();
          canvas.stroke(blueArch);
          arch[3].display();
             canvas.stroke (greenArch);
           arch[4].display();
              canvas.stroke (greenArch);
         arch[5].display();
        


canvas.endDraw();
 


  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
   canvas.save("image_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".tiff");
   println("Saved Image");

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

//void keyPressed() {
// SAVE IMAGES OUT
// if (key == 's') {  
// println("Saving Image");
//   canvas.save("image_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".tiff");
//   println("Saved Image");
// }
//}


/*
float yellowArchesX = random(300,600);
float yellowArchesY = random(200,650);
  */
  


  //println ( "x: =" + mouseX + "y:" + mouseY);
