let canvasWidth = 800;
let canvasHeight = 800;

//amarillas
//let customImage,customImage2;
//let minDistance = 650;

//lilas
//let lilas = [];

//celeste
let celestes;
let prevMousePos;

function setup() {
  createCanvas(canvasWidth, canvasHeight);

  //amarillas
  //customImage = new CustomImage(random(width), random(0,400));
  //customImage2 = new CustomImage(random(width), random(400,800));

  //lilas
  /*let numLilas;
  if (random() < 0.15) { // 25% de las veces crear 3 elipses
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
  }*/

  //celestes
  celestes = new Celestes();
  

}

function draw() {
  background(255);

  //amarillas
  //customImage.showImage();
  //customImage.updatePosition();
  //customImage2.showImage();
  //customImage2.updatePosition();
  //customImage.checkDistance(customImage2);

  //lilas
 /* for (let l of lilas) {
    l.draw();
    l.actualizarPosicion();
  }*/

//celestes 
celestes.dibujar();
mouseMoved();

}

function mouseMoved() {
  if (prevMousePos) {
    let dx = mouseX - prevMousePos.x;
    let dy = mouseY - prevMousePos.y;
    for (let i = 0; i < celestes.numImagenes; i++) {
      celestes.posiciones[i].x += dx;
      celestes.posiciones[i].y += dy;
    }
  }
  prevMousePos = createVector(mouseX, mouseY);
}