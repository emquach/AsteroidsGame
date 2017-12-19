Spaceship nb = new Spaceship();
//Bullet pp = new Bullet();
Stars[] pq = new Stars[250];
//Asteroids[] ds = new Asteroids[10]; 
ArrayList <Asteroids> ds = new ArrayList <Asteroids>();
ArrayList <Bullet> pp = new ArrayList <Bullet>();
int life = 200;

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
  //nb.show();
  //nb.move();
  //pp.show();
  //pp.move();

  
  for (int i = 0; i < pq.length; i++)
 {
 pq[i].show();
 }
 
 //green
  //fill(#4C8E2C);
  //rect(10,10,life,10);
  
  
   for (int r = 0; r < ds.size(); r++)
 {
 //ds[r].show();
 //ds[r].move();
  ds.get(r).show();
  ds.get(r).move();
  
  //fill(#B70000);
  //rect(10,10,200,10);
  //fill(#4C8E2C);
  //rect(10,10,life,10);
 //{
 //if (dist(ds.get(r).getX(),ds.get(r).getY(),nb.getX(), nb.getY()) < 20)
 //{
 //life = life - 10;
 //if (life <= 1){
 //  life = 0;
 //  //background(0);
 //  //textSize (50);
 //  //text("GAME OVER", 50, 50);
 //}
 ////ds.remove(r);
 //break;
 //}
 //}
 
 
 for (int w = 0; w < pp.size(); w++)
 {
  //pp.get(w).show();
  //pp.get(w).move();
  if(pp.get(w).getX() == 500 || pp.get(w).getX()== 0 || pp.get(w).getY()== 500 || pp.get(w).getY()== 0 )
     {
      pp.remove(w);
   break;  
   }
 if (dist(pp.get(w).getX(),pp.get(w).getY(),ds.get(r).getX(),ds.get(r).getY()) < 25)
 {
 ds.remove(r);
 pp.remove(w);
  break;
 }
 else
 {
 pp.get(w).move();
 pp.get(w).show();
 }
 }}
 
 
  
  nb.show();
  nb.move();
  //fill(#B70000);
  //rect(10,10,200,10);
  ////green
  //fill(#4C8E2C);
  //rect(10,10,life,10);
}
 

public void keyPressed()
{
if (key == 'd')
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
    nb.accelerate(-0.5);
  }
  
  if(key == 'j')
  {
    nb.turn(-10);
  }
  
    if(key == 'l')
  {
     nb.turn(10);
  }
     if(key == 'f')
  {
      pp.add(new Bullet(nb));
  }


  }