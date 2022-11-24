class Boton {
  int bx, by, ancho, alto, actual, sig;

  Boton(int bx_, int by_, int ancho_, int alto_) {
    bx = bx_;
    by = by_;
    ancho = ancho_;
    alto = alto_;
  }
  void dibujarBoton(int actual_, int sig_) {
    actual = actual_;
    sig = sig_;
   
  }
  boolean tocarBoton(int bx_, int by_, int ancho_, int alto_) {
    bx = bx_;
    by = by_;
    ancho = ancho_;
    alto = alto_;
    boolean presionado = mouseX>bx && mouseX<bx+ancho && mouseY>by && mouseY <by+alto == true; 
    return presionado;
  }
}
