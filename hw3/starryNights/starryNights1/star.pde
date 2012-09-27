class Star{

float x;
float y;
float diameter;
color starColor;


Star(float x_, float y_,  int diameter_, color starColor_){
  x= x_;
  y= y_;
   diameter = diameter_;
  starColor = starColor_;
  x = random (width);
y =(random (height));
diameter = random (1,10);
}
   


void display(){
fill (starColor);
//noStroke();
 // starColor = color(random(255),random(255),random(255),200);
//    float r = random (0,255);
//float g = random (0,255);
 // float b  = random (0,255);
stroke(starColor);
strokeWeight(int(random(1,3)));
ellipse (x,y, diameter, diameter);



}

}





