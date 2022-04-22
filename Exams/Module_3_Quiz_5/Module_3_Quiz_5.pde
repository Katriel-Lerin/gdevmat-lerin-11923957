void setup()
{
  size(1280, 720, P3D); //set window size to 1280 x 720
  camera(0,0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}


Walker unbiasedWalker = new Walker();
Walker biasedWalker = new Walker();
Walker bouncingBall = new Walker();

void draw()
{
  // flush the screen with white background
  background(255);
  
  unbiasedWalker.randomWalk();
  unbiasedWalker.render();
  biasedWalker.randomWalkBiased();
  biasedWalker.render();
  // add speed to the current position
  bouncingBall.moveAndBounce();
  
}
