public class G3 {
  PImage bg;
  Thrower t;

  void setup() {
    t = new Thrower("throwertest.jpg");
    t.setup();
  }

  void draw() {
    t.draw();
  }
}

