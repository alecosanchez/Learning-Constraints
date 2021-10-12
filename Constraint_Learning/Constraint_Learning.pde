/* SCENARIO: Last night you studied so
hard that your orange book fell straight
down from your hands and onto your brown
carpet */
int y = 40;
void setup() {
size(400,500);
}
void draw() {
 background(150, 210, 240);
//orange book
 fill(255, 102, 0);
 rect(145, y, 125, 35);
 fill(255);
 text("Learning Processing", 155, y+20);
//brown carpet
 fill(#A7690C);
 rect(0, 430, 400, 70);
 
 y = y + 2;
 y = constrain(y, 30, 400);
 
}
