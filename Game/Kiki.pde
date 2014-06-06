public class Kiki {
  int health;
  int xcor;
  int ycor;
  int count;
  PImage kiki;
  //PROBLEM: Draw happens too quickly so when you press any key it happens like way more than one time so kiki goes flying (no pun intended)\

  void setup() {
    kiki = loadImage("flyingkiki.png");
    health = 3;
  }

  void draw() {
    image(kiki, xcor, ycor);
    if (keyPressed) {
      if (millis() - tempmillis > 15) {
        if (key == 'w' || key == 'W') {
          moveUp();
        } else if (key == 'a' || key == 'A') {
          moveLeft();
        } else if (key == 's' || key == 'S') {
          moveDown();
        } else if (key == 'd' || key == 'D') {
          moveRight();
        }
        tempmillis = millis();
      }
    }
  }

  void moveUp() {
    if (ycor < 600 && ycor > 0) {
      ycor = ycor - 25;
    }
  }
  void moveDown() {
    if (ycor >= 0 && ycor < 500) {
      ycor = ycor + 25;
    }
  }
  void moveRight() {
    if (xcor < 900) {
      xcor = xcor + 25;
    }
  }
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 25;
    }
  }
  public int getxcor() {
    return xcor;
  }
  public int getycor() {
    return ycor;
  }
  public int getHealth() {
    return health;
  }
  public void decHealth() {
    health--;
  }
  public void stop() {
    noLoop();
  }
}

