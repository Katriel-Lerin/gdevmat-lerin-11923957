// function that gets called at the very first frame
void setup()
{
  size(1280, 720, P3D); //set window size to 1280 x 720
  camera(0,0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

// the function that gets called every frame. update refresh essentially

Walker unbiasedWalker = new Walker(); //creates an instance of our walker class here in sketch
Walker biasedWalker = new Walker();

void draw()
{
  unbiasedWalker.randomWalk();
  unbiasedWalker.render();
  
  biasedWalker.randomWalkBiased();
  biasedWalker.render();
}
