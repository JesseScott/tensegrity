
/*

  Image Utilities
  
*/

class FadingImage {
  PImage fore, back;
  PFont font;
  Boolean descending;
  float alpha;
  float x, y, w, h;
  String txt;

  FadingImage (PImage _fore, PImage _back, String _txt) {
    fore = _fore;
    back = _back;
    txt = _txt;
    font = loadFont("fonts/AdobeHeitiStd-Regular-96.vlw");
    alpha = - 128;
    descending = false;
    
    textAlign(CENTER, CENTER);
    rectMode(CORNER);
    textFont(font);
    textSize(42);
    noStroke();
    
    x = 0; 
    y = 618; 
    w = 1000; 
    h = 150; 
  }

  void display() {
    tint(255, alpha);
    image(fore, 0, 0);
    if(descending) {
      tint(255, 255 -alpha);
      image(back, 0, 0, width, height);   
      showText();  
      alpha -= 1.0;
    }
    else {
      alpha += 2.5;
      if(alpha > 300) descending = true;
    }    
  }
  
  void showText() {
    pushStyle();
      fill(255, 255 - (alpha * 1.5));
      rect(x, y, w, h);   
      fill(0, 255 - (alpha * 1.5));
      text(txt, x, y, w, h); 
    popStyle();
  }

  boolean isDone() {  
    return alpha < -128;
  }
  
  void reset() {
    alpha = -128; 
  }
}
