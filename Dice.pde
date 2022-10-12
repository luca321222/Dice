Die Prime;
void setup()
{
  noLoop();
  size(600, 600);
}
void draw()
{
  int dotSum = 0;
  background(224, 140, 247);
  for (int myY = 30; myY <= 500; myY += 60)
  {
    for (int myX = 30; myX <= 550; myX += 60)
    {
      Prime = new Die(myX, myY);
      Prime.roll();
      Prime.show();
      dotSum = dotSum + Prime.rollNum;
    }
  }
  textSize(50);
  text("Dot Sum: " + dotSum, 150, 550);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int rollNum;
  int myX;
  int myY;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6)+1;
  }
  void show()
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
