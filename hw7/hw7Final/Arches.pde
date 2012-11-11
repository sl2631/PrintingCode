class Arch {
  
float x;
float y;
float archNumber;

  
  Arch (float _x, float _y, float _archNumber){  
     x=_x;
    y=_y;
    archNumber = _archNumber;
  }

void display (){

  PVector loc = new PVector( x, y );
  
  ArrayList<PVector> points = new ArrayList();


  for (int i = 0; i < archNumber; i++) {
    float newX = loc.x*0.75 + (i*500);
    //  float newX = loc.x*2 + (i*500);
    float newY = loc.y+  random (-300, 300);
    points.add( new PVector(newX, newY));
      }

  for (int i = 0; i < points.size(); i++) {
    PVector thisPoint = points.get(i);
    if (i < points.size() - 1) {
      PVector nextPoint = points.get(i + 1);

      canvas.beginShape(); 
      canvas.strokeWeight (80);   
      canvas.noFill();  
      canvas.vertex(thisPoint.x, thisPoint.y);
 canvas.bezierVertex(thisPoint.x-thisPoint.x/6, thisPoint.y-1000, nextPoint.x, nextPoint.y-1000, nextPoint.x, nextPoint.y);
// canvas.bezierVertex(thisPoint.x-thisPoint.x/6, thisPoint.y-thisPoint.y/3, nextPoint.x, nextPoint.y-nextPoint.y/3, nextPoint.x, nextPoint.y);
    
  canvas.endShape();
    }
}
}
}
