public class ToG2 {
  PFont f;
  PImage bg, go;
  int bgxcor;
  Kiki k;

  void setup() {
    k = new Kiki();
    k.setup();
    bg = loadImage("toG2.jpg");
    go = loadImage("cagedjiji.jpg");
    f = createFont("Cambria", 20, true);
  }

  void draw() {
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    image(go, 690, 10);
    check();
    k.draw();
    textFont(f, 26);        
    textAlign(CENTER);
    text("Use WASD keys to fly around and avoid the evil crows. Fly to the cage to begin!", 500, 500);
  }

  void check() {
    if (Math.abs(k.getxcor() - 690) < 50 && Math.abs(k.getycor() - 10) < 50) {
      game2 = true;
      togame2 = false;
    }
  }
}

