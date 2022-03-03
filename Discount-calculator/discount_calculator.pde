float discount = 0;
float purchase = random(5, 110);
float finalPrice = purchase-discount;

void setup() {
size (300, 500);
background(255);
}


void draw() {
line(0,100, 500, 100);
textSize(20);
text("Aleco's Discount Store", 50, height/8);
text("THANK YOU FOR THE SALE!", 15, 480);
fill(0);

textSize(20);
text("Your Purchase:", 25, 200);
fill(0);

textSize(20);
text("Your Discount:", 25, 300);
fill(0);

textSize(20);
text("Final Price:", 25, 400);
fill(0);


if (purchase > 100) {
  discount = 20;
}
if (purchase >= 40 && purchase <= 99) {
  discount = 10;
}
if (purchase >= 20 && purchase <= 39) {
  discount = 5;
}

text(purchase, 200,200);
text(discount, 200,300);
fill(200,0,0);
text(purchase-discount, 200,400);


}
