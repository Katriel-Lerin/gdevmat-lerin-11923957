 class Walker
 {
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector(); 
  public float mass;
  public float scale;
  public float vectorLimit = 10;
  public float colorRed;
  public float colorGreen;
  public float colorBlue;


  
  Walker(float massValue) 
  {
    
     mass = massValue; 
     scale = mass * 10; 
     position.x= random(Window.left, Window.right + 1 );
     position.y= random(Window.bottom, Window.top + 1 );
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
  velocity.add(acceleration);
  velocity.limit(vectorLimit);
  position.add(velocity);
  this.acceleration.set(0,0);
  }
  
  void applyForce(PVector force)
  { 
  
    acceleration.add(PVector.div(force, mass)); 
  
  }
   
 void checkWindow()
 { 
   if(this.position.x > Window.right)
   {
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
    else if (this.position.y < Window.bottom)
    {
      this.velocity.y *= -1;
    }
  }
  
   public PVector calcAttract(Walker w)
   {
   PVector force = PVector.sub(w.position, position); 
   float dist = force.mag();
   dist = constrain(dist, 5, 25);
   force.normalize(); 
   force.mult((this.mass * w.mass)/ (dist * dist)); 
   return force;
 }
 
}
