Walker[] circle = new Walker[8];
PVector accel = new PVector(0.2,0);
PVector gravity = new PVector(0,-0.4);
PVector wind = new PVector(0.15,0);
int posY = 0;
float massValue = 1;


void setup()
{
   size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(255);

  
  for(int n=0; n<8; n++)
  { 
       circle[n] = new Walker(massValue);
       posY= 2 * (Window.h / 8)  * (n - 4);
       circle[n].position = new PVector(-500,posY);

       massValue++;
  }
 massValue = 1;
}

void draw()
{
  background(255);
  strokeWeight(10);
  stroke(255,0,0);
  line(0,0, 0, 360);
  line(0,0, 0, -360);
  float mew, frictMag, normal = 1; 
  PVector frict; 
  
  
  if(mousePressed && (mouseButton == LEFT))
  {
    for(int n = 0; n < 8; n++)
    {
       circle[n] = new Walker(massValue);
       posY= 2 * (Window.h / 8)  * (n - 4);
       circle[n].position = new PVector(-500,posY);
       massValue++;
    }
    massValue = 1;
  }
 
 for(int i = 0; i < circle.length; i++)
 
 {
   if(circle[i].position.x < 0)
   mew = 0.01f; 
   else
   mew = 0.4f;
   
   frictMag = mew * normal;
   frict = circle[i].velocity.copy(); 
   frict.normalize();
   frict.mult(frictMag); 
   frict.mult(-1); 
   circle[i].applyForce(frict); 
   circle[i].applyForce(accel);
   circle[i].update();
   circle[i].render();
   circle[i].checkWindow();  
  }
 
}
