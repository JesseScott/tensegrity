
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
  images = new FadingImage[3];
  //images[0] = new FadingImage(loadImage("images/workshop/wksp_1.jpg"), loadImage("images/workshop/wksp_1_silhouette.png"), list[0], font );
  //images[1] = new FadingImage(loadImage("images/tensegrity/tens_1.jpg"), loadImage("images/tensegrity/tens_1.png") );
  //images[2] = new FadingImage(loadImage("images/trees/tree_1.jpg"), loadImage("images/trees/tree_1_inv.jpg") );

  images[0] = new FadingImage(loadImage("images/workshop/wksp_5.jpg"), loadImage("images/trees/trees_1.png"), list[0], font );
  //images[4] = new FadingImage(loadImage("images/tensegrity/tens_2.jpg"), loadImage("images/tensegrity/tens_2.png") );
  //images[5] = new FadingImage(loadImage("images/trees/tree_2.jpg"), loadImage("images/trees/tree_2_inv.jpg") );

  images[2] = new FadingImage(loadImage("images/workshop/wksp_3.jpg"), loadImage("images/workshop/wksp_3.png"), list[2], font );
  //images[7] = new FadingImage(loadImage("images/tensegrity/tens_3.jpg"), loadImage("images/tensegrity/tens_3.png") );
  
}



void draw() 
{
  background(255);
  
  // Timer
  if(frameCount % 90 == 0) {
    println("FPS is " + round(frameRate));
  }

  
  // Show 
  showSlides();
  //showWords();
  
  // Save
  //saveFrame("frames/#####.png"); 
}



