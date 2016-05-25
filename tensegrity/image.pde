
/*

  Image Utilities
  
*/

class FadingImage 
{
  
  PImage fore, back;
  PFont font;
  Boolean descending;
  float alpha;
  float x, y, w, h;
  String txt;

  FadingImage (PImage _fore, PImage _back, String _txt) 
  {
    fore = _fore;
    back = _back;
    txt = _txt;
    
    font = loadFont("fonts/AdobeHeitiStd-Regular-96.vlw");
    descending = false;
    alpha = -64;
    
    textAlign(CENTER, CENTER);
    rectMode(CORNER);
    textFont(font);
    textSize(42);
    noStroke();
    
    x = 0; 
    y = 618; 
    w = width; 
    h = 150; 
  }

  void display() 
  {
    pushStyle();
      tint(255, constrain(alpha, 0, 255));
      image(fore, 0, 0, width, height);
    popStyle();
    if(descending) {
      if(alpha > 0) {
        tint(255, 255 - alpha);
        image(back, 0, 0, width, height);
      }
      else { 
         tint(255, 255 + (alpha * 4));
         image(back, 0, 0, width, height);
      }
      alpha -= 0.75;   
      showText();  
    }
    else {
      alpha += 2.0;
      if(alpha > 319) descending = true;
    }    
    //showAlpha();
  }
  
  void showAlpha() 
  {
    pushStyle();
      stroke(255, 0, 0);
      strokeWeight(4);
      line(0, height/2, 200, height/2);
      fill(255, 0, 0);
      ellipse(100, (height/2) - alpha, 40, 40); 
      text(round(alpha), 100, 700);
    popStyle();
  }
  
  void showText() 
  {
    pushStyle();
      if(alpha > 0) 
        fill(255, (255 - alpha) * 1.5);
      else  
        fill(255, 255 + (alpha * 4.0));
      rect(x, y, w, h);  

      fill(0, (255 - alpha) * 1.5);
      text(txt, x, y, 1000, h); 
    popStyle();
  }

  boolean isDone() 
  { 
    if(descending)    
      return alpha < -64;
    else 
      return false;
  }
  
  void reset() 
  {
    alpha = -64;
    descending = false;
  }
}
