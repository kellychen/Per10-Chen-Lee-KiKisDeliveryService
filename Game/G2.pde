public class g2 {
  Kiki k;
  PImage bg;
  int bgxcor;

  void setup() {
    size(1000, 600);
    bg = loadImage("skybg.jpg");
    frameRate(70); //anything above 60 should be fine
  }

  void draw() {
    bgxcor++;
    image(bg, bgxcor % 1000, 0);
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        k.moveUp();
      } else if (key == 'a' || key == 'A') {
        k.moveLeft();
      } else if (key == 's' || key == 'S') {
        k.moveDown();
      } else if (key == 'd' || key == 'D') {
        k.moveRight();
      }
    }
  }
}

