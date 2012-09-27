class Star{

float x;
float y;
float diameter;

 float r;
  float g;
  float b;
  float t;


Star(float x_, float y_,  int diameter_){
  x= x_;
  y= y_;
   diameter = diameter_;
 
  x = random (width);
y =(random (height));
diameter = random (1,10);
}
   

void display(){
noStroke();
    // The color chang//noStroke();
 // starColor = color(random(255),random(255),random(255),200);
//    float r = random (0,255);
//float g = random (0,255);
 // float b  = random (0,255);es based on the state of the button
    r = random (0,255);
    g = random (0,255);
    g = random (0,255);
   // t =
   
   fill (r, g, b);
   
strokeWeight(int(random(1,3)));

if (r< 50){
ellipse (x,y, diameter+60, diameter+60);
 } else{ 
   ellipse (x,y, diameter-40, diameter-40);
 }
 if (diameter >100){
    diameter= 0;
   }
  }
} 




