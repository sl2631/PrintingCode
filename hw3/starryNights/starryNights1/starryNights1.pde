
Star star[];



int x;
int y;

void setup() {
  size(400, 400);
  
   frameRate(25);
  
 
  x=0;
  y=0;
   star = new Star[1000];
  
  for (int i =0; i<star.length; i++){
    
     star [i] = new Star(random(0,width), random(0,300), (int)random(1,10),color(random(255),random(255),random(255),200) );
  }
}
     
  void draw() {
  background(0, 46, 184);
  
   for (int i =0; i<star.length; i++){
    star[i].display();
    }
}






