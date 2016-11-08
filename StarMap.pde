/* 
    Mohamad Zabad C15745405
    OOP LabTest1
*/
Table StarTable;   // Declaring the table that we want to load the file in

void setup()
{
  size(800,800);
  background(0);
  loadData();
  printStars();
  drawGrid(10);
}

ArrayList<Star> stars= new ArrayList<Star>();   // Declaring a global ArrayList of Star objects

void draw()
{
  
}

void loadData()
{
  StarTable = loadTable("HabHYG15ly.csv", "header");  
    
  for (TableRow row : StarTable.rows()) 
  {
    Star One_star = new Star(row);
    stars.add(One_star);
  }

}
  
  
void printStars()
{
  for(int i=0;i<stars.size(); i++)
  {
    Star One_star= stars.get(i);
    println(One_star);
  }
}


void drawGrid(int no_lines)
{
  float border=50;
  float space = ((width - border *2) / (float)no_lines);
  stroke(150,0,200);
   
  //drawing the vertical bars and the horizontal bars
  for(int i = 0; i < no_lines + 1; i++) 
  {
     line(space * i + border, height - border, space * i + border, border);
     line(border, space * i + border, width - border, space * i + border);
  }
}