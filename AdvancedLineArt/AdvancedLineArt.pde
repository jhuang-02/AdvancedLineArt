// PLEASE PRINT THIS IMAGE !
import processing.pdf.*;
PImage bitmapImage;
PGraphics vectorImage;

// this runs once
void setup() {
  //  WIDTH  HEIGHT
  size(600, 600); // size of canvas matches bitmapImage image
  noFill();
  strokeWeight(2);
  background(255);

  // load the image
  bitmapImage = loadImage("Photo.jpg");

  // Show pixels
  bitmapImage.loadPixels();
  
  // create the empty output PDF
  vectorImage = createGraphics(width, height, PDF, "output.pdf");
  
  // start drawing
  vectorImage.beginDraw();

  int position = 0;  
  while (position <= 359999) {
    
    // Get the brightness
    float b = 255 - brightness(bitmapImage.pixels[position]);  
    float diameter = map(b, 0, 255, 2, 5);        
    
    // Position of the Arc
    int x = position % width;
    int y = position / width;
    
      // Draw an arc for every 100th pixel
      if ( (x > 0) && (x % 7 == 0) && (y > 0) && (y % 7 == 0) ) {
      arc(x, y, diameter, diameter, 0, PI+QUARTER_PI, PIE);  
      
      // draw the arc to the PDF
      vectorImage.arc(x, y, diameter, diameter, 0, PI+QUARTER_PI, PIE); 
    }
    
      // Increment the position
      position += 1;
    
  }
  
  // Stop drawing to the PDF
  vectorImage.endDraw();
  vectorImage.dispose();
  vectorImage = null;

    
}

// this runs repeatedly until we tell it to stop
void draw() {
}
