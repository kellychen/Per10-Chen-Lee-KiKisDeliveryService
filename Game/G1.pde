import java.util.*;

public class G1 {
  int bgycor, platxcor, platycor;
  int plat;
  PImage bg;
  Jiji j;
  //remember to add fourth platform variable

  void setup() {
    bg = loadImage("wall.jpg");
    j = new Jiji();
    j.setup();
    j.setycor(360);
    platforms = new Stack();
    for (int i = 0; i < 20; i++) {
      Random r = new Random();
      int temp = r.nextInt(450);
      Platform p = new Platform(i + 1, temp, 240);
      platforms.push(p);
    }
    botPlat = platforms.pop();
    midPlat = platforms.pop();
    topPlat = platforms.pop();
    fPlat = platforms.pop();
  }

  void draw() {
    background(0);
    image(bg, 0, bgycor % 600);
    image(bg, 0, (bgycor % 600) - 600);
    if (basePlat != null) {
      basePlat.draw();
      text("base " + basePlat.getNum(), 0, basePlat.getYcor());
    }
    if (botPlat != null) {
      if (botPlat.getNum() != 20) {
        botPlat.setYcor(basePlat.getYcor() - 160);
      }
      botPlat.draw();
      text("bot " + botPlat.getNum(), 0, botPlat.getYcor());
    }
    if (midPlat != null) {
      midPlat.setYcor(botPlat.getYcor() - 160);
      midPlat.draw();
      text("mid " + midPlat.getNum(), 0, midPlat.getYcor());
    }
    if (topPlat != null) {
      topPlat.setYcor(midPlat.getYcor() - 160);
      topPlat.draw();
      text("top " + topPlat.getNum(), 0, topPlat.getYcor());
    }
    if (fPlat != null) {
      fPlat.setYcor(topPlat.getYcor() - 160);
      fPlat.draw();
    }

    j.draw();
  }

  void scrollup() {
    bgycor = bgycor + 25;
  }

  void scrolldown(int pix) {
    bgycor = bgycor - pix;
  }
}

