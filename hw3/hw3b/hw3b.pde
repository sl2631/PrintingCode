

int actRandomSeed = 50;
 float xoff = 1.0;
 
void setup() {
  size(512,512);
}
 
void draw() {
  background(0);
 
 randomSeed(actRandomSeed);
   
 /* loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
 //float randomValue= color(random(255),random(255),random(255));
     // pixels[x+y* width] = color(random(255),random(255),random(255));
     pixels[x+y* width] = color(random(255),random(255),random(255));
      noStroke();
      fill (255,0,0);
    rect(x,y,100,100);
    }
  }
  updatePixels();
  */
  
//with a for loops
for (int x = 0; x < width; x+=100) {
  for (int y = 0; y < height; y+=100) {
    noStroke();
    fill(random(255),random(255),random(255));
     
    
        xoff = xoff + .01;
     float n = noise(xoff) * width;
     
     }
    rect(n,y,40,40);
  }
} 
}
 
void mouseReleased() {
  actRandomSeed = (int) random(100000);
}
 
void mousePressed() { 
  if (key == 's' || key == 'S') saveFrame(timestamp()+"image.png");
}
 
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

