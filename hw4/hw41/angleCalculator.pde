PVector a = new PVector(150, 0);
PVector b = new PVector(0, 150);
float angle, arcangle;

 
}


void update (){
   b.set(mouseX-width/2, mouseY-height/2, 0);
  angle = PVector.angleBetween(a, b);
  fill (0);
  text(int(degrees(angle)), 0, 0);
}
  
 
void display() {
  background(255);
  translate(width/2, height/2);
  
  fill(0);
  line(0, 0, a.x, a.y);
  line(0, 0, b.x, b.y);
  //ellipse(a.x, a.y, 15, 15);
 // ellipse(b.x, b.y, 15, 15); 
}

