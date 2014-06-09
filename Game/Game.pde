
PFont f;
PImage bg;
PImage welcome;
String[] introimgs = {
  "Kiki_flying.jpg", "bakery.jpg", "osono.jpg"
};
String [] introtxt = {
  "Once upon a time, there was a young witch named Kiki.\nSince she has turned 13 this year, as per tradition, she must live \naway from home for a year to develop her witch skills. ", 
  "Upon settling in her new town, Kiki meets a nice baker named \nOsono who agrees to let Kiki stay with her on the condition that \nshe helps around the bakery and allows her to make her own \nmoney by making deliveries.", 
  "Osono: Jiji I need some milk. Could you go get some for me please?"
};
String[] endimgs = {
"end1.jpg", "end2.jpg", "end3.jpg", "end4.jpg", "end5.jpg", "end6.jpg", "end7.jpg", "end8.jpg", "end9.jpg", "end10.jpg"
};

int intronum = 0;
int endnum = 0;
boolean drawintro;
boolean togame1 = false;
boolean togame2 = false;
boolean game1 = false;
boolean game2 = false;
boolean game3 = false;

int rectfill;
int textfill;
int fade;
int tempmillis;
boolean startFade;
boolean startWelcome;
boolean toMilk;
ToG1 tg1;
ToG2 tg2;
G1 g1;
G2 g2;
G3 g3;

Platform botPlat,midPlat,topPlat,fPlat,basePlat;
Stack<Platform> platforms;

void setup() {
  size(1000, 600);
  f = createFont("Cambria", 20, true);
  bg = loadImage(introimgs[intronum]);
  frameRate(60); //anything above 60 should be fine
  rectfill = 160;
  textfill = 25;
  fade = 5;
  startFade = false;
  tempmillis = millis();
  startWelcome = true;
  tg1 = new ToG1();
  tg1.setup();
  g1 = new G1();
  g1.setup();
  tg2 = new ToG2();
  tg2.setup();
  g2 = new G2();
  g2.setup();
  g3 = new G3();
  g3.setup();
}

void draw() {
  //endscreen();
  //background(0);
  //playG1();
  //playG2();
  //playG3();
  //endscreen();

    if (startWelcome) {
   welcome();
   }
   if (drawintro) {
   intro();
   } else if (togame1) {
   playpreG1();
   } else if (game1) {
   playG1();
   } else if(togame2){ 
   playpreG2();
   }if (game2) {
   playG2();
   } else if (game3) {
   playG3();
   }
   
 }

void welcome() {
  welcome = loadImage("welcome.jpg");
  image(welcome, 0, 0);
  textFont(f, 26);        
  textAlign(LEFT);
  fill(255);
  text("Click to begin your witchy adventures", 500, 500);
  //"Click here to begin"
}

void intro() {
  if (startFade && millis() - tempmillis > 50) {
    rectfill = rectfill + 10;
    textfill = textfill + 25;
    //if(millis() - tempmillis > 500){
    fade--;
    tempmillis = millis();
    //}
  }
  if (fade <= 0) {
    add();
  }
  //background(0);
  else {
    bg = loadImage(introimgs[intronum]);
    image(bg, 0, 0);
    textFont(f, 26);        
    textAlign(LEFT);
    //stroke(0);
    //strokeWeight(5);
    fill(rectfill);
    noStroke();
    if (intronum != 2) {
      if (intronum == 0) {
        rect(95, 430, 620, 25);
        rect(95, 470, 710, 25);
        rect(95, 510, 608, 25);
      }
      if (intronum == 1) {
        rect(95, 430, 695, 25);
        rect(95, 470, 715, 25);
        rect(95, 510, 685, 25);
        rect(95, 550, 325, 25);
      }  
      fill(textfill);
      stroke(0);
      text(introtxt[intronum], 100, 450);
    } else {
      rect(95, 530, 745, 25);
      rect(798, 300, 75, 25);
      fill(textfill);
      stroke(0);
      text(introtxt[intronum], 100, 550);
      text("meow", 800, 320);
    }
  }
  //draw beginning story thing
}

void endscreen() {
  bg = loadImage(endimgs[endnum]);
  image(bg, 0, 0);
  textFont(f, 22);
  textAlign(CENTER);
  text("Thank you for playing!", 550, 500);
  if(endnum == endimgs.length - 1){
    endnum = 0;
  }else{
   endnum++; 
  }
}
/*
void toMilk() {
 bg = loadImage("JijiToMilk.jpg");
 image(bg, 0, 0);
 textFont(f, 26);        
 textAlign(LEFT);
 }
 */

void playpreG1() {
  tg1.draw();
}

void playpreG2() {
  tg2.draw();
}
void playG1() {
  g1.draw();
}

void playG2() {
  g2.draw();
}

void playG3() {
  g3.draw();
}



void mousePressed() {
  if (startWelcome) {
    startWelcome = false; 
    drawintro = true;
  } else if (drawintro) {
    startFade = true;
  }
}

void add() {
  intronum++;
  fade = 5;
  startFade = false;
  rectfill = 160;
  textfill = 25;
  if (intronum >= introimgs.length) {
    intronum = 0;
    drawintro = false;
    togame1 = true;
    //toMilk = true;
  }
}
/* Key Press stuff for jumping of flying put within draw() method
 if(keyPressed){
 if(key == 'w' ++ key = 'W'){
 //move up
 } else if(key == 'a' || key == 'A'){
 //move left
 } else if(key == 's' || key == 'S'){
 //move down
 } else if(key == 'd' || key == 'D'){
 //move right 
 }
 //we could probably use WASD for flying and arrow keys for jumping or something if we ever need to do them at the same time
 }
 */
