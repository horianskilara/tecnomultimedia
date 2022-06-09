//video: https://youtu.be/xan8xwizCZo

int cant, ubic;
float tam, d, tono; 
color relleno;

void setup() {
  size(600, 600);
  cant = 60;
  ubic = width/cant; 
  relleno = color(106, 10, 142);
  rectMode(CENTER);
}

void draw() {
  background(relleno);
  dibujarGrilla();
}

void mousePressed() {
  if (mousePressed == true) {
    tam = cant/2;
    d = mouseX;
    ubic = 20;
  }
}

void mouseDragged() {
  if (mousePressed == true) {
    tam = mouseY;
    d = mouseX;
    ubic = 50;
  }
}

void keyPressed () {
  if (keyCode == ' ') {
    ubic = width/cant;
  }
}
