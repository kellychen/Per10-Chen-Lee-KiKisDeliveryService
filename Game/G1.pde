public class G1 {
  int bgycor;
  PImage bg;
  Jiji j;

  void setup() {
    bg = loadImage("wall.jpg");
    j = new Jiji();
    j.setup();
    j.setycor(360);
  }

  void draw() {
    background(0);
    image(bg, 0, bgycor % 600);
    image(bg, 0, 600+(bgycor % 600));
    j.draw();
  }
  
  void scrollup(){
    bgycor = bgycor + 25;
  }
}

