public class Kiki {
  int health;
  int xcor;
  int ycor;
  PImage kiki;

  Kiki() {
    kiki = loadImage("pixelkiki.jpg");
    health = 3;
  }

  void draw() {
    image(kiki, xcor, ycor);
  }

  void moveUp() {
    if (ycor < 600) {
      ycor = ycor - 100;
    }
  }
  void moveDown() {
    if (ycor > 0) {
      ycor = ycor + 100;
    }
  }
  void moveRight() {
    if (xcor < 1000) {
      xcor = xcor + 100;
    }
  }
  void moveLeft() {
    if (xcor > 0) {
      xcor = xcor - 100;
    }
  }
  
}

