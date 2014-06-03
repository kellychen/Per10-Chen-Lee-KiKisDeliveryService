public class Crow{
  int num;
  int xcor;
  int ycor;
  PImage crow;
  
  void setup(){
    crow = loadImage("crow.png");
    xcor = 1000;
    ycor = (int)(500*Math.random());
  }
  
  void draw(){
    image(crow, xcor, ycor);
    xcor = xcor - 3;
  }
  
  void checkHit(){
    if (xcor == Kiki.xcor && ycor = Kiki.ycor)
  }
  
}


