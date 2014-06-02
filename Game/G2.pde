public class G2 {
  Kiki k = new Kiki();
  Crow c = new Crow();
  Crow c2 = new Crow();
  Crow c3 = new Crow();
  Crow c4 = new Crow();
  Crow c5 = new Crow();
  PImage bg;
  int bgxcor;
  int crownum;
  boolean win;

  void setup() {
    size(1000, 600);
    bg = loadImage("skybg.jpg");
    frameRate(70); //anything above 60 should be fine
    crownum = 2;
    k.setup();
    c.setup();
  }

  void draw() {
    bgxcor--;
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    k.draw();
  }
}

