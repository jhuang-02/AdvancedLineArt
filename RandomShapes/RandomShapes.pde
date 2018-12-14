void setup(){
// canvas
size(500, 500);
// Background color white
background(255);
noFill();
}
void draw(){
  // random offset
float x = random(-100, 100);
float y = random(-100, 100);
float size = random(0, 50);
ellipse(mouseX + x, mouseY + y, size, size);

}
