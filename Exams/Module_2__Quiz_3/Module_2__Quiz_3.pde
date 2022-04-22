int frameNumber = 0;
void setup()
{
  size(1280, 720, P3D); //set window size to 1280 x 720
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255); // sets the background color of the whole window
}

// the function that gets called every frame. update refresh essentially
void draw()
{

  if (frameNumber >= 360)
  {
    background(255);
  }
  
  
  else if (frameNumber < 360)
  {
    float gaussianCircles = randomGaussian();
    float standardDeviationOne = 500;
    float meanOne = 0;
    float x = standardDeviationOne * gaussianCircles + meanOne;
    float y = random(-360, 361);
  
    float gaussianThickness = randomGaussian();
    float standardDeviationTwo = 40;
    float meanTwo = PI;
    float circleThickness = standardDeviationTwo * gaussianThickness + meanTwo;
    
    int colorRed = int(random(256));
    int colorGreen = int(random(256));
    int colorBlue = int (random(256));
    int colorAlpha = int (random(10, 101));
 
 
    noStroke();
  
    fill (colorRed, colorGreen, colorBlue, colorAlpha);
    circle (x, y, circleThickness);
    
  }
  
  frameNumber++;
  
}
