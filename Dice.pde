Die Prime;
void setup()
{
  noLoop();
  size(600, 600);
  Prime = new Die(30, 30);
}
void draw()
{
  background(224, 140, 247);
  Prime.roll();
  Prime.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rollNum;
  int myX;
  int myY;
  int dotSum;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dotSum = 0;
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
    for (int myY = 30; myY <= 500; myY += 60)
    {
      for (int myX = 30; myX <= 550; myX += 60)
      {
        pushStyle();
        fill(250);
        rect(myX, myY, 50, 50);
        popStyle();
        rollNum = (int)(Math.random()*6)+1;
        fill(0);
        if (rollNum == 1)
        {
          ellipse(myX+25, myY+25, 10, 10);
        } else if (rollNum == 2)
        {
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
        } else if (rollNum == 3)
        {
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+25, myY+25, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
        } else if (rollNum == 4)
        {
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+40, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
        } else if (rollNum == 5)
        {
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+40, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
          ellipse(myX+25, myY+25, 10, 10);
        } else if (rollNum == 6)
        {
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+40, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
          ellipse(myX+10, myY+25, 10, 10);
          ellipse(myX+40, myY+25, 10, 10);
        }
      }
    }
  }
}
