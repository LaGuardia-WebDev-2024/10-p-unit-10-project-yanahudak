var treeXPos = [];
var treeYPos = [];
var tree = "🌳"; // tree emoji
var treeTotal = 100;

var catXPos = [];
var catYPos = [];
var cat = "🐈"; // cat emoji
var catTotal = 4;
var catFound = 0;

var move = 1
  var drawFish = function() {
    for (var i = 0; i < yPositions.length; i++) {
      text("🐟", xPositions[i], yPositions[i]);
      xPositions[i]+= move;

      if(xPositions[i] > 600){
        move = -1
      }
      if(xPositions[i] < -200){
        move = 1
      }
    }
  }

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

  
  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < catXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, catXPos[i], catYPos[i])<15){
      catXPos.splice(i, 1);
      catYPos.splice(i, 1);
      catFound++;
    }
  }
}

var display = function(){
  background(133, 187, 101);

  fill(133, 187, 101);
  textSize(20);

  for(var i = 0; i < catXPos.length; i ++){
    text(cat, catXPos[i], catYPos[i]);
  }

  for(var i = 0; i < treeXPos.length; i ++){
    text(tree, treeXPos[i], treeYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + cat + "s   |   " + cat + " " + catFound + "/" + catTotal, 0, 425);

  if(catFound == catTotal){
    fill(255, 105, 180);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  treeXPos = [];
  treeYPos = [];
  catXPos = [];
  catYPos = [];
  catFound = 0;


  for(var i = 0; i < treeTotal; i++){
    treeXPos.push(random(0,600));
    treeYPos.push(random(0,400));
  }

  for(var i = 0; i < catTotal; i++){
    catXPos.push(random(0,600));
    catYPos.push(random(0,400));
  }
}