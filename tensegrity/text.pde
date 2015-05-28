
/*

  Text Utilities
  
  FadingText class taken from 'v.k.' via http://forum.processing.org/one/topic/fade-text-out.html

*/

class FadingText {
  String txt;
  PFont font;
  float alpha;
  float r, g, b, x, y;

  FadingText (String _txt, PFont _font) {
    txt = _txt;
    font = _font;
    alpha = 255;
    r = 255;//random(125, 255);
    g = 255;//random(125, 255);
    b = 255;//random(125, 255);

    //x = random(300, 900);
    //y = random(100, 600);

    x = width/2;
    y = height/8;
  }

  void display() {
    textAlign(CENTER, CENTER);
    textFont(font);
    noStroke();
    //fill(r, g, b, alpha);
    fill(255, alpha);
    text(txt, x, y);
    fill(0, alpha);
    text(txt, x+1, y+1);    
    alpha -= 0.25;
  }

  boolean isDone() {  
    return alpha < 0;
  }
  
  void reset() {
    alpha = 255; 
  }
}
