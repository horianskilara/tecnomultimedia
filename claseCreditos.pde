class Creditos {
  int py;
  String estado, texto = "";
  Pantallas p;
  
  Creditos(){
    textAlign(CENTER, TOP);
}


void creditosFinales(){
    if (py >= 0) {
      py = py-2;
    } else {
      py = height;
    } 


    text (texto,width/2, py-80);
    texto = "Lara Horianski";

    text (texto, width/2, py-120);
    texto = "Prof. Matías Jauregui Lorda";

    text (texto, width/2, py-40);
    texto = "Comision 2";
    
    text (texto, width/2, py-160);
    texto = "¡Gracias por jugar!";

    text (texto, width/2, py);
    texto = "Tecno Multimedia 1";
  }
}
