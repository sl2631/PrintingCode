class LineObject {

  float x1;
  float y1;
 
  
  float a_;
  
  void update () {
    
        pushMatrix();
         translate(width/4, height/2);
    rotate  (a_);
    a_ = a;
    
   
 stroke (255,0,0);

line (0, -height/2, 0,0); // for my H

     popMatrix();
  
  }

}

    
