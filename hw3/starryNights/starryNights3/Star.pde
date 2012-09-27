class Star{

float x;
float y;
float diameter;

Star(float x_, float y_,  int diameter_){
  x= x_;
  y= y_;
   diameter = diameter_;
 
  x = random (width);
y =(random (height));
diameter = random (1,100);
}
   

void display(){
 r = random (0,255);
    g = random (0,255);
   // b = random (0,255);

   fill (r, g, g);
   stroke(r, g, g);
strokeWeight(int(random(1,3)));


ellipse (x,y, diameter, diameter);

 /*  if (r< 50){
diameter+=100;
 } else{ 
   diameter-=100;
 }
 if (diameter >width/4){
    diameter= 0;
   }
*/

} 


}

