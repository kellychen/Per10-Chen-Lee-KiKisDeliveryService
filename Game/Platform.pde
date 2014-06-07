public class Platform{
  int num,xcor,ycor;
  PImage platform;
  
  Platform(int num, int xcor, int ycor){
    this.num = num;
    this.xcor = xcor;
    this.ycor = ycor;
    platform = loadImage("platform.png");
  }
  
  void draw(){
    image(platform,xcor,ycor);
  }
  
  void setXcor(int xcor){
    this.xcor = xcor;
  }
  
  void setYcor(int ycor){
    this.ycor = ycor;
  }
  
  int getNum(){
    return num;
  }
  
  int getXcor(){
    return xcor;
  }
  
  int getYcor(){
    return ycor;
  }
}
  
  
