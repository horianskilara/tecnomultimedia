void dibujarGrilla() {
  for (int c=0; c<cant; c++) {
    for (int f=0; f<cant; f++) {
      arreglo[c] [f]=0;
    }
  }

  //----puntos
  for (int c=0; c<cant; c++) {
    for (int f=0; f<cant; f++) {
      if (random(100)>90) {

        arreglo[c] [f]=2;
      }
    }
  }

  //---filas y columnas
  for (int c=0; c<cant; c++) {
    for (int f=0; f<cant; f++) {
      if (random(100)>80) {

        arreglo[c] [f]=3;
      }
    }
  }
}
