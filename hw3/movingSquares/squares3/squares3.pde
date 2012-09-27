
Star star[];



int x;
int y;

void setup() {
  size(400, 400);
  
   frameRate(2);
  
 
  x=0;
  y=0;
   star = new Star[100];
  
  for (int i =0; i<star.length; i++){
    
    // star [i] = new Star(random(0,width), random(0,300), (int)random(1,1100));
     star [i] = new Star(random(0,width), random(0,300), 50);
  }
}
     
  void draw() {
  background(0, 46, 184);
  
   for (int i =0; i<star.length; i++){
    star[i].display();
    }
}






