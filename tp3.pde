//Video: https://youtu.be/pmP-Gqw3wHE

int cant = 25, py =600;
int ancho, alto;
int colum, fila =0;
int tiempo;
PFont fuente;
String estado, texto = "", texto2="";
PImage reglas, inicio, reinten, creditos;
int [] [] arreglo= new int [cant] [cant];


void setup() {
  size(400, 400);
  ancho=width/cant;
  alto=height/cant;
  tiempo = 0;
  inicio = loadImage ("inicio.png");
  reglas = loadImage ("reglas1.png");
  reinten = loadImage("reintent.png");
  creditos = loadImage ("credits.png");
  fuente = loadFont("fuente.vlw");
  textAlign(CENTER, TOP);
  textFont(fuente);
  estado = "inicio";
  dibujarGrilla();
}


void draw() {
  pantallasDelJuego();
}


void keyPressed() {
  if ( estado.equals("reglas") && key == ' ' ) {
    estado = "jugar";
  }

  if (keyCode==RIGHT) {
    if (arreglo[colum+1][fila]!=3 && colum+1 <cant-1 ) {
      arreglo[colum][fila]=0;
      arreglo[colum+1][fila]=1;
      colum=colum+1;
    }
  } else if (keyCode==DOWN) {
    if (arreglo[colum][fila+1]!=3 && fila+1 <cant-1) {
      arreglo[colum][fila]=0;
      arreglo[colum][fila+1]=1;
      fila=fila+1;
    }
  } else if (keyCode==UP) {
    if (arreglo[colum][fila-1]!=3 && fila-1 >0) {
      arreglo[colum][fila]=0;
      arreglo[colum][fila-1]=1;
      fila=fila-1;
    }
  } else if (keyCode==LEFT) {
    if (arreglo[colum-1][fila]!=3 && colum-1 >0) {
      arreglo[colum][fila]=0;
      arreglo[colum-1][fila]=1;
      colum=colum-1;
    }
  }
}

void mousePressed() {
  if ( estado.equals("inicio") && presionarBoton( mouseX, mouseY,  width/2-45, height/2+70, 90, 40)) {
    estado = "reglas";
  }
  if (presionarBoton(mouseX, mouseY, 250, height-80, 120, 60) && estado.equals("reintentar")) {
    estado = "creditos";
  }

  if (presionarBoton(mouseX, mouseY, 40, height-80, 120, 60) && estado.equals("reintentar")) {
    reinicio() ;
    estado = "jugar";
  }

  if (presionarBoton(mouseX, mouseY, 150, height-60, 90, 40) && estado.equals("creditos")) {
    reinicio() ;
    estado = "inicio";
  }

  if (presionarBoton(mouseX, mouseY, 20, height-60, 90, 40) && estado.equals("creditos")) {
    reinicio() ;
    estado = "jugar";
  }
}


void botonCeleste(int px, int py, int ancho, int alto) {
  if (botonA(mouseX, mouseY, px, py, ancho, alto)) {
    fill(56, 223, 240);
  } else {
    fill(70, 56, 240);
  }
  rect(px, py, ancho, alto, alto/4);
}

boolean presionarBoton(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonA(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}

void reinicio() {
  ancho=width/cant;
  alto=height/cant;
  tiempo = 0;
  colum = 0;
  cant = 25;
  fila =0;
  dibujarGrilla();
}
