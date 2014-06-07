import java.util.*;

public class G1 {
  int bgycor,platxcor,platycor;
  int plat;
  PImage bg;
  Jiji j;


  void setup() {
    bg = loadImage("wall.jpg");
    j = new Jiji();
    j.setup();
    j.setycor(360);
    platforms = new Stack();
    for (int i = 0; i < 10; i++){
      Random r = new Random();
      int temp = r.nextInt(450);
      Platform p = new Platform(i + 1, temp, 250);
      platforms.push(p);
    }
    botPlat = platforms.pop();
  }

  void draw() {
    background(0);
    image(bg, 0, bgycor % 600);
    image(bg, 0, (bgycor % 600) - 600);
    j.draw();
    botPlat.draw();
    platforms.peek().setYcor(botPlat.getYcor() - 140);
    platforms.peek().draw();
  }
  
  void scrollup(){
    bgycor = bgycor + 25;
  }
  
  void scrolldown(int pix){
    bgycor = bgycor - pix;
  }
}

