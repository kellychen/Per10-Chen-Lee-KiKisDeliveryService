public class G1 {
  PImage Jiji;
  float x, y;
  float rot;

  //G1(){
  //  go = false;
  //}

  void g1() {
  }
  //sprite testing
  void setup() {
    x = 0.0;
    y = width/2.0;
    rot = 0.0;
  }

  void draw() {
    background(150);
    Jiji = loadImage("Jiji.jpg");
    image(Jiji, 0, 0);
    translate(x, y);
    rotate(rot);

    x+= 1.0;
    rot += 0.02;
    if (x > width) {
      x = -width;
    }
  }
}

