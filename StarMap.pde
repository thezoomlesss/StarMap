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
  drawStars();
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
  
  writeNumbers(no_lines, space);
}

void writeNumbers(int no_lines, float space)
{
   int label = -5;
   
   // Drawing the labels vertically
   for(int i = 0; i < no_lines + 1; i++) 
   {
     text(label++, 10, space * i + no_lines);
   }
   
   // And now horizontally
   label = -5;
   for(int i = 0; i < no_lines + 1; i++) 
   {
    text(label++, space * i + no_lines, 10);
   }
     
}

void drawStars()
{
  int border=50;
  
   for (int i = 0; i < stars.size(); i++)
   {
     Star One_star = stars.get(i);
     
     float x = map (One_star.Xg, -5, 5, 50, width-border);
     float y = map (One_star.Yg, -5, 5, 50, height-border);
     stroke(255, 255, 0);
     noFill();
     
     line (x, y, x+3, y);
     line (x, y, x, y-3);
     line (x, y, x-3, y);
     line (x, y, x, y+3);
     stroke(255, 0, 0);
     ellipse(x, y, One_star.AbsMag, One_star.AbsMag);
     
     fill(255);
     textAlign(LEFT, CENTER);
     text(One_star.DisplayName, x+10, y-2);
   }
}