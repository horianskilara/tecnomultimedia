void creditosFinales(){
  if (estado.equals("creditos")) {
    if (py >= 0) {
      py = py-2;
    } else {
      py = height;
    } 

    text (texto2, 120, py-80);
    texto2 = "Lara Horianski";

    text (texto2, 120, py-120);
    texto2 = "Prof. Matías Jauregui Lorda";

    text (texto2, 120, py-40);
    texto2 = "Comisión 2";
    
    text (texto2, 120, py-160);
    texto2 = "¡Gracias por jugar!";

    text (texto2, 120, py);
    texto2 = "Tecno Multimedia 1";
  }
}
