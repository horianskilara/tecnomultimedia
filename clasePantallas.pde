class Pantallas {
  int imgs;
  PImage [] pant = new PImage[6];
  
  Pantallas() {
    for (int i=0; i<pant.length; i++) {
      pant[i] = loadImage("fondo"+i+".png");
    }
  }
  void dibujarPantallas(int imgs_ ) {
    imgs = imgs_;
    image(pant[imgs], 0, 0);
  }
}
