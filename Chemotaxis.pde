Walker[] bob;
Walker[] carl;
void setup()
{
  size(500,500);
  carl = new Walker[300];
  for(int i = 0; i<carl.length; i++)
    carl[i] = new Walker(0);
  bob = new Walker[150];
  frameRate(1999);
  for(int i = 0; i<bob.length; i++)
    bob[i] = new Walker((int)(Math.random()*100+150));
}
void draw()
{

  noStroke();
  for(int x = 0; x < bob.length; x++)
  {
      bob[x].show();
      bob[x].walk();
  }
  if(mousePressed == true){
    for(int x = 0; x < bob.length; x++){
      carl[x].show();
      carl[x].walk();
    }
  }
}

class Walker
{
  int myX, myY, colo;
  Walker(int coloo)
  {
    myX = myY = 250;
    colo = coloo;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + ((int)(Math.random()*7)-3);
  }
  void show()
  {
    fill(0,colo,0);
    ellipse(myX, myY,1, 1);
  }
}
