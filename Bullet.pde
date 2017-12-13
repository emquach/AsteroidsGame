class Bullet extends Floater{
 
  public Bullet(Spaceship nb){

    myCenterX = nb.getX();
    myCenterY = nb.getY();
    myPointDirection = nb.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians)+nb.getDirectionX();
    myDirectionY = 5*Math.sin(dRadians)+nb.getDirectionY();
    
    
 }
 
  public void setX(int x) {myCenterX = x;}  
  public int getX() {return (int)myCenterX;}  
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}   
  public double getDirectionX() {return (int)myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}  
  public double getDirectionY() {return (int)myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}  
  public double getPointDirection() {return (int)myPointDirection;}


  public void show()
  {
    fill(250);
  ellipse((int)myCenterX,(int)myCenterY,5,5);
    
  }
}