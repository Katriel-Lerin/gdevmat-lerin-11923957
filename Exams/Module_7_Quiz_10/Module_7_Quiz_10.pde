Walker[] circle = new Walker[10];
PVector wind = new PVector(0.1,0);
PVector accel = new PVector(0.2,0);
int posX = 0;
Liquid ocean = new Liquid(0,-100,Window.right,Window.bottom,0.1f);
float frictMag = 0.1f;
    

void setup()
{
  size(1280,720,P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(255);

  for(int i = 0; i < 10; i++)
  {
    circle[i] = new Walker(random(1,11)); 
    posX = 2 * (Window.w / 10)  * (i - 5);
    circle[i].position = new PVector(posX,200);
  }
}

void draw()
{
  background(255);
  ocean.render();
  
  for(int i = 0; i < 10; i++)
  {
    PVector gravity = new PVector(0, - 0.15f * circle[i].mass);
    circle[i].update();
    circle[i].render();
    circle[i].checkWindow();
    circle[i].applyForce(wind);
    circle[i].applyForce(gravity);
    PVector frict = circle[i].velocity.copy(); 
    frict.normalize(); 
    frict.mult(-0.1); 
    circle[i].applyForce(frict);
    
    if(ocean.isCollidingWith(circle[i]))
    circle[i].applyForce(ocean.calculateDrag(circle[i]));
    
  }  

}
