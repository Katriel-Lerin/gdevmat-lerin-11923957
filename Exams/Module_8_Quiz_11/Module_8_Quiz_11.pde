Walker[] circle = new Walker[10];

void setup()
{
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(255);

  for(int i = 0; i < 10; i++)
  {
    circle[i] = new Walker(random(2,16));
  }
    
}

void draw()
{
  background(255);
  for(int i = 0; i < 10; i++)
  {
    circle[i].update();
    circle[i].render();
    for(int t = 0; t <10; t++)
    { 
      if(i  != t)
      {
        circle[i].applyForce(circle[i].calcAttract(circle[t])); 
      }
      
    }
    
  }

}
