
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
    r = random(125, 255);
    g = random(125, 255);
    b = random(125, 255);

    x = random(300, 900);
    y = random(100, 600);
  }

  void display() {
    textFont(font); //textSize(15);
    noStroke();
    fill(r, g, b, alpha);
    text(txt, x, y);
    alpha -= 1;// fading speed
  }

  boolean isDone() {  
    return alpha < 0;
  }
}
