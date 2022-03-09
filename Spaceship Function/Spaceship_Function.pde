void setup() {
  background(40);
  size(700, 500);
  //color c = ;
}


void draw() {

  spaceship(250, 100, 255);
  spaceship(100, 50, 230);
  spaceship(400,225, 30);
  spaceship(0, 200,  155);
  spaceshipwindow(250, 100);
  spaceshipwindow(100, 50);
  spaceshipwindow(400, 225);
  spaceshipwindow(0, 200);
  

}

//Function for the space ship and all of its properties
void spaceship (float x, float y , color c){
  int window = 120;
  fill (c);
  rect(x + 100,y + 200,100, 50, 8, 8, 0, 0);
  noStroke();
  ellipse(x + 150,y + 205,50,50);
}

void spaceshipwindow (float x, float y ) {
  fill(255,0,0);
  int window = 120;
  rect(x + 110,y + 215, 80,20);
  fill(0,255,0);
  //loop for the windows
  ellipse(x + window,y + 225,20,20);
  ellipse(x + window +30, y + 225,20,20);
  ellipse(x + window +60, y + 225,20,20);
}
