void setup() {
  size (500, 500);
  colorMode(RGB);
}

void draw() {
  noStroke();
  fill(87, 6, 21);
  rect(0, 0, 500, 50);

  fill(95, 5, 23);
  rect(0, 50, 500, 50);

  fill(111, 8, 29);
  rect(0, 100, 500, 50);

  fill(123, 6, 28);
  rect(0, 150, 500, 50);

  fill(136, 6, 30);
  rect(0, 200, 500, 50);

  fill(158, 9, 38);
  rect(0, 250, 500, 50);

  fill(178, 9, 42);
  rect(0, 300, 500, 50);

  fill(192, 11, 44);
  rect(0, 350, 500, 50);

  fill(214, 12, 50);
  rect(0, 400, 500, 50);

  fill(240, 13, 58);
  rect(0, 450, 500, 50);

  fill(255);
  ellipse (200, 320, 40, 70);
  ellipse (300, 320, 40, 70);

  triangle(165, 330, 190, 350, 200, 320);
  triangle(307, 353, 334, 330, 290, 320);

  fill(9, 133, 200);
  rect (210, 300, 80, 80); 

  fill(255);
  triangle(245, 320, 240, 300, 220, 320);
  triangle(250, 333, 245, 310, 230, 335);

  triangle(280, 320, 265, 305, 220, 320);
  triangle(275, 335, 250, 305, 225, 335);

  fill(210, 174, 118);
  triangle(230, 300, 270, 300, 250, 335);


  /*----OREJAS----*/
  fill(253);
  triangle(124, 200, 130, 70, 200, 120 ); //IZQUIERDA
  ellipse(130, 130, 20, 120); //IZQUIERDA

  triangle(300, 120, 370, 70, 376, 200 ); //DERECHA
  ellipse(370, 130, 20, 120); //DERECHA

  triangle(150, 180, 100, 170, 150, 150); //IZQUIERDA
  triangle(150, 190, 110, 180, 150, 160); //IZQUIERDA

  triangle(350, 180, 400, 170, 350, 150); //DERECHA
  triangle(350, 190, 390, 180, 350, 160); //DERECHA

  fill(210, 174, 118);
  triangle(140, 200, 140, 100, 260, 200 ); //IZQUIERDA
  ellipse(140, 150, 10, 100); //IZQUIERDA

  triangle(230, 200, 360, 100, 360, 200 ); //DERECHA
  ellipse(360, 150, 10, 100); //IZQUIERDA


  /*----CABEZA----*/
  fill(254, 204, 80);
  triangle(110, 260, 130, 170, 200, 250 ); //IZQUIERDA
  triangle(300, 250, 370, 170, 390, 260 ); //DERECHA

  ellipse(250, 260, 280, 100); //base
  ellipse(250, 200, 250, 200); //principal


  /*----CARA----*/
  fill(255);
  ellipse(250, 250, 210, 110);
  triangle(130, 250, 160, 250, 155, 225);
  triangle(135, 270, 160, 270, 145, 250);
  triangle(150, 285, 205, 300, 152, 270);

  triangle(335, 250, 370, 250, 345, 225);
  triangle(340, 270, 370, 270, 355, 250);
  triangle(350, 285, 295, 300, 347, 270);

  fill(210, 174, 118);
  ellipse(250, 255, 160, 100);

  fill(255);
  circle(250, 260, 90);
  ellipse(250, 230, 70, 90);

  fill(0);
  triangle(240, 210, 260, 210, 250, 220);
  ellipse(250, 210, 20, 5);
  ellipse(190, 200, 70, 50); //parte negra izq
  triangle(155, 200, 210, 180, 155, 160); //triangulo negro I
  triangle(170, 200, 220, 190, 190, 150); //triangulo negro I

  triangle(160, 200, 160, 180, 130, 190); //triangulo negro 2
  triangle(135, 210, 180, 210, 170, 180); //triangulo negro 3
  triangle(140, 230, 180, 220, 170, 180); //triangulo negro 4

  ellipse(310, 200, 70, 50); //parte negra derecha
  triangle(345, 200, 345, 160, 290, 180); //triangulo negro D
  triangle(280, 190, 330, 200, 310, 150); //triangulo negro D

  triangle(340, 200, 340, 180, 370, 190); //triangulo negro 2
  triangle(315, 210, 365, 210, 330, 180); //triangulo negro 3
  triangle(365, 230, 320, 220, 330, 180); //triangulo negro 4


  /*----OJOS----*/
  fill(255);
  circle (220, 160, 20);
  triangle(210, 160, 228, 155, 210, 140);

  circle (280, 160, 20);
  triangle(270, 156, 290, 160, 290, 140);

  circle (190, 200, 30); //OJO I
  circle (310, 200, 30); //OJO D

  triangle (190, 214, 220, 200, 190, 186); //izquierda
  triangle (310, 215, 280, 200, 310, 185); //derecha
  

  /*----BOCA----*/
  fill(206, 26, 41);
  triangle(220, 300, 280, 300, 230, 230);
  triangle(230, 230, 270, 230, 275, 300);
  triangle(220, 300, 280, 300, 270, 230);

  fill(255);
  triangle(230, 230, 240, 230, 235, 245);
  triangle(240, 230, 250, 230, 245, 245);
  triangle(250, 230, 260, 230, 255, 245);
  triangle(260, 230, 270, 230, 265, 245);

  triangle(220, 300, 230, 300, 225, 285);
  triangle(230, 300, 240, 300, 235, 285);
  triangle(240, 300, 250, 300, 245, 285);
  triangle(250, 300, 260, 300, 255, 285);
  triangle(260, 300, 270, 300, 265, 285);
  triangle(270, 300, 280, 300, 275, 285);

  fill(0);
  triangle(155, 285, 165, 285, 160, 265);
  triangle(185, 285, 195, 285, 190, 265);
  triangle(305, 285, 315, 285, 310, 265);
  triangle(335, 285, 345, 285, 340, 265);

  fill(189, 157, 106);
  circle(175, 310, 45);
  circle(325, 310, 45);

  ellipse(160, 295, 17, 34);
  ellipse(190, 295, 17, 34);

  ellipse(310, 295, 17, 34);
  ellipse(340, 295, 17, 34);
  fill(0);

  stroke(0);
  strokeWeight(4);
  line(230, 230, 270, 230);
  line(220, 300, 280, 300);
}
