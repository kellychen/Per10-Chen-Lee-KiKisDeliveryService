import java.util.*;

public class G1 {
  int bgycor,platxcor,platycor;
  int plat;
  PImage bg;
  Jiji j;
  Stack<Platform> platforms;

  void setup() {
    bg = loadImage("wall.jpg");
    j = new Jiji();
    j.setup();
    j.setycor(360);
    platforms = new Stack();
    for (int i = 0; i < 10; i++){
      Platform p = new Platform(i + 1, 100, 300);
      platforms.push(p);
    }
  }

  void draw() {
    background(0);
    image(bg, 0, bgycor % 600);
    image(bg, 0, (bgycor % 600) - 600);
    j.draw();
    platforms.peek().draw();
  }
  
  void scrollup(){
    bgycor = bgycor + 25;
  }
}

