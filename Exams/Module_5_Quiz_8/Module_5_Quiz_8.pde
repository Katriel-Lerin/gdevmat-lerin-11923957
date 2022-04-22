Walker[] circle = new Walker[10];
PVector gravity = new PVector(0,-0.4);
PVector wind = new PVector(0.15,0);

void setup()
{
  size(1080,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(255);
  float massValue = 1;

  for(int i=0; i<10; i++)
  { 
    circle[i] = new Walker(massValue); 
    massValue++;
  }
  
}

void draw()
{
   background(255);
   
   for(int i = 0; i < 10 ; i++)
   { 
       circle[i].update();
       circle[i].applyForce(gravity);
       circle[i].applyForce(wind);
       circle[i].render();
       circle[i].checkWindow();
   }

}
