class Fuego {
  int fuex, fuey, fuetam; 
  boolean fuegoLanzado;
  PImage fuegofoto;

  Fuego(int fuex_, int fuey_ ) {
    fuex = fuex_;
    fuey = fuey_;
    fuegoLanzado = false;
    fuetam = 30;
    fuegofoto = loadImage ("fuego.png");

  }
  void dibujarFuego() {
    image(fuegofoto, fuex, fuey, fuetam, fuetam);

  }

  void moverFuego(int cx_) { 
    
    if (fuegoLanzado == true && fuey > fuetam/2) {
      fuey -= 20;
    } else {
      fuey = height;
      fuex = cx_;
      fuegoLanzado = false;
    }
  }

  void dispararFuego() {
    fuegoLanzado = true;

  }
}
