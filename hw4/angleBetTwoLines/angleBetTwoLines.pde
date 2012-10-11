PVector a = new PVector(150, 0);
PVector b = new PVector(0, 150);
float angle, arcangle;
 
void setup() {
  size(500, 500);
  smooth();
  textAlign(CENTER, CENTER);
}
 
void draw() {
  background(255);
  translate(width/2, height/2);
  
  fill(0);
  line(0, 0, a.x, a.y);
  line(0, 0, b.x, b.y);
  ellipse(a.x, a.y, 15, 15);
  ellipse(b.x, b.y, 15, 15);
  
  b.set(mouseX-width/2, mouseY-height/2, 0);
  angle = PVector.angleBetween(a, b);
  if (a.y <= b.y) { arcangle = angle; } else { arcangle = angle + 2*(PI-angle); }
  arc(0, 0, 150, 150, 0, arcangle);
  ellipse(0, 0, 50, 50);
  fill(255);
  text(int(degrees(angle)), 0, 0);
}

