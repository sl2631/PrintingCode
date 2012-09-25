import processing.opengl.*;
import toxi.geom.*;
import toxi.color.*;
import toxi.math.*;

ArrayList <String> names = new ArrayList <String> ();

// background color (readonly colors can't be modified)
ReadonlyTColor bg;

boolean showColorPalette = true;

void setup() {
  size(1280, 720, OPENGL);
    // create a list of all the Toxiclibs NamedColors
  names = NamedColor.getNames();
    // set the background color to peachpuff
bg = NamedColor.getForName("peachpuff");
}

void draw() {
  // convert the bg color into ARGB color format (32bit packed integer)
  background(bg.toARGB());
  
// toggle the color palette
  if (showColorPalette) {
    drawColorPalette();
  }
 if (mousePressed) {
   drawColorPalette();
}

}

void drawColorPalette() {
  noStroke();

  // display all the colors over the width of the screen
  for (int i=0,num=names.size()-1; i<=num; i++) {
     // convert the color into ARGB color format (32bit packed integer)
    fill(NamedColor.getForName(names.get(i)).toARGB());
    // move the colors vertically with mouseY
    rect(width/2, height/2, 200, 200);
  }
}
