class Juego {
  Gomera g;
  Bichos b;
  Piedra p;
  Bichos [] bichos = new Bichos[4];

Juego() {
    g = new Gomera();
    b = new Bichos();
    p = new Piedra(width/2, height);
    for (int i=0; i<bichos.length; i++) {
      bichos[i] = new Bichos(i*height/3);
    }
  }

  void dibujarJuego() {
    g.dibujarGomera();
    b.dibujarBicho();
    b.moverBichos();
    
    for (int i=0; i<bichos.length; i++) {
      bichos[i].dibujarBicho();
      bichos[i].moverBichos();
    }
    
    atacarBichos();
    p.dibujarPiedra();
    p.moverPiedra(g.gx);
  }
  
  void moverGomeraEnPantalla(int t) {
    g.moverGomera(t);
    if (t==' ') {
      p.arrojarPiedra();
    }
  }
  
  void atacarBichos() {  
   for (int i=0; i<bichos.length; i++) {
      float distancia = dist(p.px, p.py, bichos[i].bx, bichos[i].by);
      if (distancia<bichos[i].btam/2+p.ptam/2) {
        p.pArrojada = false;
        bichos[i].golpear();
      }
    }
  }


  void golpearBichos() {
    p.arrojarPiedra();
  }
}
