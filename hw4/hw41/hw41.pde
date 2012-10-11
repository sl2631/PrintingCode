LineObject myLineObject;


float a;

void setup(){

  size (800, 800);
 
  smooth();
   textAlign(CENTER, CENTER);

    myLineObject = new LineObject();
   
}

void draw(){

     background (255);
      line (200,0, 200,700); // for the H
a =40; // for the H
    myLineObject.update();
    
 // line (width/4, 0, width/4, height);
  //   line (0, height/2, width, height/2);
    
    
  



 
 
}
  
  
