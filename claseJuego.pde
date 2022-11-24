class Juego {
  Calabaza calabaza;
  Fuego fuego;
  Pantallas p;
  Creditos cred;
  Boton boton;
  Boton boton2;
  int puntos, pantalla, municiones;
  boolean golpefantasma = false;
  PFont fuente;
  Fantasmas [] fantasmas = new Fantasmas[5];

  Juego() {
    calabaza = new Calabaza();
    fuego = new Fuego(width/2, height);
    cred =  new Creditos();
    boton = new Boton(430, 420, 140, 60);
    boton2 = new Boton(20, 420, 140, 60);
    p = new Pantallas();
    pantalla = 0;
    fuente = loadFont("fuente.vlw");
    municiones = 15; 
    textSize(30);
    float r = random(50, height/5);

    for (int i=0; i<fantasmas.length; i++) {
      fantasmas[i] = new Fantasmas(i*r);
    }
  }

  void jugarJuego() {

    p.dibujarPantallas(pantalla);
    if (pantalla == 0) {
      boton.dibujarBoton(0, 1);
      //reiniciarPuntos();
    }

    if (pantalla == 1) {
      boton.dibujarBoton(1, 2);
      reiniciarPuntos();
    }

    if (pantalla == 2) {
      jugar();
    }

    if (pantalla == 3) {
      boton.dibujarBoton(3, 5);
      boton2.dibujarBoton(3, 0);
    }

    if (pantalla == 4) { 
      boton.dibujarBoton(4, 5);
      boton2.dibujarBoton(4, 0);
    }

    if (pantalla == 5) {
      boton2.dibujarBoton(5, 0);
      cred.creditosFinales();
    }
  } 


  void jugar() {   
    calabaza.dibujarCalabaza();

    for (int i=0; i<fantasmas.length; i++) {
      fantasmas[i].dibujarFantasma();
      fantasmas[i].moverFantasma();
    }

    fuego.dibujarFuego();
    fuego.moverFuego(calabaza.cx);
    golpearFantasmas();//revisar
    textFont(fuente);
    textSize (16);
    fill(255);
    text("Puntos: "+ puntos, 80, 30);
    text("Municiones: "+ municiones, 400, 30);
  }

  void moverPersonaje(int tecla) {
    calabaza.moverCalabaza(tecla);

  }


  void golpearFantasmas() {
    golpefantasma = false;
    for (int i=0; i<fantasmas.length; i++) {
      float distancia = dist(fuego.fuex, fuego.fuey, fantasmas[i].fx, fantasmas[i].fy);
      if (distancia<fantasmas[i].ftam/2+fuego.fuetam/2) {
        golpefantasma = true;
        fantasmas[i].golpear();
        fuego.fuegoLanzado = false;
        choque.amp(0.2);
        choque.play();
      }
    }

    if (golpefantasma == true) {
      puntos += 1;
    } else {
      puntos = puntos + 0;
    }

    if (puntos == 12 && municiones >=0) {
      pantalla = 3;
    } else if (puntos <= 15 && municiones == 0) {
      pantalla = 4;
    }
  }



  void detectarBoton() {
    if (boton.tocarBoton(430, 420, 140, 60) && pantalla == boton.actual) {
      pantalla = boton.sig;
    }

    if (boton2.tocarBoton(20, 420, 140, 60) && pantalla == boton2.actual) {
      pantalla = boton2.sig;
    }
  }

  void atacarEnemigo() {
    fuego.dispararFuego();
    municiones--;
  }



  void reiniciarPuntos() {
    municiones = 16;
    puntos = 0;
  
}
}
