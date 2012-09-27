int num= 50;
int[] x= new int[num];
int[] y= new int[num];

void setup(){
    background (0);
  size(400,400);
  noStroke();
  smooth();
fill (255,100);
}

void draw(){

  
  //shift the values to the right
  for (int i =num-1; i>0; i--){
    x[i] = x[i-1];
    y[i]=y[i-1];
  }
    x [0]= mouseX;
    y [0]= mouseY;
  // add the new values to the beginning of the array
  for ( int i=0; i<num; i++){
    ellipse (x[i], y[i], i/2,i/2);
  }
  }
   
  
