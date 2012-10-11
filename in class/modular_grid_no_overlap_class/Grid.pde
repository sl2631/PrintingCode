class ModularGrid
{
  int cols;
  int rows;
  float gutterSize; // so we have space between the modules, used for text for examples or words would touch each other...
  float pageMargin;
  Module[][] modules; // multidimentional array so we can call a module in a specific column and row c
  float moduleWidth;
  float moduleHeight;
  
  ModularGrid(int _cols, int _rows, float _gutterSize, float _pageMargin)
  {
    cols = _cols;
    rows = _rows;
    gutterSize = _gutterSize;
    pageMargin = _pageMargin;
    
    
    modules = new Module[cols][rows];
    
    // FOR COLUMNS-  --- WIDTH
    
    // 1. FIND GRID WIDTH
    // cache the width of each column. Remember to cast as float, otherwise the columns will not line up
    // First we find the width of the page without the pagemargin
    float actualPageWidth = ((float)width - (2*pageMargin));
    
    // 2. FIND TOTAL GUTTER WIDTH
    // then we find the gutter sizes. We subtract by 1 as the furthermost right module will not have a right-side gutter
    // for example, a 3 column grid has only 2 gutters
    float totalGutterWidth = (cols-1) * gutterSize;
    
    // 3. FIND MODULE WIDTH
    // then we simply find the column size by subtracting the gutterwidth from the page size and dividing by number of cols
    // same reasonning as when we substracted margins.
    moduleWidth = (actualPageWidth - totalGutterWidth) / (float)cols;
    
    // FOR ROWS --- HEIGHT
    
    // cache the height of each column. This is the exact same calculation as before, and we should probably put
    
    // 1. FIND ROW HEIGHT
    float actualPageHeight = ((float)height - (2*pageMargin));
    
    //2. FIND TOTAL GUTTER HEIGHT
    float totalGutterHeight = (rows-1) * gutterSize;
    
    //3. FIND MODULE HEIGHT
    moduleHeight = (actualPageHeight - totalGutterHeight) / (float)rows;
    
    for(int i = 0; i < cols; i++) // i for x/ width
    {
      for(int j = 0; j < rows; j++) // j for y /height
      {
        // SAME CODE AS WITH REGULAR GRID-  ADDING GUTTER SIZE.  THE MODULES BECOME ROWS AND COLUMNS OF ORIGINAL GRID
        modules[i][j] = new Module();
        modules[i][j].x = pageMargin + (i*moduleWidth) + (i*gutterSize); //  i for x/ width
        modules[i][j].y = pageMargin + (j*moduleHeight) + (j*gutterSize); // j for y/height
        modules[i][j].w = moduleWidth;
        modules[i][j].h = moduleHeight;
      } 
    }
  }
  
  Module getRandomModule()
  {
    // get all modules that are not used
    ArrayList<Module> notUsedModules = new ArrayList();
    
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        if(!modules[i][j].used)
        {
          notUsedModules.add(modules[i][j]);
        }
      }
    }
    
    // select a random module, set used to true, and return it
    int ranIndex = floor(random(notUsedModules.size()));
    Module selected = notUsedModules.get(ranIndex);
    selected.used = true;
    return selected;
  }
  
  void display()
  {
    noFill();
    stroke(255, 0, 0, 100);
    
    // draw the big bounding box
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw all modules
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        rect(modules[i][j].x, modules[i][j].y, modules[i][j].w, modules[i][j].h);
      } 
    }
  }
}
