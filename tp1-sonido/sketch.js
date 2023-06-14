let canvasWidth = 800;
let canvasHeight = 800;

// Amarillas
let customImage, customImage2;
let minDistance = 650;

let yellowPhaseTime = 15000; // Tiempo en milisegundos para la fase amarilla (15 segundos)
let yellowPhaseActive = true;

// Lilas
let lilas = [];

let lilacPhaseTime = 15000; // Tiempo en milisegundos para la fase lila (15 segundos)
let lilacPhaseActive = false;

// Celeste
let celestes;
let celestePhaseTime = 15000; // Tiempo en milisegundos para la fase celeste (15 segundos)
let celestePhaseActive = false;

// Tiempo actual en milisegundos
let currentTime = 0;

function setup() {
  createCanvas(canvasWidth, canvasHeight);

  // Amarillas
  customImage = new CustomImage(random(width), random(0, 400));
  customImage2 = new CustomImage(random(width), random(400, 800));

  // Lilas
  let numLilas;
  if (random() < 0.15) { // 15% de las veces crear 3 elipses
    numLilas = 3;
  } else {
    numLilas = 2;
  }
  for (let i = 0; i < numLilas; i++) {
    let l = new Lila();
    while (l.checkOverlap()) {
      l = new Lila();
    }
    lilas.push(l);
  }

  // Celeste
  celestes = new Celestes();
}

function draw() {
  background(255);
  // Actualizar el tiempo actual
  currentTime += deltaTime;

  // Fase amarilla
  if (yellowPhaseActive) {
    customImage.showImage();
    customImage.updatePosition();
    customImage2.showImage();
    customImage2.updatePosition();
    customImage.checkDistance(customImage2);

    // Verificar si ha pasado el tiempo de la fase amarilla
    if (currentTime >= yellowPhaseTime) {
      yellowPhaseActive = false;
      lilacPhaseActive = true;
      currentTime = 0; // Reiniciar el tiempo actual

      // Reiniciar posición de elementos en la transición de fase
      customImage.resetPosition(random(width), random(0, 400));
      customImage2.resetPosition(random(width), random(400, 800));
    }
  }
  // Fase lila
  else if (lilacPhaseActive) {
    for (let l of lilas) {
      l.draw();
      l.actualizarPosicion();
    }

    // Verificar si ha pasado el tiempo de la fase lila
    if (currentTime >= lilacPhaseTime) {
      lilacPhaseActive = false;
      celestePhaseActive = true;
      currentTime = 0; // Reiniciar el tiempo actual

      // Reiniciar posición de elementos en la transición de fase
      for (let l of lilas) {
        l.resetPosition();
      }
    }
  }
  // Fase celeste
  else if (celestePhaseActive) {
    celestes.dibujar();
    celestes.updatePosition();

    // Verificar si ha pasado el tiempo de la fase celeste
    if (currentTime >= celestePhaseTime) {
      celestePhaseActive = false;
      currentTime = 0; // Reiniciar el tiempo actual

      // Reiniciar posición de elementos en la transición de fase
      celestes.resetPosition();
    }
  }
  // Mostrar todas las capas juntas en una posición fija
  else {
    customImage.showImage();
    customImage2.showImage();
    for (let l of lilas) {
      l.draw();
    }
    celestes.dibujar();
  }
}




