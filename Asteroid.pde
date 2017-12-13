class Asteroids extends Floater{
  
  private int rotSpeed;
  public Asteroids()
  {
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 2;
    yCorners[0] = -18;
    xCorners[1] = 11;
    yCorners[1] = -14;
    xCorners[2] = 10;
    yCorners[2] = -4;
    
    xCorners[3] = 14;
    yCorners[3] = 1;
    xCorners[4] = 14;
    yCorners[4] = 11;
    xCorners[5] = 6;
    yCorners[5] = 16;
    
    xCorners[6] = -3;
    yCorners[6] = 11;
    xCorners[7] = -12;
    yCorners[7] = 13;
    xCorners[8] = -17;
    yCorners[8] = 5;
    
    xCorners[9] = -12;
    yCorners[9] = -3;
    xCorners[10] = -16;
    yCorners[10] = -14;
    xCorners[11] = -3;
    yCorners[11] = -14;
    
    rotSpeed=((int)(Math.random()*7))-3;
    myColor = 100;
    myCenterX = (Math.random()*500);
    myCenterY = (Math.random()*500);
    myDirectionX = ((Math.random()*5)-2);
    myDirectionY = ((Math.random()*3)-1);
    myPointDirection = 0;
    
  }

  public void move(){
  turn(rotSpeed);
  super.move();
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

}