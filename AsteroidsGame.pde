Spaceship nb = new Spaceship();
Stars[] pq = new Stars[250];
public void setup() 
{
 size(500, 500);
 for (int i = 0; i < pq.length; i++)
  {
  pq[i] = new Stars();
  }
}

public void draw() 
{
  background(0);
  nb.show();
  nb.move();
  
  for (int i = 0; i < pq.length; i++)
 {
 pq[i].show();
 }
}

public void keyPressed()
{
if (key == 'f')
  {
  nb.setX((int)(Math.random()*450));
  nb.setY((int)(Math.random()*450));
  nb.setPointDirection((int)(Math.random()*360));
  nb.setDirectionX(0);
  nb.setDirectionY(0);

  }
  if (key == 'i')
  {
    nb.accelerate(4);
  }
  
  if(key == 'j')
  {
    nb.turn(-10);
  }
    if(key == 'l')
  {
     nb.turn(10);
  }
}