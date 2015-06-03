
/*

  Text Utilities
  
  FadingText class taken from 'v.k.' via http://forum.processing.org/one/topic/fade-text-out.html

*/

class FadingText {
  String txt;
  PFont font;
  float alpha;
  float x, y, w, h;

  FadingText (String _txt, PFont _font) {
    txt = _txt;
    font = _font;
    alpha = 0;
    
    textAlign(CENTER, TOP);
    rectMode(CORNER);
    textFont(font);
    textSize(54);
    noStroke();
    
    x = 102; //width/20;
    y = 600; //(height/10) * 8;
    w = 820; //(width/20) * 19;
    h = 150; //(height/10) * 8;
  }

  void display() {
    fill(0, alpha);
    text(txt, x, y, w, h);
    fill(255, alpha);
    text(txt, x-2, y-2, w, h);    
    alpha += 2.5;
  }

  boolean isDone() {  
    //return alpha < 0;
    return alpha > 255;
  }
  
  void reset() {
    //alpha = 255;
    alpha = 0;
  }
}
