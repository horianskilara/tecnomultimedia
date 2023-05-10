var Px;     
var Py;     
var vel;   
var rotation;
let img, img2;


function setup() {
  createCanvas(800, 800);
  
  Px = width/2;    //centrar
  Py = height/2;    //centrar
  vel = 5;

  
  rotation = 0;
  img = loadImage('assets/figuraNaranja6.png'); 
  img2 = loadImage('assets/figuraGris4.png'); 

}

function draw() {
  background(255);

  rotation += 0;
  push();
  translate(Px, Py);
  rotate(rotation);
  
  var tam = map(mouseX, 0, width, 150, 250)
  var mov = map(mouseY, 0, height, 50, -50);
  
  fill('#FF4300');
  noStroke();

  image(img, -tam, mov, tam, tam);
  image(img2, tam, mov, -tam, -tam);

  pop();
  
}




