int frameNumber = 0;
Walker w = new Walker();
Walker target = new Walker();
Walker[] walkers = new Walker[100];

PVector dir;
void setup()
  {
camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
size(1080, 720, P3D); //set window size to 1080 x 720

target.positionDebris.x = 500;
target.positionDebris.y = 250;

for (int i = 0; i < walkers.length;i++)
    {
walkers[i] = new Walker();

walkers[i].colorRed = random(0, 255);
walkers[i].colorGreen = random(0, 255);
walkers[i].colorBlue = random(0, 255);
walkers[i].size = random(10, 45);

walkers[i].positionDebris.x = random(Window.left, Window.right+1);
walkers[i].positionDebris.y = random(Window.bottom, Window.top+1);

    }

  }

PVector mousePos()
{
float x = mouseX - Window.windowWidth / 2;
float y = - (mouseY - Window.windowHeight / 2);
return new PVector(x,y);
}

void draw()
{
  if (frameNumber >= 200)
  {
    target.positionDebris.x = random(Window.left, Window.right+1);
    target.positionDebris.y = random(Window.bottom, Window.top+1);

      for (int i = 0; i < walkers.length;i++)
      {
        walkers[i] = new Walker();
  
        walkers[i].colorRed = random(0, 255);
        walkers[i].colorGreen = random(0, 255);
        walkers[i].colorBlue = random(0, 255);
        walkers[i].size = random(10, 45);
  
        walkers[i].positionDebris.x = random(Window.left, Window.right+1);
        walkers[i].positionDebris.y = random(Window.bottom, Window.top+1);
      }
      
      frameNumber = 0;
      
  }
      background(0);
    
    
  for (int i = 0; i < walkers.length;i++)
  {
  walkers[i].render();
  dir = PVector.sub(target.positionDebris, walkers[i].positionDebris);
  dir  = dir.normalize();
  dir = dir.mult(7);
  walkers[i].positionDebris.add(dir);
  
  }
  
target.render(); 

frameNumber++;

}
