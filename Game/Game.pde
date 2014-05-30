PFont f;
PImage bg;
PImage welcome;
String[] introimgs = {"Kiki_flying.jpg", "kds2.jpg", "kds3.jpg"};
String [] introtxt = {"Once upon a time, there was a young witch named Kiki.\nSince she has turned 13 this year, as per tradition, she must live \naway from home for a year to develop her witch skills. ",
                      "Upon settling in her new town, Kiki meets a nice baker named \nOsono who agrees to let Kiki stay with her on the condition that \nshe helps around the bakery and allows her to make her own \nmoney by making deliveries.", 
                      "text3"};
int intronum = 0;
boolean drawintro;
boolean g1 = false;
boolean g2 = false;
boolean g3 = false;

int rectfill;
int textfill;
int fade;
int tempmillis;
boolean startFade;
boolean startWelcome;

void setup(){
  size(1000, 600);
  f = createFont("Cambria",20,true);
  bg = loadImage(introimgs[intronum]);
  frameRate(70); //anything above 60 should be fine
    rectfill = 160;
  textfill = 25;
  fade = 5;
  startFade = false;
  tempmillis = millis();
  startWelcome = true;
  //welcome();
}

void draw(){
  if(startWelcome){
    welcome();
  }
  if(drawintro){
    intro();
  }
  else if(g1){
    playG1();
  }
  else if(g2){
   playG2(); 
  }
  else if(g3){
    playG3();
  }
}

void welcome(){
    welcome = loadImage("welcome.jpg");
    image(welcome, 0, 0);
    textFont(f,26);        
    textAlign(LEFT);
    fill(255);
    text("Click to begin witchy adventures", 500, 500);
  //"Click here to begin"
}

void intro(){
  if(startFade && millis() - tempmillis > 500){
    rectfill = rectfill + 10;
    textfill = textfill + 25;
    //if(millis() - tempmillis > 500){
      fade--;
      tempmillis = millis();
    //}
  }
  if(fade <= 0){
     add();
  }
  //background(0);
  else{
    bg = loadImage(introimgs[intronum]);
    image(bg,0,0);
    textFont(f,26);        
    textAlign(LEFT);
  //stroke(0);
  //strokeWeight(5);
    fill(rectfill);
    noStroke();
    if(intronum == 0){
      rect(95,430,620,25);
      rect(95,470,710,25);
      rect(95,510,608,25);
    }
    if(intronum == 1){
      rect(95,430,695,25);
      rect(95,470,715,25);
      rect(95,510,685,25);
      rect(95,550,325,25);
    }  
  fill(textfill);
  stroke(0);
  text(introtxt[intronum],100,450);
  }
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



void mousePressed(){
  if(startWelcome){
   startWelcome = false; 
   drawintro = true;
  }
  else if(drawintro){
    startFade = true;
  }
}

void add(){
  intronum++;
  fade = 5;
  startFade = false;
  rectfill = 160;
  textfill = 25;
  if(intronum >= introimgs.length){
    intronum = 0;
    drawintro = false;
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
