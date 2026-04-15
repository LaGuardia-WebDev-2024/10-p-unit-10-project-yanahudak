var treeXPos = [];
var treeYPos = [];
var tree = "🌳"; // tree emoji
var treeTotal = 100;

var catXPos = [];
var catYPos = [];
var cat = "🐈"; // cat emoji
var catTotal = 3;
var catFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }


  display();



//for(start; how long ; change) 
  for (var x=0; x<400; x+=20){ 
  }

  for (var i = 55; i < 350 ; i+=20){
    text('🌷🌷🌷', 50, i);
  }


//While
x = 0;
while(x < 400){
  text("🐕", x, 200);
  x += 60;
}


//array
var myMeow = ["meow", "purr", "hiss"];
var myMeowColor = [color(200, 0 , 0), color(0 , 200, 0), color(0, 0, 200)];

fill(myMeowColor[0]);
text(myMeow[0], 10, 100);

fill(myMeowColor[1]);
text(myMeow[1], 10, 150);

fill(myMeowColor[2]);
text(myMeow[2], 10, 200);

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