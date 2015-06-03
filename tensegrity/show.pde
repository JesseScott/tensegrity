
/*

  Drawing Methods
  
*/

void showWords() 
{
  quotes[word_index].display();
  if(quotes[word_index].isDone()) {
    word_index = (word_index+1) % list.length;
    quotes[word_index].reset();
  }
}

void showSlides() 
{
  images[image_index].display();
  if(images[image_index].isDone()) {
    image_index = (image_index+1) % images.length;
    images[image_index].reset();
  }
}
