
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

  FadingImage (PImage _fore, PImage _back, String _txt, PFont _font) {
    fore = _fore;
    back = _back;
    txt = _txt;
    font = _font;
    alpha = 128;
    descending = false;
    
    textAlign(CENTER, TOP);
    rectMode(CORNER);
    textFont(font);
    textSize(54);
    noStroke();
    
    x = 102; 
    y = 600; 
    w = 820; 
    h = 150; 
  }

  void display() {
    //if (alpha > 0) { alpha -= 0.25; }
    
    tint(255, alpha);
    image(fore, 0, 0);
    tint(255, 255 -alpha);
    image(back, 0, 0, width, height);  
    
    fill(0, 255 - alpha);
    text(txt, x, y, w, h);
    fill(255, 255 - alpha);
    text(txt, x-2, y-2, w, h);    
    
    if(descending) {
      alpha -= 0.5;
    }
    else {
      alpha += 1.5;
      if(alpha > 255) descending = true;
    }
    
    println("Alpha is " + alpha);
  }

  boolean isDone() {  
    return alpha < -255;
  }
  
  void reset() {
    alpha = 128; 
  }
}
