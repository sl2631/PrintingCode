PGraphics canvas;
int canvas_width = 7000; 
int canvas_height = 5100;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

int actRandomSeed = 50;
float xoff = 1.0;

void setup() {
  size(1300, 850);
  background(162);
  smooth();

  canvas = createGraphics(canvas_width, canvas_height);

  calculateResizeRatio();

canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();

  canvas.randomSeed(actRandomSeed);

  for (int x = 0; x < width; x+=100) {
    for (int y = 0; y < height; y+=100) {
      noStroke();
     
      canvas.fill(random(255), random(255), random(255));
      float w = random (5, 200); 
      canvas.rect(x, y, 50, 50, w);

      canvas.endDraw();
      
      
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  canvas.save(timestamp()+"image.png");
    }
    
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
    }   

/* CALCULATE RESIZING */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

