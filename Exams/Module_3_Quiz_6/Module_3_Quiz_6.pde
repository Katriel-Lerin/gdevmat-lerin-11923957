void setup()
{
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D); //set window size to 1080 x 720
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = - (mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}

void draw()
{
  background(130);
  
  strokeWeight(5);
  stroke(255, 0, 0);
  
  PVector saberHilt = mousePos();
  PVector blade = mousePos();
  PVector glow = mousePos();
  
  glow.normalize();
  blade.normalize();
  saberHilt.normalize();
  glow.mult(280);
  blade.mult(280);
  saberHilt.mult(40);
  
  strokeWeight(20);
  color outerGlow = color (255, 0, 0);
  fill (outerGlow);
  stroke (outerGlow);
  line(0, 0, glow.x, glow.y);
  line(0, 0, -glow.x, -glow.y);
  
  strokeWeight(8);
  color innerGlow = color (255, 255, 255);
  fill (innerGlow);
  stroke (innerGlow);
  line(0, 0, blade.x, blade.y);
  line(0, 0, -blade.x, -blade.y);
  
  strokeWeight(16);
  color hilt = color (0, 0, 0);
  fill (hilt);
  stroke (hilt);
  line(0, 0, saberHilt.x, saberHilt.y);
  line(0, 0, -saberHilt.x, -saberHilt.y);
  

  
  println(blade.mag());
}
