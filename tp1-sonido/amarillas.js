let mic; // Variable para almacenar la entrada de audio del micrófono
let customImages = []; // Array para almacenar las instancias de CustomImage

function setup() {
  createCanvas(800, 800);

  mic = new p5.AudioIn(); // Inicializar la entrada de audio
  mic.start(); // Iniciar la captura de audio del micrófono

  // Crear instancias de CustomImage
  for (let i = 0; i < 5; i++) {
    let x = random(width);
    let y = random(height);
    customImages.push(new CustomImage(x, y));
  }
}

function draw() {
  background(220);

  // Obtener la amplitud del audio del micrófono
  let audioLevel = mic.getLevel();

  // Actualizar la posición de las imágenes basado en la amplitud del audio
  for (let i = 0; i < customImages.length; i++) {
    customImages[i].updatePosition(audioLevel);
    customImages[i].showImage();
  }
}

class CustomImage {
  constructor(x, y) {
    this.imageX = x;
    this.imageY = y;
    this.maxImages = 10;
    this.imageIndex = Math.floor(random(this.maxImages));
    this.images = [];
    for (let i = 0; i < this.maxImages; i++) {
      this.images[i] = loadImage("data/rayas amarillas/amarillas" + nf(i, 2) + ".png");
    }
  }

  showImage() {
    image(this.images[this.imageIndex], this.imageX, this.imageY);
  }

  updatePosition(audioLevel) {
    let moveX = map(audioLevel, 0, 1, -10, 10);
    let moveY = 0;

    this.imageX += moveX;
    this.imageY += moveY;

    this.imageX = constrain(this.imageX, 0, width - this.images[this.imageIndex].width);
    this.imageY = constrain(this.imageY, 0, height - this.images[this.imageIndex].height);
  }
}

