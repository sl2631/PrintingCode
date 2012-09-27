class Star {

  float x;
  float y;
  float diameter;

  float xoff = 0.0;

  Star(float x_, float y_, int diameter_) {
    x= x_;
    y= y_;
    diameter = diameter_;
    x = random (canvas.width);
    y =(random (canvas.height));
    diameter = random (1, 5000);
  }

  void display() {

    r = random (100, 200);
    g = random (1, 10);
    b = random (1, 20);
    t =  random (10, 200) ;

    xoff = xoff + .03;
    float n = noise(xoff) *t;

    canvas.fill (r, g, b, t);
    canvas.stroke(r, g, b, t); 
    canvas.strokeWeight(t);
    canvas.ellipse (x, y, t, t);
  }
}

