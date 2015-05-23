
/*

  Elder Workshop, Karen Jamieson Dance
  Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver

*/

// IMPORTS


// DECLARATIONS
Icosahedron ico;

// GLOBALS

PFont font;
String[] list, quote;
ArrayList <FadingText> words = new ArrayList<FadingText>();
int i;


void setup() 
{
  size(1280, 720, P3D);
  background(0);
  
  // Font
  font = createFont("fonts/SansSerif-48.vlw", 24);
  textFont(font);
  
  // Load Words
  list = loadStrings("words/words-list.txt");
  if(list.length > 0)println("Loaded 'words-list': there are " + list.length + " lines");
  quote = loadStrings("words/words-quotes.txt");
  if(quote.length > 0)println("Loaded 'words-quote': there are " + quote.length + " lines");
  
  // Load Images
  
  
  // Shape
  ico = new Icosahedron(75);
  
}



void draw() 
{
  background(0);
  fill(255);
  
  // Icosahedron
  lights();
  translate(width/2, height/2);

  pushMatrix();
    translate(-width/3.5, 0);
    rotateX(frameCount*PI/185);
    rotateY(frameCount*PI/-200);
    stroke(170, 0, 0);
    noFill();
    ico.create();
    popMatrix();
  
  // Timer
  if(frameCount % 30 == 0) {
    i = (i+1) % list.length;
    words.add(new FadingText(list[i], font));
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
