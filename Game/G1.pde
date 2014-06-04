public class G1 {
  int bgycor;
  Jiji j;

  void setup() {
    bg = loadImage("wall.jpg");
    j = new Jiji();
    j.setup();
    j.setycor(360);
  }

  void draw() {
    image(bg, 0, bgycor % 600);
    image(bg, 0, 600+(bgycor % 600));
    j.draw();
  }
  
  void scrollup(){
    bgycor = bgycor + 25;
  }
}

