public class Jiji {
  int health, xcor, ycor, yvel, jumpHeight, time;
  boolean up, down, win, wasOnPlat, fall;
  PImage jiji;

  /*
  yvel = yvel + 9.8*time
   */

  void setup() {
    jiji = loadImage("jiji.png");
    health = 3;
    ycor = 450;
  }

  void setycor(int ycor) {
    this.ycor = ycor;
  }

  void draw() {
    image(jiji, xcor, ycor);
    jump();
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        if (!up && !down) {
          up = true;
          tempmillis = millis();
        }
      } else if (key == 'a' || key == 'A') {
        moveLeft();
      } else if (key == 'd' || key == 'D') {
        moveRight();
      }
    }
  }

  void jump() {
    if (win) {
      //stop();
        game1 = false;
        togame2 = true;
    }
    if (fall) {
      if (ycor > 600) {
        //stop();
        g1.changeRetry();
      } else {
        ycor = ycor + 20;
      }
    } else if (millis() - tempmillis > 25) {
      if (ycor <= 350) {
      }
      if (ycor < 600 && ycor > 0) {
        if (up && jumpHeight < 160) {
          ycor = ycor - 20;
          jumpHeight = jumpHeight + 20;
            if (basePlat == null) {
              botPlat.setYcor(botPlat.getYcor() + 20);
            } else {
              basePlat.setYcor(basePlat.getYcor() + 20);
            }
            g1.scrollup();
        } else if (up && jumpHeight >= 160) {
          up = false;
          down = true;
        } else if (down && jumpHeight > 0) {
          ycor = ycor + 20;
            if (xcor >= botPlat.getXcor() - 50 && xcor < botPlat.getXcor() + 130 && 
              ycor > botPlat.getYcor() - 125 && ycor < botPlat.getYcor() - 85) {
              down = false;
              setycor(botPlat.getYcor() - 100);
              basePlat = botPlat;
              jumpHeight = 0;
              botPlat = midPlat;
              midPlat = topPlat;
              topPlat = fPlat;
              int dif = (360 - ycor);
              setycor(ycor + dif);
              basePlat.setYcor(basePlat.getYcor() + dif);
              if (basePlat.getNum() == 1) {
                win = true;
              }
              if (!platforms.empty()) {
                fPlat = platforms.pop();
              } else {
                fPlat = null;
              }
          } else {
            jumpHeight = jumpHeight - 20;
              if (basePlat!= null) {
                basePlat.setYcor(basePlat.getYcor() - 20);
              } else {
                botPlat.setYcor(botPlat.getYcor() - 20);
              }
              g1.scrolldown(20);
          }
        } else if (down && jumpHeight <= 0) {
          down = false;
            if (basePlat != null && !(xcor >= basePlat.getXcor() - 50 && xcor < basePlat.getXcor() + 130)) {
              fall = true;
            }
        }
        tempmillis = millis();
      }
    }
  }

  void moveRight() {
    if (xcor < 500) {
      xcor = xcor + 20;
    } 
    if (basePlat != null && !(xcor >= basePlat.getXcor() - 50 && xcor < basePlat.getXcor() + 130)) {
      fall = true;
    }
  }
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 20;
    } 
    if (basePlat != null && !(xcor >= basePlat.getXcor() - 50 && xcor < basePlat.getXcor() + 130)) {
      fall = true;
    }
  }

  void stop() {
    noLoop();
  }
}

