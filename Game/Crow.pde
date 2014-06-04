public class Crow{
  int num;
  int xcor;
  int ycor;
  PImage crow;
  
  //MAKE IMAGE SMALLER.
  
  void setup(){
    crow = loadImage("crow.png");
    xcor = 1000;
    ycor = (int)(5*Math.random()) * 100;
  }
  
  void draw(){
    image(crow, xcor, ycor);
    xcor = xcor - 3;
    if(xcor <=0){
     xcor = 1050; 
     ycor = (int)(5*Math.random()) * 100;
    }
  }
  
  public int getxcor(){
   return xcor; 
  }
  public int getycor(){
    return ycor;
  }
}


