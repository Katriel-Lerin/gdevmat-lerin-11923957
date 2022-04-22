public class Walker
{
  

  public PVector positionDebris = new PVector(0, 0);
  public PVector speedDebris = new PVector (0, 0);
  public float colorRed = 255;
  public float colorGreen = 255;
  public float colorBlue = 255;
  public float size = 50; 
  
  
  public void render()
  {
 
   fill(colorRed, colorGreen, colorBlue,255);
   noStroke(); 
   circle(positionDebris.x, positionDebris.y, size);
  }
  
  
  

}
