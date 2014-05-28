PFont f;
PImage bg;
String[] introimgs = {"kds.jpg", "kds2.jpg", "kds3.jpg"};
String [] introtxt = {"text1", "text2", "text3"};
int intronum = 0;
boolean drawintro;
boolean g1 = false;
boolean g2 = false;
boolean g3 = false;

void setup(){
  size(1000, 600);
  f = createFont("Cambria",20,true);
  bg = loadImage(introimgs[intronum]);
  frameRate(70); //anything above 60 should be fine
  drawintro = true;
}

void draw(){
  background(0);
  //while(drawintro){
  intro();
  //}
  if(g1){
    playG1();
  }
  else(g2){
   playG2(); 
  }
  else(g3){
    playG3();
  }
}

void intro(){
  //background(0);
  bg = loadImage(introimgs[intronum]);
  image(bg,0,0);
  textFont(f,26);        
  textAlign(LEFT);
  text(introtxt[intronum],100,100);
 //draw beginning story thing 
}

void playG1(){
  //code for Jiji's jumping quest
}

void playG2(){
 // code for Kiki's flying game
}

void playG3(){
 //code for Tombo's game
}



void mousePressed(MouseEvent e){
  intronum++;
  if(intronum >= introimgs.length){
    intronum = 0;
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
