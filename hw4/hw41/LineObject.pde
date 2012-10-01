class FeelingObject {

  PVector position =  new PVector();

float angle

int x1
int y1;
int x2;
int y2;


  // give display functions update/render

    void update () {
      
    if (angle =  { 
     line
      // targetPosition = new PVector (random(width), random(height));
    }
  }


  void render() {
    // translates add on top of one another so use push-popMatrix to affect only one thing
    pushMatrix();
    
    translate (position.x, position.y); 
    
    line (int x1, int y1, int x2, int y2);

    popMatrix();
  }
  
}



