public class Crow{
  int num;
  int xcor;
  int ycor;
  PImage crow;
  
  void setup(){
    crow = loadImage("Crow.png");
    xcor = 500;
    ycor = (int)(600*Math.random());
  }
  
  void draw(){
    image(crow, xcor, ycor);
    xcor = xcor - 3;
  }
  
}


