PGraphics canvas;

float paper_width = 17;
float paper_height = 22;
float paper_ratio = paper_height/paper_width;

int canvas_width = int(paper_width*300);
int canvas_height = int(paper_height*300);

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;




void setup()
{
  background (0);
smooth();
int width = 600;//Change this number to get a display window with papers aspect ratio
  int height = int(width*paper_ratio);
  size(width, height);
  canvas = createGraphics(canvas_width, canvas_height);
   calculateResizeRatio();
 int xpos;
 int ypos;
}
   
void draw(){
  canvas.beginDraw();
 canvas.background (0);
 canvas.smooth(4);

  
 canvas.textAlign (CENTER);
  canvas.ellipseMode (CORNER);
  
      int spacing = 80;
for ( int i=0; i< canvas.width; i+= canvas.width/2+spacing*2) {
  for ( int j=0 ;j< canvas.height; j+= canvas.height/2){

  
 logo (i,j);
  
}
}
  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), 
  (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight); 
}

void logo( int xpos, int ypos){
  
    int circleDiameter = 384;
     int strokeSize = 60;
      int spacing = 80;
    int logoSize = circleDiameter + strokeSize +spacing*2;
 int fontSize = circleDiameter-strokeSize;
  
 canvas.pushMatrix();
  canvas.translate (xpos, ypos);
  canvas.scale (0.5);
  
 for(int x = 0; x < canvas.width-circleDiameter/2; x += logoSize){
  
    for(int y = 0; y < canvas.height-circleDiameter/2; y += logoSize)
    {
 canvas.stroke (255, random (20,50),0, random (100,255));
   canvas.strokeWeight(strokeSize);
 canvas.noFill();
  canvas.ellipse ( x, y,  circleDiameter, circleDiameter);

 

   PFont f;
 f =loadFont("DesignerBlock-48.vlw");
  canvas.textFont(f, fontSize);
  canvas.fill (random (225,255),0,0);
  //  add  the diameter/2 to the y value to center the M in the circle. 
  // deduct the strokeSize or the M will be too low.
   canvas.text("M", x+circleDiameter/2, y+ circleDiameter-spacing);
    }
 }
canvas.popMatrix();
 }

  


void calculateResizeRatio(){
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else ratio = ratioHeight;
}
   
void keyPressed(){
  //SAVE IMAGES OUT
  if (key == 's')
  {  
    println("Saving Image");
    canvas.save("image_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".tiff");
    println("Saved Image");
  }
}
  
