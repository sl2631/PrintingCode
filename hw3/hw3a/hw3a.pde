import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

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

 /* canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(1500, 700); 
  canvas.bezierVertex( 1500, 200,   300, 200,   300, 700); // heart 2 
  canvas.bezierVertex( 300, 1200,   1500, 300,   1500, 1700 );  // heart3
canvas.bezierVertex( 1500, 500,   2600, 1200,   2600, 700 ); // heart4
canvas.bezierVertex( 2600, 200,   1500, 200,   1500, 700 ); //heart5
 canvas.endShape(); */
 
  
  colorMode(HSB, 1, 1, 1);
  
  // create a red color with values go from 0-1
  TColor redColor = TColor.newHSV(0, 1, 1);
  // you can also use names instead
  //TColor redColor = TColor.newHSV(Hue.RED.getHue(), 1, 1);
  
  // draw color
  translate(100, 100);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // darken by 50% and desaturate by 10%
  translate(rectSize + spacing, 0);
  redColor.darken(0.5);
  redColor.desaturate(0.1);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // lighten and saturate
  translate(rectSize + spacing, 0);
  redColor.lighten(0.2);
  redColor.saturate(1);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // get the complementary color
  translate(0, rectSize + spacing);
  TColor complementary = redColor.getComplement();
  fill(complementary.hue(), complementary.saturation(), complementary.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // mix 40% of the complementary into the red color
  translate(rectSize + spacing, -((rectSize/2) + (spacing/2)));
  TColor blended = redColor.blend(complementary, 0.4);
  fill(blended.hue(), blended.saturation(), blended.brightness());
  rect(0, 0, rectSize, rectSize);


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

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}


