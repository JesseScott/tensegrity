
/*

  Elder Workshop, Karen Jamieson Dance
  Elder Health Exhibition, Roundhouse Community Arts Centre, Vancouver

*/

// IMPORTS


// DECLARATIONS


// GLOBALS

PFont font;
String[] list;
ArrayList <FadingText> words = new ArrayList<FadingText>();
int i;


void setup() 
{
  size(1280, 720);
  background(0);
  
  font = createFont("fonts/SansSerif-48.vlw", 48);
  textFont(font);
  
  // Load Words
  list = loadStrings("words/words-list.txt");
  if(list.length > 0)println("Loaded 'words-list': there are " + list.length + " lines");

  
}



void draw() 
{
  background(0);
  fill(255);
  
  if(frameCount % 30 == 0) {
    // increment i constraining it to length of array
    i = (i+1) % list.length;
    // create a FadingText for this word and display it
    words.add(new FadingText(list[i], font));
  }

  // Show 
  showWords();
  
}

void showWords() 
{
    for (FadingText f:words) {
    f.display();
  }
}
