class Walker
{
  
 PVector positionWalker = new PVector();
 PVector speedWalker = new PVector (0,0);
 PVector positionBall = new PVector();
 PVector speedBall = new PVector (5, 8);
 
 void render()
 {
   int colorRed = int(random(256));
   int colorGreen = int (random(256));
   int colorBlue = int (random(256));
   int colorAlpha = int (random(50, 101));
   fill(colorRed, colorGreen, colorBlue, colorAlpha);
   
   circle(positionWalker.x, positionWalker.y, 30);
 }
 
 void randomWalk()
 {
    int rng = int(random(8)); 
    
    if (rng == 0)
    {
      positionWalker.y+=10;
    }
    else if (rng == 1)
    {
      positionWalker.y-=10;
    }
    else if (rng == 2)
    {
     positionWalker.x+=10;
    }
    else if (rng == 3)
    {
      positionWalker.x-=10;
    }
     else if (rng == 4)
    {
      positionWalker.y+=10;
      positionWalker.x+=10;
    }
     else if (rng == 5)
    {
      positionWalker.y-=10;
      positionWalker.x+=10;
    }
     else if (rng == 6)
    {
      positionWalker.y+=10;
      positionWalker.x-=10;
    }
     else if (rng == 7)
    {
      positionWalker.y-=10;
      positionWalker.x-=10;
    }    
 }
 
  void randomWalkBiased()
  {
    int rng = int (random(1, 101));
    if (rng <= 20)
    {
     positionWalker.y+=10;
    }
    else if (rng <= 30 && rng >= 21)
    {
      positionWalker.y-=10;
    }
    else if (rng <= 60 && rng >= 31)
    {
      positionWalker.x+=10;
    }
    else if (rng <= 70 && rng >= 61)
    {
      positionWalker.x-=10;
    }
     else if (rng <= 80 && rng >= 71)
    {
      positionWalker.x+=10;
      positionWalker.y+=10;
    }
     else if (rng <= 85 && rng >= 81)
    {
      positionWalker.x-=10;
      positionWalker.y+=10;
    }
     else if (rng <= 95 && rng >= 86)
    {
      positionWalker.x+=10;
      positionWalker.y-=10;
    }
     else if (rng <= 100 && rng >= 96)
    {
      positionWalker.x-=10;
      positionWalker.y-=10;
    }
  }
 
 void moveAndBounce()
 {
  
   positionBall.add(speedBall);
  
  // conditions for bouncing
  if ((positionBall.x > Window.right) || (positionBall.x < Window.left))
  {
    speedBall.x *= -1;
  }
  
  if ((positionBall.y > Window.top) || (positionBall.y < Window.bottom))
  {
    speedBall.y *= -1;
  }
   // render the circle
  fill(182, 52, 100);
  circle(positionBall.x, positionBall.y, 50); 
 }
 
}
