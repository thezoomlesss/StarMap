class Star
{
  int Hab;
  String DisplayName;
  float Distance;
  float Xg, Yg, Zg;
  float AbsMag;
  
  
  // Paramaterised constructor
  Star(TableRow row)
  {
     this.Hab = row.getInt("Hab?");
     this.DisplayName = row.getString("Display Name");
     this.Distance = row.getFloat("Distance");
     this.Xg = row.getFloat("Xg");
     this.Yg = row.getFloat("Yg");
     this.Zg = row.getFloat("Zg");
     this.AbsMag = row.getFloat("AbsMag"); 
    
  }
  
  //This converts the object into a string so we'll be able to print it later
   String toString()
   {
     return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
   }
}