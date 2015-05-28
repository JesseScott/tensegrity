
/*

  Image Utilities
  
*/

class FadingImage {
  PImage fore, back;
  float alpha;
  float x, y, w, h;

  FadingImage (PImage _fore, PImage _back) {
    fore = _fore;
    back = _back;
    alpha = 255;
  }

  void display() {
    if (alpha > 0) { alpha -= 0.25; }
    tint(255, alpha);
    image(fore, 0, 0);
    tint(255, 255 -alpha);
    image(back, 0, 0);  
    alpha -= 0.25;
  }

  boolean isDone() {  
    return alpha < 0;
  }
  
  void reset() {
    alpha = 255; 
  }
}
