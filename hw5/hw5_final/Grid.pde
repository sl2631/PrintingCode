class ModularGrid
{
  int cols;
  int rows;
  float gutterSize;
  float pageMargin;
  
  // array called 'modules' inside the module class
  Module[][] modules;
  float moduleWidth;
  float moduleHeight;
  
  // this constructor requires 4 arguments
  ModularGrid(int _cols, int _rows, float _gutterSize, float _pageMargin){
    cols = _cols;
    rows = _rows;
    gutterSize = _gutterSize;
    pageMargin = _pageMargin;
    
  //construct the array with these arguments 
    modules = new Module[cols][rows];
    
 
 // ~~~~~~~~~~~~~DEFINING WIDTH~~~~~~~~~~~~~~~~~~~   
    // First we find the width of the page without the pagemargin
    float actualPageWidth = ((float)canvas.width - (2*pageMargin));
    // then we find the gutter sizes. We subtract by 1 as the furthermost right module will not have a right-side gutter
    float totalGutterWidth = (cols-1) * gutterSize;
    // then we simply find the column size by subtracting the gutterwidth from the page size and dividing by number of cols
    moduleWidth = (actualPageWidth - totalGutterWidth) / (float)cols;


 // ~~~~~~~~~~~~~DEFINING HEIGHT~~~~~~~~~~~~~~~~~~~     
    // grid height = height of the canvas - the top & bottom page margins
    float actualPageHeight = ((float)canvas.height - (2*pageMargin));
    // the total height of our gutters is the height of each gutter * how many gutters (always 1 less than # of rows)
    float totalGutterHeight = (rows-1) * gutterSize;
    // same process as above
    moduleHeight = (actualPageHeight - totalGutterHeight) / (float)rows;
    
    
    // modules get placed in a 2D array, the for loops are creating the rows and columns?
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
       
        // create array from the Module class and define the arguments the class requires
        modules[i][j] = new Module();
        modules[i][j].x = pageMargin + (i*moduleWidth) + (i*gutterSize);
        modules[i][j].y = pageMargin + (j*moduleHeight) + (j*gutterSize);
        modules[i][j].w = moduleWidth;
        modules[i][j].h = moduleHeight;
      } 
    }
  }
  
  
  // a function to display the grid
  void display()
  {
   
    
    // draw the big bounding box

    canvas.rect(pageMargin, pageMargin, canvas.width - (2*pageMargin), canvas.height - (2*pageMargin));
    
    // draw all modules
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
      
        canvas.rect(modules[i][j].x, modules[i][j].y, modules[i][j].w, modules[i][j].h);
      } 
    }
  }
}
