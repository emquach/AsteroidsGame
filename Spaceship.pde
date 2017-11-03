class Spaceship extends Floater  
{   
    public Spaceship() {

    corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 20;
    yCorners[0] = 0;
    xCorners[1] = 6;
    yCorners[1] = 8;
    xCorners[2] = 0;
    yCorners[2] = 8;
    xCorners[3] = -4;
    yCorners[3] = 12;
    xCorners[4] = -10;
    yCorners[4] = 12;
    xCorners[5] = -6;
    yCorners[5] = 0;
    xCorners[6] = -10;
    yCorners[6] = -12;
    xCorners[7] = -4;
    yCorners[7] = -12;
    xCorners[8] = 0;
    yCorners[8] = -8;
    xCorners[9] = 6;
    yCorners[9] = -8;
    
    myColor = 230;
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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