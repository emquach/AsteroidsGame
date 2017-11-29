Spaceship nb = new Spaceship();
Stars[] pq = new Stars[250];
//Asteroids[] ds = new Asteroids[10]; 
ArrayList <Asteroids> ds = new ArrayList <Asteroids>();

public void setup() 
{
 size(500, 500);
 for (int i = 0; i < pq.length; i++)
  {
  pq[i] = new Stars();
  }
for (int r = 0; r < 10; r++)
  {
 // ds[r] = new Asteroids();
   ds.add(new Asteroids());
 
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
   for (int r = 0; r < ds.size(); r++)
 {
 //ds[r].show();
 //ds[r].move();
  ds.get(r).show();
  ds.get(r).move();
  
 {
 if (dist(ds.get(r).getX(),ds.get(r).getY(),nb.getX(), nb.getY()) < 30)
 {
 ds.remove(r);
 }
 }
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
    nb.accelerate(0.5);
  }
    if (key == 'k')
  {
    nb.accelerate(-0.1);
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