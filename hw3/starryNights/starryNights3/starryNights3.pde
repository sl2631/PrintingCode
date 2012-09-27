

Star myStar [];

  PGraphics canvas;
  int canvas_width = 7000; 
  int canvas_height = 5100;

  float ratioWidth = 1;
  float ratioHeight = 1;
  float ratio = 1;

  int x;
  int y;

 float r;
  float g;
  float b;
  float t;
  
  void setup() {
    
    size(1300, 850);
    background(162);
    smooth();
   // frameRate(25);
    x=0;
    y=0;
  }
    
    void draw(){
 myStar = new Star[1000];
 
 canvas = createGraphics(canvas_width, canvas_height);
calculateResizeRatio();

 for (int i =0; i<myStar.length; i++){
     myStar [i] = new Star(random(0,canvas.width), random(0,canvas.height), width/10);
      }
  
    canvas.beginDraw();

    canvas.smooth();

    for (int i =0; i<myStar.length; i++){
     myStar [i] = new Star(random(0,canvas.width), random(0,canvas.height), width/10);
  }

for (int i =0; i<myStar.length; i++){
    myStar[i].display();
    }
    

    
   if (mousePressed){
       float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

           canvas.save("grab.png");
    }
    

 
     canvas.endDraw();
   
   
    }
 

 


/* RESIZING CALCULATION */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else {                       
    ratio = ratioHeight;
  }
}






