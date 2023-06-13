let figuras;

class Figuras {
  constructor() {
    this.imagenes = [];
    for (let i = 0; i < 21; i++) {
      this.imagenes.push(loadImage(`circulo_${i}.png`)); // Cambia "circulo_" por el prefijo de tus imágenes
    }
    this.numImagenes = 4;
    this.posiciones = [];
    this.imagenesMostradas = [];
    this.spacing = 20;
    this.distance = 300;

    let centerX = width / 2;
    let centerY = height / 2;

    for (let i = 0; i < this.numImagenes; i++) {
      let angle = i * TWO_PI / this.numImagenes;
      let x = centerX + cos(angle) * this.distance;
      let y = centerY + sin(angle) * this.distance;
      this.posiciones.push(createVector(x, y));
      this.imagenesMostradas.push(floor(random(this.imagenes.length)));
    }
  }

  dibujar() {
    for (let i = 0; i < this.numImagenes; i++) {
      let imagenIndex = this.imagenesMostradas[i];
      let imagePos = this.posiciones[i];
      imageMode(CENTER);
      image(this.imagenes[imagenIndex], imagePos.x, imagePos.y);
    }
  }

  updatePosition() {
    let centerX = width / 2;
    let centerY = height / 2;
    let mouseXDiff = mouseX - centerX;
    let mouseYDiff = mouseY - centerY;
    let moveX = mouseXDiff * 0.05;
    let moveY = mouseYDiff * 0.05;

    for (let i = 0; i < this.numImagenes; i++) {
      let imagePos = this.posiciones[i];
      let imageX = imagePos.x;
      let imageY = imagePos.y;

      // Mover las imágenes hacia la derecha o hacia la izquierda
      if (moveX > 0) {
        let distanceToCenter = dist(imageX, imageY, centerX, centerY);
        let angle = atan2(imageY - centerY, imageX - centerX);
        angle += moveX * 0.01;
        imageX = centerX + cos(angle) * distanceToCenter;
        imageY = centerY + sin(angle) * distanceToCenter;
      } else if (moveX < 0) {
        let distanceToCenter = dist(imageX, imageY, centerX, centerY);
        let angle = atan2(imageY - centerY, imageX - centerX);
        angle += moveX * 0.01;
        imageX = centerX + cos(angle) * distanceToCenter;
        imageY = centerY + sin(angle) * distanceToCenter;
      }

      // Mover las imágenes hacia arriba o hacia abajo
      if (moveY > 0) {
        let direction = p5.Vector.sub(imagePos, createVector(centerX, centerY)).normalize();
        imagePos.add(direction.mult(moveY));
      } else if (moveY < 0) {
        let direction = p5.Vector.sub(createVector(centerX, centerY), imagePos).normalize();
        imagePos.add(direction.mult(-moveY));
      }

      this.posiciones[i] = createVector(imageX, imageY);
    }

    this.maintainSpacing();
  }

  maintainSpacing() {
    for (let i = 0; i < this.numImagenes; i++) {
      for (let j = i + 1; j < this.numImagenes; j++) {
        let distance = dist(
          this.posiciones[i].x,
          this.posiciones[i].y,
          this.posiciones[j].x,
          this.posiciones[j].y
        );

        if (distance < this.spacing) {
          let direction = p5.Vector.sub(this.posiciones[i], this.posiciones[j]);
          direction.setMag(this.spacing - distance);

          this.posiciones[i].add(direction);
          this.posiciones[j].sub(direction);
        }
      }
    }
  }
}

function preload() {
  for (let i = 0; i < 21; i++) {
    let imagePath = `assets/circulo_${i}.png`; // Reemplaza "circulo_" por el prefijo de tus imágenes y "assets" por la ruta de tu carpeta
    figuras.imagenes.push(loadImage(imagePath));
  }
}



function setup() {
  createCanvas(800, 800);
  figuras = new Figuras();
}

function draw() {
  background(220);
  figuras.updatePosition();
  figuras.dibujar();
}
