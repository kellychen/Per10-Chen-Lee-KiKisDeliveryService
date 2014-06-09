import java.util.*;

public class G1 {
  int bgycor;
  PImage bg;
  Jiji j;
  boolean retry;

  void setup() {
    set();
  }
  
  void set(){
    retry = false;
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
    //System.out.println(game1);
    if (retry) {
      noStroke();
      fill(rectfill);
      rect(125,255,375,25);
      fill(textfill);
      text("Press 'y' to play again, 'n' to skip",135,275);
      if (keyPressed){
        if(key == 'y' || key == 'Y'){
          retry1 = true;
        }
        else if (key == 'n' || key == 'N'){
          game1 = false;
          togame2 = true;
        }
      }
    } else {
      background(0);
      image(bg, 0, bgycor % 600);
      image(bg, 0, (bgycor % 600) - 600);
      fill(0);
      rect(600, 0, 400, 600);
      fill(255);
      text("Reach the top!\nBe careful of falling!", 700, 275);
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
  }

  void scrollup() {
    bgycor = bgycor + 25;
  }

  void scrolldown(int pix) {
    bgycor = bgycor - pix;
  }

  void changeRetry() {
    retry = true;
  }
}


