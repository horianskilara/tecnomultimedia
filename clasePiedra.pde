class Piedra {
  int px, py, ptam; 
  boolean pArrojada;
  PImage piedra;

  Piedra(int px_, int py_ ) {
    px = px_;
    py = py_;
    ptam = 30;
    pArrojada = false;
    piedra = loadImage ("piedra.png");

  }
  void dibujarPiedra() {
    image(piedra, px, py, ptam, ptam);
  }

  void moverPiedra(int px_) {
    if (pArrojada && py> -ptam/2) {
      py -= 30;
    } 
    else{
      py = height;
      px = px_;
      pArrojada = false;
    }
  }

  void arrojarPiedra() {
    pArrojada = true;
  }
}
