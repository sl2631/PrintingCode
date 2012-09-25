/*  hw2 WET & SHARP */

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

  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();

  // TOP LEFT  -2000 on  X and -2000 on Y
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(1500, 700); 
  canvas.bezierVertex( 1500, 200,   300, 200,   300, 700); // heart 2 
  canvas.bezierVertex( 300, 1200,   1500, 300,   1500, 1700 );  // heart3
canvas.bezierVertex( 1500, 500,   2600, 1200,   2600, 700 ); // heart4
canvas.bezierVertex( 2600, 200,   1500, 200,   1500, 700 ); //heart5
 canvas.endShape();
 
 // MIDDLE LEFT 
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(1500, 2250); 
  canvas.bezierVertex( 1500, 1700,   300, 1700,   300, 2250); // heart 2 
  canvas.bezierVertex( 300, 1700,   1500, 1800,   1500, 2700 );  // 1ST Y AT 1700 CHANGES THE LEFT SIDE
canvas.bezierVertex( 1500, 1800,   2600, 1700,   2600, 2250 ); // 2ND Y AT 1700 CHANGES THE RIGHT SIDE
canvas.bezierVertex( 2600, 1700,   1500, 1700,   1500, 2250 ); //heart5
 canvas.endShape();

/*
// MIDDLE LEFT 
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(1500, 2250); 
  canvas.bezierVertex( 1500, 1700,   300, 1700,   300, 2250); // heart 2 
  canvas.bezierVertex( 300, 1700,   1500, 1800,   1500, 2700 );  // 1ST Y AT 1700 CHANGES THE LEFT SIDE
canvas.bezierVertex( 1500, 1800,   2600, 1700,   2600, 2250 ); // 2ND Y AT 1700 CHANGES THE RIGHT SIDE
canvas.bezierVertex( 2600, 1700,   1500, 1700,   1500, 2250 ); //heart5
 canvas.endShape();
 */
 
 // BOTTOM LEFT 
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(1500, 4250); 
  canvas.bezierVertex( 1500, 3700,   300, 3700,   300, 4250); // heart 2 
  canvas.bezierVertex( 300, 3700,   1500, 3800,   1500, 4700 );  // 1ST Y AT 2500 CHANGES THE LEFT SIDE
canvas.bezierVertex( 1500, 3800,   2600, 3700,   2600, 4250 ); // 2ND Y AT 2500 CHANGES THE RIGHT SIDE
canvas.bezierVertex( 2600, 3700,   1500, 3700,   1500, 4250 ); //heart5
 canvas.endShape();
 
/*
  // BOTTOM RIGHT + 2000 on all X
  canvas.beginShape(POLYGON);
  canvas.fill (255, 0, 0);
  canvas.noStroke();
  canvas.vertex(5500, 2550); // heart 1
  canvas.bezierVertex( 5500, 2000,   4300, 2000,   4300, 2550); // heart 2 
  canvas.bezierVertex( 4300, 2500,   5500, 3100,   5500, 3500 );  // heart3
 // canvas.bezierVertex( 5500, 3100,   6600, 3000,   6600, 2550 ); // heart4
 // canvas.bezierVertex( 6600, 2000,   5500, 2000,   5500, 2550 ); //heart5
 canvas.endShape();
  */
  
  /*
  ORIGINAL MEASUREMENTS
   canvas.beginShape();  
  canvas.vertex(3500, 2550); // heart 1
  canvas.bezierVertex( 3500, 2000,   2300, 2000,   2300, 2550); // heart 2 
  canvas.bezierVertex( 2300, 3000,   3500, 3100,   3500, 3500 );  // heart3
  canvas.bezierVertex( 3500, 3100,   4600, 3000,   4600, 2550 ); // heart4
 canvas.bezierVertex( 4600, 2000,   3500, 2000,   3500, 2550 ); //heart5
 canvas.endShape();
   */



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


