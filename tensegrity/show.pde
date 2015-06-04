
/*

  Drawing Methods
  
*/


void showSlides() 
{
  images[image_index].display();
  if(images[image_index].isDone()) {
    image_index = (image_index+1) % images.length;
    images[image_index].reset();
  }
}
