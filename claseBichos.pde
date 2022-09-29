class Bichos {
  float bx, by, btam, velocidad; 
  boolean bichosGolpeados;
  PImage bicho;

   Bichos() {
    bicho = loadImage ("bicho.png");
    btam = random(50, 70); 
    bx =random(-width/2, -btam); 
    by = random(btam/2, height/2);
    velocidad = random(2, 4);
    bichosGolpeados = false;
  }

  Bichos(float by_) { 
    bicho = loadImage ("bicho.png");
    btam = random(50, 70); 
    bx =random(-width/2, -btam); 
    by = by_; // 
    velocidad = random(2, 4);
    bichosGolpeados = false;
  }

  void dibujarBicho() {
    image(bicho, bx, by, btam, btam);
  }
  
  void moverBichos() {
    if (bx>width+btam || bichosGolpeados ) { // si sale de la ventana, la reiniciamos
      bx =random(-width/2, -btam); 
      btam = random(50, 70);
      velocidad = random(2, 4);
      bichosGolpeados = false;
    }
    bx+=velocidad; 
  }
  
  void golpear() {
    bichosGolpeados = true;
  }
}
