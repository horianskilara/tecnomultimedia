void pantallasDelJuego() {
  if ( estado.equals("inicio") ) {
    background( 200, 0, 0 );
    image(inicio, 0, 0, width, height);
    botonCeleste(width/2-45, height/2+70, 90, 40); //juga
    pushStyle();
    textSize(20);
    fill(0);
    text (texto, width/2, height/2+80);
    texto = "click here";
    popStyle();
    
  } else if ( estado.equals("reglas") ) {
    background(0 );
    image(reglas, 0, 0, width, height);
 
  } else if ( estado.equals("jugar") ) {
    background(0);
    tiempo++;
    for (int c=0; c<cant; c++) {
      for (int f=0; f<cant; f++) {
        if (arreglo[c][f]==1) {
          fill(255, 198, 0); //amarillo
        } else if (arreglo[c][f]==2) {
          fill(233, 0, 255); //rosa
        } else if (arreglo[c][f]==3) {
          fill(88, 0, 255);
        } else if (arreglo[c][f]==4) {
          fill(88, 0, 255);
        } else {
          fill(0);
        }

        noStroke();
        rect(c *ancho, f*alto, ancho, alto);
      }
      println( tiempo/60 );
      if ( tiempo >= 3400 ) {
        estado = "reintentar";
      }
    }

    //-----bordes----
    for (int i=0; i<cant; i++) {
      fill(88, 0, 255);
      rect(i*ancho, 0, ancho, alto);
      rect(width-ancho, i*alto, ancho, alto);
      rect(0, i*alto, ancho, alto);
      rect(i*ancho, height-alto, ancho, alto);
    }
    
  } else if ( estado.equals("reintentar") ) {
    image(reinten, 0, 0, width, height);
    botonCeleste(40, height-80, 120, 60); //jug
    botonCeleste(250, height-80, 120, 60); //cred
    fill(255);
    textSize(30);
    text (texto, 100, height-65);
    texto = "Créditos";
    text (texto, 310, height-65);
    texto = "Reintentar";
    
  } else if (estado.equals("creditos")) {
    image(creditos, 0, 0, width, height);
    botonCeleste(20, height-60, 90, 40); //juga
    botonCeleste(150, height-60, 90, 40); //inicio
    fill(255);
    textSize(25);
    text (texto, 65, height-50);
    texto = "Inicio";
    text (texto, 195, height-50);
    texto = "Jugar";
    pushStyle();
    creditosFinales();
    popStyle();
  }
}
