class Walker
{
 float x;
 float y;
 
 void render()
 {
   int colorRed = int(random(256));
   int colorGreen = int (random(256));
   int colorBlue = int (random(256));
   int colorAlpha = int (random(50, 101));
   fill(colorRed, colorGreen, colorBlue, colorAlpha);
   
   circle(x, y, 30); 
 }
 
 void randomWalk()
 {
    int rng = int(random(8)); 
    
    if (rng == 0)
    {
      y+=10;
    }
    else if (rng == 1)
    {
      y-=10;
    }
    else if (rng == 2)
    {
      x+=10;
    }
    else if (rng == 3)
    {
      x-=10;
    }
     else if (rng == 4)
    {
      y+=10;
      x+=10;
    }
     else if (rng == 5)
    {
      y-=10;
      x+=10;
    }
     else if (rng == 6)
    {
      y+=10;
      x-=10;
    }
     else if (rng == 7)
    {
      y-=10;
      x-=10;
    }    
 }
 
  void randomWalkBiased()
  {
    int rng = int (random(1, 101));
    if (rng <= 20)
    {
      y+=10;
    }
    else if (rng <= 30 && rng >= 21)
    {
      y-=10;
    }
    else if (rng <= 60 && rng >= 31)
    {
      x+=10;
    }
    else if (rng <= 70 && rng >= 61)
    {
      x-=10;
    }
     else if (rng <= 80 && rng >= 71)
    {
      x+=10;
      y+=10;
    }
     else if (rng <= 85 && rng >= 81)
    {
      x-=10;
      y+=10;
    }
     else if (rng <= 95 && rng >= 86)
    {
      x+=10;
      y-=10;
    }
     else if (rng <= 100 && rng >= 96)
    {
      x-=10;
      y-=10;
    }
  }
 
}
