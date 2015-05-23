
/*

  Elder Workshop, Karen Jamieson Dance
  Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver

*/

// IMPORTS


// DECLARATIONS


// GLOBALS

PFont font;
String[] list, quote;
ArrayList <FadingText> words = new ArrayList<FadingText>();
int i;


void setup() 
{
  size(1280, 720);
  background(0);
  
  font = createFont("fonts/SansSerif-48.vlw", 24);
  textFont(font);
  
  // Load Words
  list = loadStrings("words/words-list.txt");
  if(list.length > 0)println("Loaded 'words-list': there are " + list.length + " lines");
  quote = loadStrings("words/words-quotes.txt");
  if(quote.length > 0)println("Loaded 'words-quote': there are " + quote.length + " lines");
  
}



void draw() 
{
  background(0);
  fill(255);
  
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
