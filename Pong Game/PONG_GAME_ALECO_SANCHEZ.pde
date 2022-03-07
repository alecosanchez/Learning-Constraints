// ALECO SANCHEZ PONG GAME 
//Friday, DEC 10th, 2021

//Variables for scorekeeping, and game mechanics
PImage img;
float x = 300;
float a = random(0,600);
float s = 0;
float g = 0;
float q = 0;
float e = 0;

//loading the background image found in the "Data" Sketch folder. 
void setup(){
    img = loadImage("wpaper.jpeg");
    size(800,700);
}
//loading in the image 
//programing all of the objects that we will be interacting with in our game
//paddles, ball, score tracker, etc....
void draw(){
  background(160);
  image(img,0,0);
  fill(101,67,33);
  rect(x,600,100,30);
  rect(q,600,100,30);
  fill(0,96,255);
  ellipse(a,s,50,50);
  textSize(50);
  fill(255,0,0);
  text(g,50,50);
  fill(0,255,0);
  text(e,50,100);
  s +=5;
  if(s>600){
      s=0;
    a =random(0,600);
    
//Series of loops for score keeping while ensuring the
//ball will drop randomly along the top of the X - axis 
  }
  if(a>q&&a<q+100){
    if(s>565&&s<595){
      g =g+1;
      s=0;  
      a=random(0,600);
    }
  }
  if(a>x&&a<x+100){
    if(s>565&&s<595){
      e =e+1;
      s=0;  
      a=random(0,600);
    }
}


//Simple loops that state if either score reaches 11, either keyboard or arrow player wins.
//This winning text will be displayed in the console
  if(e >= 11 ) {
    println("ARROWS WINS!");
  }
  if(g >= 11 ) {
    println("KEYBOARD WINS!");
  }
}

//The code below is resonsible for allowing two players to play and control their paddles
//Using either the "A" and "D" keys or the left and right arrow keys

void keyPressed(){
  smooth();
  if(key == 'a'){
    q -=30;
  }
  if(key == 'd'){
    q +=30;
  }
  if(keyCode == RIGHT){
    x += 30;
  }
  if(keyCode == LEFT){
    x -= 30;
  }
}
