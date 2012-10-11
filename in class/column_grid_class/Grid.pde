class Grid
{
  int cols;
  float pageMargin;
  Column[] columns;
  
  Grid(int _cols, float _pageMargin)
  {
    cols = _cols;
    pageMargin = _pageMargin;
    
    // cache the width of the column. Remember to cast as float, otherwise the columns will not line up
    float colWidth = ((float)width - (2*pageMargin)) / cols;
    
    // make column objects
    columns = new Column[cols];
    
    for(int i = 0; i < cols; i++)
    {
      
     
      columns[i] = new Column(); // we start at 1 so this is empty
      columns[i].x = pageMargin + (i*colWidth); 
      /*page margin is starting points for  x and the i will be equal to 1
      i of the array represents the number of columns.
      the i means we are saying, do the first column and then the second
     is the first column plus the second column. 
    */
      
      columns[i].y = pageMargin; // page margin is starting points for  y
      columns[i].w = colWidth; // all the columns have the same width
      columns[i].h = height - (2*pageMargin); // same height for every column, remove (top and bottom) 2 margins first  
      //full height so we fill out the grid, 
    
    }
  }

  void display()
  {
    // draw big bounding box
    noFill();
    stroke(255, 0, 0, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw each column
    for(int i = 0; i < cols; i++)
    {
      rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
    }
  }
}
