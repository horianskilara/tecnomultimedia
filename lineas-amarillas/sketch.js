let customImage,customImage2;

let canvasWidth = 800;
let canvasHeight = 800;

let minDistance = 700;


function setup() {
  createCanvas(canvasWidth, canvasHeight);
  customImage = new CustomImage(random(width), random(0,400));
  customImage2 = new CustomImage(random(width), random(400,800));
}

function draw() {
  background(200);
  customImage.showImage();
  customImage.updatePosition();
  customImage2.showImage();
  customImage2.updatePosition();
  customImage.checkDistance(customImage2);

}