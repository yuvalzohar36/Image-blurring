PImage img;

void setup() {
  size(300, 300);
  img = loadImage("https://happycoding.io/images/stanley-1.jpg");
}

void draw() {
  // Set that pixel to black
  if (mouseButton == LEFT){
    for(int i = 0;i<10;i++){
        for(int j = 0 ;j<10;j++){
            if(int(mouseX)+i < img.width && int(mouseY)+j < img.height){
                color new_color = img.get(mouseX, mouseY);
                img.set(mouseX+i,mouseY+j,new_color+int(random(2)));
            }
        }
    }
}
  image(img, 0, 0);
}

