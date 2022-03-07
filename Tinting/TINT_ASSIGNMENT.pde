PImage img;

void setup() {
size (600, 400);
img = loadImage("nature-3082832__340.jpg");
}

void draw() {
image(img, 0, 0, 300, 200);
tint(50, 250, 50, 50);
image(img, 300, 200, 300, 200);
tint(100, 153, 204, 100);
image(img, 300, 0, 300, 200);
tint(255, 200, 200, 80);
image(img, 0, 200, 300, 200);
tint(0, 153, 204, 160);

}
