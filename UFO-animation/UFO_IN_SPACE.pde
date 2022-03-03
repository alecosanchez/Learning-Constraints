float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];

  int ellX = 0;
  int ellY = 270;


void setup() {
  size(900, 600);
  background(0);
  stroke(255);
  strokeWeight(5);

  int i = 0;
  while(i < 100) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {
  background(0);
  
  int i = 0;
  while(i < 100) {
    point(x[i], y[i]);
  
    x[i] = x[i] - speed[i];
    if(x[i] < 0) {
      x[i] = width;
     
    }
    i = i + 1;
  }
  //stroke(0);
  fill(255, 90);
  ellipse(ellX,ellY-25, 80, 100);
  //noStroke(); 
  fill(100,150,20); 
  ellipse(ellX,ellY, 150, 60); 
  //noStroke(); 
  fill(255); 
  ellipse(ellX,ellY-23, 80,15); 
  ellX = ellX + 1;
}
