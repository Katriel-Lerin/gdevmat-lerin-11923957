 class Walker
 {
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector(); 
  public float mass;
  public float scale;
  public float vectorLimit = 20;
  public float colorRed;
  public float colorGreen;
  public float colorBlue;
  
  Walker(float massValue) 
  {
     mass = massValue; 
     scale = mass * 5;
      
     colorRed = random(0,256);
     colorGreen = random(0,256);
     colorBlue = random(0,256);
  }
  

  void render()
  {
     
    noStroke();
    fill(colorRed, colorGreen, colorBlue, 255);
    circle(position.x, position.y, scale); 
    
  }
  
  void update()
  {
  this.velocity.add(this.acceleration);
  this.velocity.limit(this.vectorLimit);
  this.position.add(this.velocity);
  this.acceleration.set(0,0);
  }
  
  void applyForce(PVector force)
  { 
    this.acceleration.add(PVector.div(force, mass)); 
  }
   
 void checkWindow()
 { 
   if(this.position.x > Window.right){
   this.velocity.x *= -1;
 }
  else if (this.position.x < Window.left)
  {
    this.velocity.x *= -1;
  }
 if(this.position.y > Window.top)
 {
   this.velocity.y *= -1;
 }
  else if (this.position.y < Window.bottom){
    this.velocity.y *= -1;
    
  }
  
 }
 
}
