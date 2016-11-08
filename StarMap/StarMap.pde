/* 
    Mohamad Zabad C15745405
    OOP LabTest1
*/
ArrayList<Star> stars= new ArrayList<Star>();   // Declaring a global ArrayList of Star objects
Table StarTable;   // Declaring the table that we want to load the file in

void setup()
{
  size(800,800);
}

void draw()
{
  
}

void loadData()
{
  StarTable = loadTable("HabHYG15ly.csv", "csv");  // Load the column separated file into table
  
  
}