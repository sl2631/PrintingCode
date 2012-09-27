
class Button  {    

  // Button location and size
  float x;   
  float y;   
  float w;   
  float h;   
  
  
  float r;
  float g;
  float b;
  float t;
  
  // Is the button on or off?
  boolean on;  

  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH)  {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH; 
 
    on = false;  // Button always starts as off
  }    

 

  // Draw the rectangle
  void display() {
    rectMode(CORNER);
    noStroke();
    // The color changes based on the state of the button
    r = random (0,255);
    g = random (0,255);
    g = random (0,255);
   // t =
   
   fill (r, g, b);
  
   if (r< 50){
     rect(x, y, w+=10, h+=10);
      } else{ 
     rect(x, y, w-30, h-30);
      }
      if (w > width/2 | y> height/2){
      rect (x,y,0,0);
    }
  }
} 
