
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

void showShapes() 
{
  lights();
  pushMatrix();
    translate(width/2, height/2);
    translate(-width/3.0, 0);
    rotateX(frameCount * PI/185);
    rotateY(frameCount * PI/-200);
    stroke(red);
    strokeWeight(2);
    strokeJoin(ROUND);
    noFill();
    ico.create();
  popMatrix();
}

void showSlides() 
{
  images[image_index].display();
  if(images[image_index].isDone()) {
    image_index = (image_index+1) % images.length;
    images[image_index].reset();
  }
}
