public class ToG2 {
  PFont f;
  PImage bg, go;
  int bgxcor;
  Kiki k;

  void setup() {
    k = new Kiki();
    k.setup();
    bg = loadImage("toG2.jpg");
    go = loadImage("cagejiji.png");
    f = createFont("Cambria", 20, true);
  }

  void draw() {
    image(bg, bgxcor % 1000, 0);
    image(bg, 1000+(bgxcor % 1000), 0);
    image(go, 900, 20);
    check();
    k.draw();
    noStroke();
    fill(rectfill);
    rect(55,480,885,25);
    rect(285,520,420,25);
    fill(textfill);
    textFont(f, 26);        
    textAlign(CENTER);
    text("Use WASD keys to fly and avoid the crows. You have 3 lives so use them wisely! \n Fly to the cage in the top right to begin!", 500, 500);
  }

  void check() {
    if (Math.abs(k.getxcor() - 900) < 10 && Math.abs(k.getycor() - 20) < 10) {
      game2 = true;
      togame2 = false;
    }
  }
}

