/* 
    Mohamad Zabad C15745405
    OOP LabTest1
*/
Table StarTable;   // Declaring the table that we want to load the file in

void setup()
{
  size(800,800);
  loadData();
  printStars();
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
}