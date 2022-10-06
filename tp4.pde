//https://youtu.be/dQCZecYh1H4

PImage pasto;
Juego juegoBichos;
void setup() {
  size(600, 500);
  pasto = loadImage ("pasto.jpg");
  juegoBichos = new Juego();

}
void draw() {
  background(0);
  image(pasto, 0, 0, width, height);
  juegoBichos.dibujarJuego();
}

void keyPressed(){
  if (keyPressed) {
    juegoBichos.moverGomeraEnPantalla(keyCode);
  }
}
 
