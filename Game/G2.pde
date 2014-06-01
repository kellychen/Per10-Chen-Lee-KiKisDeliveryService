public class G2 {
  Kiki k = new Kiki();
  PImage bg;
  int bgxcor;

  void setup() {
    size(1000, 600);
    bg = loadImage("skybg.jpg");
    frameRate(70); //anything above 60 should be fine
    k.setup();
  }

  void draw() {
    bgxcor--;
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    k.draw();
  }
}

