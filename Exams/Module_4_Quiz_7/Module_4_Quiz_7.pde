Walker myWalker = new Walker();
Walker target = new Walker();
Walker[] walkers = new Walker[100];

PVector dir;
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  for(int i = 0; i<=99; i++)
  {
    walkers[i] = new Walker();
  }
 
  myWalker.scale = 50;
}

PVector mousePos()
{
  float x = mouseX - Window.widthPx/2;
  float y = - (mouseY - Window.heightPx/2);
  return new PVector(x,y);
}



void draw()
{
  background(80);
  
  for(int i = 0; i <= 99; i++)
  {
    
    dir = PVector.sub(mousePos(), walkers[i].position);
    dir = dir.normalize();
    
    
    walkers[i].update(dir);
    walkers[i].render();
    walkers[i].checkEdges();
    
  }
  
  myWalker.update(dir);
  myWalker.render();
  myWalker.checkEdges();
}
