void setup()
  {
    size(400,400);
    noLoop();
  }
  void draw()
  {
    background(0);
    int total = 0;
    for (int i = 0; i < 300; i+= 50)
    {
      for (int j = 0; j <400; j+= 50)
      {
        Die myDie = new Die(j, i);
        myDie.roll();
        myDie.show();
        total += myDie.numDots;
      }
    }
    fill(140);
    text("Total number of dots:" + total, 50, 350); 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die 
  {
      int XValue;
      int YValue;
      int numDots;
      Die(int x, int y) //constructor
      {
          XValue = x;
          YValue = y;
      }
      void roll()
      {
        numDots = (int) (Math.random()*6) +1;
      }
      void show()
      {
          fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
          rect(XValue,YValue,51,51,7); 
          fill(0);
          if(numDots == 1)
          ellipse(XValue +25, YValue + 25, 10, 10);
          if(numDots == 2 || numDots == 3)
          {
            ellipse(XValue +38.5, YValue + 38.5, 10, 10);
            ellipse(XValue +12.5, YValue + 12.5, 10, 10);
            if(numDots == 3)
            {
              ellipse(XValue +25, YValue + 25, 10, 10);
            }
          }
          if(numDots == 4 || numDots == 5 || numDots == 6)
          {
            ellipse(XValue +38.5, YValue + 38.5, 10, 10);
            ellipse(XValue +12.5, YValue + 12.5, 10, 10);
            ellipse(XValue + 12.5, YValue + 38.5, 10, 10);
            ellipse(XValue + 38.5, YValue + 12.5, 10, 10);
            if(numDots == 5)
            {
              ellipse(XValue +25, YValue + 25, 10, 10);
            }
            if(numDots == 6)
            {
              ellipse(XValue + 12.5, YValue + 25.5, 10, 10);
              ellipse(XValue + 38.5, YValue + 25.5, 10, 10);
            }
          } 
      }
  }
