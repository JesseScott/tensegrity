
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

PFont font;
String[] list, quote;
ArrayList <FadingText> words = new ArrayList<FadingText>();
int i;


void setup() 
{
  // Screen
  size(1280, 720, OPENGL);
  background(0);
  smooth();
  
  // OpenGL
  PGraphicsOpenGL pg = (PGraphicsOpenGL)g;
  PGL pgl = beginPGL();  
  gl = ((PJOGL)pgl).gl.getGL2();
  gl.glHint (gl.GL_LINE_SMOOTH_HINT, gl.GL_NICEST);
  gl.glEnable (gl.GL_LINE_SMOOTH);
  gl.glBlendFunc(gl.GL_SRC_ALPHA, gl.GL_ONE );
  
  // Font
  font = createFont("fonts/SansSerif-48.vlw", 32);
  textFont(font);
  
  // Load Words
  list = loadStrings("words/words-list.txt");
  if(list.length > 0)println("Loaded 'words-list': there are " + list.length + " lines");
  quote = loadStrings("words/words-quotes.txt");
  if(quote.length > 0)println("Loaded 'words-quote': there are " + quote.length + " lines");
  
  // Load Images
  
  
  // Shape
  ico = new Icosahedron(100);
  
}



void draw() 
{
  background(0);
  fill(255);
  
  // Icosahedron
  lights();
  pushMatrix();
    translate(width/2, height/2);
    translate(-width/3.0, 0);
    rotateX(frameCount * PI/185);
    rotateY(frameCount * PI/-200);
    stroke(200, 20, 0);
    noFill();
    ico.create();
  popMatrix();
  
  // Timer
  if(frameCount % 90 == 0) {
    i = (i+1) % quote.length;
    words.add(new FadingText(quote[i], font));
    println(frameRate);
  }

  // Show 
  showWords();
  
}

void showWords() 
{
  for(FadingText f:words) {
    f.display();
  }
}
