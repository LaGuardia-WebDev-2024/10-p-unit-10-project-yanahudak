setup = function(){
  size(600, 400);
  background(255,255,255);
}

draw = function(){
  background(0,0,0);

  if(mousePressed){
    xPositions.push(mouseX);
    yPositions.push(mouseY);
  }

  drawFish();
}