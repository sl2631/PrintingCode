/*class RandomGrid
{
  
    int cols;
  int rows;
   int Rcols;
  int Rrows;
  

 
 float pageMargin;
 float rotationIncrement = 0.15;

  
  // array called 'modules' inside the module class
  Module[][] Rmodules;
  float RmoduleWidth;
  float RmoduleHeight;
  

  RandomGrid(int Rcols, int Rrows,  float RgutterSize, float _pageMargin){
    cols = Rcols;
    rows = Rrows;
  
    pageMargin = _pageMargin;
    
  //construct the array with these arguments 
    Rmodules = new Module[cols][rows];
  
 
    
 
 // ~~~~~~~~~~~~~DEFINING WIDTH~~~~~~~~~~~~~~~~~~~   
    
    float actualPageWidth = ((float)canvas.width - (2*pageMargin));
 RmoduleWidth = actualPageWidth / (float)cols;


    float actualPageHeight = ((float)canvas.height - (2*pageMargin));
  RmoduleHeight = actualPageHeight  / (float)rows;
    
    
    // modules get placed in a 2D array, the for loops are creating the rows and columns
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
       
        // create array from the Module class and define the arguments the class requires
        Rmodules[i][j] = new Module();
        Rmodules[i][j].x = pageMargin + (i*RmoduleWidth) ;
        Rmodules[i][j].y = pageMargin + (j*RmoduleHeight);
        Rmodules[i][j].w = RmoduleWidth;
        Rmodules[i][j].h = RmoduleHeight;
      } 
    }
  }

  

  // a function to display the grid
  void display(){
    canvas.pushMatrix();
    translate (canvas.width/2, canvas.height/2);
  //  canvas.noFill();
    canvas.strokeWeight(5);
    canvas.stroke(0, 0, 255, 50);
    
    // draw the big bounding box
  //  canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
      float r = random(0, QUARTER_PI);
    // draw all modules
    for(int i = 0; i < Rcols; i++){
      for(int j = 0; j < Rrows; j++){
        canvas.rotate(r);
      canvas.fill (255,0,0, 50);
      canvas.noStroke();
        canvas.rect(Rmodules[i][j].x, Rmodules[i][j].y, Rmodules[i][j].w, Rmodules[i][j].h);
         canvas.popMatrix();
      } 
    }
    
  }
  }
  
*/


