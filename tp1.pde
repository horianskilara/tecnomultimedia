int pantalla = 0;
int py = 400;
String texto = "";
PFont FontBold;
PImage logo, fondo, img1, img2, img3, img4, img5, img6;

void setup () {
  size (500, 500);

  fondo = loadImage ("fondo.png");
  logo = loadImage ("logo.png");
  img1 = loadImage ("img1.png");
  img2 = loadImage ("img2.png");
  img3 = loadImage ("img4.png");
  img4 = loadImage ("img8.png");
  img5 = loadImage ("img7.png");
  img6 = loadImage ("img9.png");
  FontBold = createFont("FontBold.otf", 18);
  textAlign(CENTER, TOP);
  textFont(FontBold);
}

void draw() {
  background(0);

  if (py >= 0 && pantalla < 6) {
    py = py-7;
  } else {
    py = height;
  } 

  if (py <= 0) {
    pantalla++;
  } 



  if (pantalla == 0 ) {
    image(fondo, 0, 0, width, height);
    image (logo, 50, py, 400, 100);
  } else if (pantalla == 1) {
    image(img1, 0, 0, width, height);
    text (texto, 160, py);
    fill(255);
    texto = "ORIGINAL CONCEPT \n Hajime Yatate";
    text (texto, 160, py-100);
    texto = "SERIES STORY EDITOR \n Keiko Nobumoto";
    text (texto, 160, py-200);
    texto = "SET DESIGNER \n Isamu Imakake";
  } else if (pantalla == 2) {
    image(img2, 0, 0, width, height);
    text (texto, 360, py);
    fill(255);
    texto = "MUSIC PRODUCER \n Toshiaki Ohta";
    text (texto, 360, py-90);
    texto = "MUSIC DIRECTORS \n Shiro Sasaki \n Yukako Inoue";
    text (texto, 360, py-200);
    texto = "MUSIC PRODUCED BY \n Victor Entertainment";
  } else if (pantalla == 3) {
    image(img3, 0, 0, width, height);
    text (texto, 120, py);
    fill(255);
    texto = "MECHANICAL \n DESIGNER \n Kimitoshi Yamane";
    text (texto, 120, py-100);
    texto = "SOUND DIRECTOR \n Katsuyoshi \n Kobayashi";
  } else if (pantalla == 4) {
    image(img4, 0, 0, width, height);
    fill(255);
    text (texto, 120, py);
    texto = "MAIN CAST \n Spike Spiegel \n Faye Valentine \n Jet Black \n Ed";
    text (texto, 120, py-150);
    texto = "OPENING SONG \n ´Tank!´";
  } else if (pantalla == 5) {
    image(img5, 0, 0, width, height);
    text (texto, 390, py);
    fill(255);
    texto = "A PRODUCTION OF \n Sunrise \n Bandai Visual";
  } else if (pantalla == 6) {
    image(img6, 0, 0, width, height);
    println("ENTER TO RESTART");
    text (texto, 320, 420);
    texto = "THE END";
    fill(200);
    text (texto, 360, 450);
    texto = "See you space cowboy...";
    fill(80);
  }

  println("Pantalla: " + pantalla);
  println ("Ubicacion: " + mouseX, mouseY);
  println("Py: " + py);
} 

void keyPressed() {
  if (keyCode == ENTER && pantalla == 6) {
    pantalla = 0;
  }
}
