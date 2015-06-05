
/*

 Elder Workshop, Karen Jamieson Dance
 Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver
 
 */


// GLOBALS

PFont font;
String[] list;
String blurb[];
FadingImage[] images;
int word_index = 0;
int image_index = 0;

void setup() 
{
  // Screen
  size(1024, 768);
  background(255);
  smooth();
  frameRate(30);

  // Font
  font = loadFont("fonts/AdobeHeitiStd-Regular-96.vlw");
  textFont(font);

  // Load Words
  blurb = loadStrings("words/words-trees.txt");
  list = loadStrings("words/words-quotes.txt");

  // Load Images

  int CAP = 5;

  PImage[] trees = new PImage[3];
  PImage[] ppl = new PImage[3];
  for (int i = 0; i< trees.length; i++) {
    trees[i] = loadImage("images/trees/tree_" + i + ".png" );
    ppl[i] = loadImage("images/trees/ppl_" + i + ".jpg" );
  }


  PImage[] elders = new PImage[CAP];
  PImage[] elders_bw = new PImage[CAP];
  for (int i = 0; i< elders.length; i++) {
    elders[i] = loadImage("images/elders/elders_" + i + ".jpg" );
    elders_bw[i] = loadImage("images/elders/elders_" + i + "_bw.jpg" );
  }

  PImage[] wksp = new PImage[CAP];
  PImage[] wksp_bw = new PImage[CAP];
  for (int i = 0; i< wksp.length; i++) {
    wksp[i] = loadImage("images/wksp/wksp_" + i + ".jpg" );
    wksp_bw[i] = loadImage("images/wksp/wksp_" + i + "_bw.jpg" );
  }

  int offset = 0;
  images = new FadingImage[13];
  for (int i = 0; i< images.length; i++) {
    switch(i) {
      case 0: 
        images[i] = new FadingImage(elders[0], elders_bw[0], list[i-offset]);
        break;
      case 1: 
        images[i] = new FadingImage(elders[1], elders_bw[1], list[i-offset]);
        break;
      case 2: 
        images[i] = new FadingImage(wksp[0], wksp_bw[0], list[i-offset]);
        break;
      case 3: 
        images[i] = new FadingImage(wksp[1], wksp_bw[1], list[i-offset]);
        break;
      case 4: 
        offset++;
        images[i] = new FadingImage(ppl[0], trees[0], blurb[0]); 
        break;
      case 5: 
        images[i] = new FadingImage(elders[2], elders_bw[2], list[i-offset]);
        break;
      case 6: 
        images[i] = new FadingImage(elders[3], elders_bw[3], list[i-offset]);
        break;
      case 7: 
        images[i] = new FadingImage(wksp[2], wksp_bw[2], list[i-offset]);
        break;
      case 8: 
        images[i] = new FadingImage(wksp[3], wksp_bw[3], list[i-offset]);
        break;
      case 9: 
        offset++;
        images[i] = new FadingImage(ppl[1], trees[1], blurb[1]); 
        break;
      case 10: 
        images[i] = new FadingImage(elders[4], elders_bw[4], list[i-offset]);
        break;
      case 11: 
        images[i] = new FadingImage(wksp[4], wksp_bw[4], list[i-offset]);
        break;
      case 12: 
        offset++;
        images[i] = new FadingImage(ppl[2], trees[2], blurb[2]); 
        break;
    }
     
  }
}



void draw() 
{
  // Clear
  background(255);

  // Show 
  showSlides();

  // Save
  //saveFrame("frames/#####.png");
}

