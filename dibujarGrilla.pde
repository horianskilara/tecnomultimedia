void dibujarGrilla(){
 for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      d = dist(mouseX, mouseY, i*ubic+ubic/2, j*ubic+ubic/2);
      tam = map(d, 50, dist(0, 0, width, height), 20, ubic*2); 
      tono = map(d, 10, width, 225, 150); 

      if ((i+j) % 2 == 0 ) {
        fill(216, 9, 126, tono);
      } else {
        fill(55, 70, 142, tono);
      }
      
      noStroke();
      rect(i*ubic+ubic/2, j*ubic+ubic/2, tam, tam);
      ellipse(i*ubic+ubic/2, j*ubic+ubic/2, tam-10, tam-10); 
    }
  }
}
