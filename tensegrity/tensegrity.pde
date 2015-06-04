
/*

  Elder Workshop, Karen Jamieson Dance
  Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver

*/

/*
TODO

  fade text in as image fades out (test in image ?)
  fade image in and out (no snap)
  fade to silhouette
  more tree images
  
*/


// GLOBALS

PFont font;
String[] list;
FadingText[] quotes;
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
  list = loadStrings("words/words-quotes.txt");
  quotes = new FadingText[list.length];
  for(int i = 0; i < list.length; i++) {
     quotes[i] = new FadingText(list[i], font);
  }

  // Load Images
  
  int CAP = 5;
  
  PImage[] trees = new PImage[CAP];
  for(int i = 0; i< trees.length; i++) {
    trees[i] = loadImage("images/trees/tree_" + i + ".png" );
  }
  
  PImage[] elders = new PImage[CAP];
  PImage[] elders_bw = new PImage[CAP];
  for(int i = 0; i< elders.length; i++) {
    elders[i] = loadImage("images/elders/elders_" + i + ".jpg" );
    elders_bw[i] = loadImage("images/elders/elders_" + i + "_bw.jpg" );
  }

  PImage[] wksp = new PImage[CAP];
  PImage[] wksp_bw = new PImage[CAP];
  for(int i = 0; i< wksp.length; i++) {
    wksp[i] = loadImage("images/wksp/wksp_" + i + ".jpg" );
    wksp_bw[i] = loadImage("images/wksp/wksp_" + i + "_bw.png" );
  }
  
  images = new FadingImage[10];
  for(int i = 0; i< images.length; i++) {
    if(i < CAP) {
      images[i] = new FadingImage(elders[i], elders_bw[i], list[i]);
    }
    else {
      int j = i - CAP;
      images[i] = new FadingImage(wksp[j], wksp_bw[j], list[i]);
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



