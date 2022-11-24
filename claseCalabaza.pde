class Calabaza {
  int cx, cy, ctam; 
  PImage calabazafoto;

  Calabaza() {
    ctam = 80;
    cx = width/2;
    cy = height-ctam/2;
    calabazafoto = loadImage ("calabaza.gif");

  }

  void dibujarCalabaza() {
  image(calabazafoto, cx, cy, ctam/2, ctam/2);

  }
  void moverCalabaza(int tecla) { // parámetro tecla
    if (tecla==RIGHT && cx<width-ctam/4) { // limite
      cx+=3;
    }
    if (tecla==LEFT && cx>ctam/4) {
      cx-=3;
    }
    /*mover.amp(0.2);
        mover.play();*/
  }
}
