public class Jiji {
  int health;
  int xcor;
  int ycor;
  int yvel;
  int jumpHeight;
  int time;
  boolean up;
  boolean down;
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
    if (millis() - tempmillis > 25) {
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
          if (xcor >= botPlat.getXcor() - 20 && xcor < botPlat.getXcor() + 160 && 
            ycor > botPlat.getYcor() - 125 && ycor < botPlat.getYcor() - 85) {
            down = false;
            setycor(botPlat.getYcor() - 100);
            basePlat = botPlat;
            jumpHeight = 0;
              botPlat = midPlat;
              midPlat = topPlat;
              topPlat = fPlat;
            if (!platforms.empty()) {
              fPlat = platforms.pop();
            } else {
              fPlat = null;
            }
          } else {
            jumpHeight = jumpHeight - 20;
            botPlat.setYcor(botPlat.getYcor() - 20);
            g1.scrolldown(20);
          }
        } else if (down && jumpHeight <= 0) {
          down = false;
        }
        tempmillis = millis();
      }
    }
  }

  void moveRight() {
    if (xcor < 500) {
      xcor = xcor + 20;
    } else if (xcor < 900) {
      tg1.scrollright();
    }
  }
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 20;
    } else {
      tg1.scrollleft();
    }
  }
}

