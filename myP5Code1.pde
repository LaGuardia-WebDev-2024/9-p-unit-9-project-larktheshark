setup = function() {
    size(600, 400);
   
};

//Background Images
var forkImage = loadImage("https://t3.ftcdn.net/jpg/03/68/23/16/360_F_368231646_kbSRNKJN49KSB5b9DcbcfpJ3o7g4BuXm.jpg");
var forestImage = loadImage("https://www.heraldnet.com/wp-content/uploads/2018/12/14624508_web1_M-streetsmarts-EDH-181231.jpg");
var walkImage = loadImage("https://media.istockphoto.com/id/473954724/photo/a-footpath-through-a-forest-with-sunshine.jpg?s=612x612&w=0&k=20&c=8qwS_lHOZx-IlXf_uwjkye8B5OwLJHyJ_SgSx4ERcrc=");
var foodImage = loadImage("https://tabbersonarchitects.com/wp-content/uploads/2024/10/HucksPrototype_02.04.20_exterior1_HighRes.jpg");
var aisleImage = loadImage("https://www.foodrepublic.com/img/gallery/grocery-stores-rearrange-their-layout-to-play-tricks-on-your-wallet/l-intro-1701118417.jpg");
var momImage = loadImage("https://media01.stockfood.com/largepreviews/MzQ4NTQzOTEy/11243352-The-chiller-aisle-in-a-supermarket.jpg");
var bridgeImage = loadImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiNXtdPfYLaN6O2OwsjYwOjsLVi-uJQMVNr66kwVf6vwAK9w0VspmuRvK0SSQkbJBVDn1F-ye8__LQQAPXwhBZ5xJ3ipACFcPFHekASdbfWfWSl-OOSIJN59WGZEFdKwHByHOGVfSTwxnLP/s1600/Overall.jpg");
var eekImage = loadImage("https://img.freepik.com/premium-photo/abstract-3d-geometric-background-design-caribbean-green-color_851755-38453.jpg?semt=ais_hybrid");
//Variable Declarations)
var sceneImage = forkImage;
var sceneText = "Which way's home from school? [Press l for left and r for right]";
var endingText = "."
draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'l'){
       sceneImage = forestImage;   
       sceneText = "Dead end....  [Press s to restart]";
       endingText = "BORING ENDING";
     } 
     
     if(key == 's'){
      sceneImage = forkImage;
      sceneText = "Which way's home from school? [Press l for left and r for right]";
      endingText = "."
    } 
    
    
    if(key == 'r'){ 
    sceneImage= walkImage;
    sceneText = "All this walking's making you hungry... [Press f for food and \n g to keep going]";
    }
    
    if(key == 'f'){
    sceneImage = foodImage;
    sceneText = "Oh my gosh! After hours of walking, finally... [Press w to go inside]";
    }
    
   if(key == 'w'){
   sceneImage = aisleImage;
   sceneText = "This grocery store's a little creepy.... [Press g to go back and \n a to keep going!]";
   }
   if(key == 'a'){
   sceneImage = momImage;
   sceneText = "You found your mom and got a ride home! \n [Press S to restart]";
  endingText = "GOOD ENDING";}
  
  if(key == 'g'){
  sceneImage = bridgeImage;
  sceneText = "You found a bridge... but what's that sound... [Press e to continue]";
  }
  if(key == 'e'){
  sceneImage = bridgeImage;
  sceneText = "Uh oh... This bridge troll won't let you pass! [Press t to continue]";
  drawTroll(275, 300);
  }
  if(key == 't'){
  sceneImage = bridgeImage;
  sceneText = "He says to roll a dice... if you roll even, you can pass.. [Press D to roll]";
  drawTroll(275, 300);
  }
  if(key == 'd'){
  sceneImage = bridgeImage;
  sceneText = "You got... " + theNumber;
  drawTroll(275, 300);
  theNumber = round(random(1,10));
  }
  if (theNumber == 1 || theNumber == 3 || theNumber == 5 || theNumber == 7 || theNumber == 9) {
  sceneImage = bridgeImage;
  endingText = "EATEN BY TROLL ENDING";
  }
  if (theNumber == 2 || theNumber == 4 || theNumber == 6 || theNumber == 8 || theNumber == 10) {
   sceneImage = bridgeImage;
   endingText = "GOOD ENDING!!!";
   }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(17);
   
  
   text(sceneText, 10, 375);
   text(endingText, 220, 170);
   
   };
   
   
//🟡drawTroll Function - will run when called
var drawTroll = function(trollX, trollY, trollColor){
textSize(250);
fill(trollColor);
text("🧌", trollX, trollY);
};

//draw Function - will run when mouseClicked
mouseClicked = function(){
  theNumber = round(random(1,10))};




