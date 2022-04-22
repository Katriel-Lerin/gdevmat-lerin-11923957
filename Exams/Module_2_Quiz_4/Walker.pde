public class Walker
{
 public float x;
 public float y;
 public float s;
 public float r;
 public float g;
 public float b;
 
 public float tx = 0, ty = 10000;
 public float ts = 5;
 public float tRed = 255;
 public float tGreen = 255;
 public float tBlue = 255;

 
 
 void render()
 {
   fill(r, g, b);
   noStroke();
   circle(x, y, s); 
  
 }
 
 void perlinWalk()
 {
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   s = map(noise(ts), 0, 1, 5, 150);
   r = map(noise(tRed), 0, 1, 0, 255);
   g = map(noise(tGreen), 0, 1, 0, 255);
   b = map(noise(tBlue), 0, 1, 0, 255);
  
   
  
   tx += 0.01f;
   ty += 0.01f;
   ts += 0.01f;
   tRed += 0.01f;
   tGreen += 0.02f;
   tBlue += 0.03f;
   
 }
 
}
