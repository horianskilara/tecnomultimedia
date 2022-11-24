import processing.sound.*;

SoundFile choque, musiquita;
Juego juegoCalabazavsFantasmas;

void setup() {
  size(600, 500);
  juegoCalabazavsFantasmas = new Juego();
  choque = new SoundFile(this, "quemar.mp3");
  musiquita = new SoundFile(this, "musiquita.mp3");
  musiquita.amp(0.5); 
  musiquita.loop(); 
}
void draw() {
   juegoCalabazavsFantasmas.jugarJuego();

  if (keyPressed) {
    juegoCalabazavsFantasmas.moverPersonaje(keyCode);
  }
}
void mousePressed() {
  juegoCalabazavsFantasmas.detectarBoton();
  juegoCalabazavsFantasmas.atacarEnemigo();
}
