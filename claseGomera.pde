class Gomera {
  int gx, gy, gtam, t;
    PImage gomera;

  Gomera() {
    gtam = 150;
    gx = width/2;
    gy = height-gtam/2;
    gomera = loadImage ("gomera.png");

  }

  void dibujarGomera() {
  image(gomera, gx, gy, gtam/2, gtam);

  }
  void moverGomera(int t) { 
    if (t==RIGHT && gx<width-gtam/2) {
      gx+=5;
    }
    if (t==LEFT && gx>gtam/2) {
      gx-=5;
    }
  }
}
