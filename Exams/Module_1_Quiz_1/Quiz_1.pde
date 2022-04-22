float globalVariable = 100;
float time = 10000;




// function that gets called at the very first frame
void setup()
{
  size(1280, 720, P3D); //set window size to 1280 x 720
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

// the function that gets called every frame. update refresh essentially
void draw()
{
  background(0); // sets the background color of the whole window 
  
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawSineWave();
}

 void drawCartesianPlane()
 {
   strokeWeight(1);
  color white = color (255, 255, 255);
  fill (white);
  stroke (white);
  line (-1280, 0, 1280, 0);
  
  fill (white);
  stroke (white);
  line (0, -1280, 0, 1280);
  
  for(int i= -1280; i <= 1280; i+= 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
  
 }
 
 void drawLinearFunction()
{
 
  color purple = color(255, 0, 255);
  fill(purple);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    
    circle(x, (-5 * x) + 30, 5);
      
  
  }
  
}
  
  void drawQuadraticFunction()
{
  
  color yellow = color (255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x, (float)Math.pow(x, 2) - (x * 15) - 3, 5);
  }
  
}
    
void drawSineWave()
{
  
  color red = color(255, 0, 0);
  fill(red);
  stroke(red);
  
    for (float x= -300; x <= 300; x+=0.1f){
    time += 0.01f;
  circle(x*9,((float)Math.sin(x + time)*30),3);
  
  }
  
}
