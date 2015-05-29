
/*

  Elder Workshop, Karen Jamieson Dance
  Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver

*/

// IMPORTS
import javax.media.opengl.GL2;


// DECLARATIONS
Icosahedron ico;
PGraphicsOpenGL pg; 
PGL pgl;
GL2 gl;

// GLOBALS

color red = color(200, 20, 0);

PFont font;
String[] list;
FadingText[] quotes;
FadingImage[] images;
int word_index = 0;
int image_index = 0;


void setup() 
{
  // Screen
  size(1024, 768, OPENGL);
  background(255);
  smooth();
  
  // OpenGL
  PGraphicsOpenGL pg = (PGraphicsOpenGL)g;
  PGL pgl = beginPGL();  
  gl = ((PJOGL)pgl).gl.getGL2();
  gl.glHint (gl.GL_LINE_SMOOTH_HINT, gl.GL_NICEST);
  gl.glEnable (gl.GL_LINE_SMOOTH);
  gl.glBlendFunc(gl.GL_SRC_ALPHA, gl.GL_ONE );
  
  // Font
  font = createFont("fonts/SansSerif-48.vlw", 96);
  textFont(font);
  
  // Load Words
  list = loadStrings("words/words-quotes.txt");
  quotes = new FadingText[list.length];
  for(int i = 0; i < list.length; i++) {
     quotes[i] = new FadingText(list[i], font);
  }

  // Load Images
  images = new FadingImage[3];
  images[0] = new FadingImage(loadImage("images/workshop/wksp_1.jpg"), loadImage("images/workshop/wksp_1.png") );
  images[1] = new FadingImage(loadImage("images/workshop/wksp_2.jpg"), loadImage("images/workshop/wksp_2.png") );
  images[2] = new FadingImage(loadImage("images/workshop/wksp_3.jpg"), loadImage("images/workshop/wksp_3.png") );
  
  /*
  PImage[] images = new PImage[12];
  for ( int i = 0; i< images.length; i++) {
    images[i] = loadImage( i + ".jpg" );   // make sure images "0.jpg" to "11.jpg" exist
  }
*/
  
  // Shape
  ico = new Icosahedron(100);
  
}



void draw() 
{
  background(255);
  
  // Timer
  if(frameCount % 90 == 0) {
    //println("FPS is " + round(frameRate));
  }

  // Show 
  showSlides();
  showWords();
  //showShapes();
  
}


