class Celestes {
  constructor() {
    this.imagenes = [];
    for (let i = 1; i <= 12; i++) {
      this.imagenes.push(loadImage("data/rayas azules/azules" + nf(i, 2) + ".png"));
    }
    this.numImagenes = floor(random(1, 5)); // Seleccionar aleatoriamente entre 1 y 4 imágenes
    this.posiciones = []; // Array para guardar las posiciones de las imágenes
    for (let i = 0; i < this.numImagenes; i++) {
      // Generar posiciones aleatorias dentro del canvas sin superponerse con las posiciones existentes
      let nuevaPosicion = createVector(random(0, width), random(0, height));
      for (let j = 0; j < this.posiciones.length; j++) {
        while (p5.Vector.dist(nuevaPosicion, this.posiciones[j]) < 200) {
          nuevaPosicion = createVector(random(0, width), random(0, height));
          j = 0;
        }
      }
      this.posiciones.push(nuevaPosicion);
    }
  }

  dibujar() {
    for (let i = 0; i < this.numImagenes; i++) {
      // Dibujar las imágenes en las posiciones generadas anteriormente
      image(this.imagenes[i], this.posiciones[i].x, this.posiciones[i].y);
    }
  }
}