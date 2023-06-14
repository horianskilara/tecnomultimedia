let mic; // Variable para almacenar la entrada de audio del micrófono
let celestes; // Instancia de la clase Celestes

function setup() {
  createCanvas(400, 400);

  mic = new p5.AudioIn(); // Inicializar la entrada de audio
  mic.start(); // Iniciar la captura de audio del micrófono

  celestes = new Celestes(); // Crear instancia de Celestes
}

function draw() {
  background(220);

  // Obtener la amplitud del audio del micrófono
  let voiceAmplitude = mic.getLevel();

  // Actualizar la posición de las imágenes basado en la amplitud del audio
  celestes.updatePosition(voiceAmplitude);
  celestes.dibujar();
}

class Celestes {
  constructor() {
    this.imagenes = [];
    for (let i = 1; i <= 12; i++) {
      this.imagenes.push(loadImage("data/rayas azules/azules" + nf(i, 2) + ".png"));
    }
    this.numImagenes = floor(random(1, 5)); // Seleccionar aleatoriamente entre 1 y 4 imágenes
    this.posiciones = []; // Array para guardar las posiciones de las imágenes
    this.imagenesMostradas = []; // Array para almacenar las imágenes mostradas actualmente
    // Generar posiciones y seleccionar imágenes únicas
    while (this.posiciones.length < this.numImagenes) {
      let nuevaPosicion = createVector(random(0, width), random(0, height));
      let imagenIndex = floor(random(this.imagenes.length));

      let esUnica = true;
      for (let i = 0; i < this.posiciones.length; i++) {
        if (p5.Vector.dist(nuevaPosicion, this.posiciones[i]) < 200 || this.imagenesMostradas[i] === imagenIndex) {
          esUnica = false;
          break;
        }
      }

      if (esUnica) {
        this.posiciones.push(nuevaPosicion);
        this.imagenesMostradas.push(imagenIndex);
      }
    }
    this.minDistance = 500; // Distancia mínima entre las imágenes
  }

  dibujar() {
    for (let i = 0; i < this.numImagenes; i++) {
      let imagenIndex = this.imagenesMostradas[i];
      image(this.imagenes[imagenIndex], this.posiciones[i].x, this.posiciones[i].y);
    }
  }

  updatePosition(voiceAmplitude) {
    let moveX = map(voiceAmplitude, 0, 1, -10, 10);
    let moveY = map(voiceAmplitude, 0, 1, -10, 10);

    for (let i = 0; i < this.numImagenes; i++) {
      let imageX = this.posiciones[i].x;
      let imageY = this.posiciones[i].y;

      imageX = min(max(imageX, -this.imagenes[i].width / 2), width - this.imagenes[i].width / 2);
      imageY = min(max(imageY, -this.imagenes[i].height / 2), height - this.imagenes[i].height / 2);

      imageX += moveX;
      imageY += moveY;

      this.posiciones[i] = createVector(imageX, imageY);
    }

    // Actualizar posiciones para mantener la distancia mínima entre las imágenes
    this.maintainDistance();
  }

  maintainDistance() {
    for (let i = 0; i < this.numImagenes; i++) {
      for (let j = i + 1; j < this.numImagenes; j++) {
        let distance = dist(
          this.posiciones[i].x,
          this.posiciones[i].y,
          this.posiciones[j].x,
          this.posiciones[j].y
        );

        if (distance < this.minDistance) {
          let direction = p5.Vector.sub(this.posiciones[i], this.posiciones[j]);
          direction.setMag(this.minDistance - distance);

          this.posiciones[i].add(direction);
          this.posiciones[j].sub(direction);
        }
      }
    }
  }
}
