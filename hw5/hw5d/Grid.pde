class ModularGrid
{
  int cols;
  int rows;

  float pageMargin;
  
  // array called 'modules' inside the module class
  Module[][] modules;
  float moduleWidth;
  float moduleHeight;
  

  ModularGrid(int _cols, int _rows,  float _pageMargin){
    cols = _cols;
    rows = _rows;
  
    pageMargin = _pageMargin;
    
  //construct the array with these arguments 
    modules = new Module[cols][rows];
  
 
    
 
 // ~~~~~~~~~~~~~DEFINING WIDTH~~~~~~~~~~~~~~~~~~~   
    
    float actualPageWidth = ((float)canvas.width - (2*pageMargin));
 moduleWidth = actualPageWidth / (float)cols;


    float actualPageHeight = ((float)canvas.height - (2*pageMargin));
  moduleHeight = actualPageHeight  / (float)rows;
    
    
    // modules get placed in a 2D array, the for loops are creating the rows and columns
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
       
        // create array from the Module class and define the arguments the class requires
        modules[i][j] = new Module();
        modules[i][j].x = pageMargin + (i*moduleWidth) ;
        modules[i][j].y = pageMargin + (j*moduleHeight);
        modules[i][j].w = moduleWidth;
        modules[i][j].h = moduleHeight;
      } 
    }
  }
  
  
  // a function to display the grid
  void display()
  {
    canvas.noFill();
    canvas.strokeWeight(5);
    canvas.stroke(0, 0, 255, 50);
    
    // draw the big bounding box
    canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
    
    // draw all modules
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
        canvas.rect(modules[i][j].x, modules[i][j].y, modules[i][j].w, modules[i][j].h, 90);
      } 
    }
  }
}
