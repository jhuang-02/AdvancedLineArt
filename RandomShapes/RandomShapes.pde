void setup(){
// canvas
size(500, 500);
// Background color white
background(255);
}
void draw(){
float x = random(0, 500);
float y = random(0, 500);
float size = random(0, 50);
ellipse(x, y, size, size);

}
