//Global Variables 
int reset, smallerGeometryDimension; 
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float rectFaceX2, rectFaceY2, rectFaceWidth2, rectFaceHeight2;
float rectFaceX3, rectFaceY3, rectFaceWidth3, rectFaceHeight3;
float rectFaceX4, rectFaceY4, rectFaceWidth4, rectFaceHeight4;
float rectFaceX5, rectFaceY5, rectFaceWidth5, rectFaceHeight5;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3; 
PImage pic; 
float picWidth, picHeight; 
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
Boolean widthLarger=false, heightLarger=false;
String title = "Merry  Christmas!   It's Totally Christmas :D"; 
PFont titleFont; 
float titleX, titleY, titleWidth, titleHeight; 
color resetDefaultInk=#FFFFFF, purple=#111111; //2C08FF 
//
//
// 
void setup() {
//Variable Population 
//
fullScreen(); 
int appWidth = width, appHeight = height; 
// 
smallerGeometryDimension = appHeight; 
rectFaceX = appWidth*1/2 - smallerGeometryDimension*1/2; 
rectFaceY = appHeight*0; 
rectFaceWidth = smallerGeometryDimension; 
rectFaceHeight = smallerGeometryDimension; 
faceX = appWidth*1/2;
faceY = appHeight*1/2;  
faceDiameter = smallerGeometryDimension; 
imageX = appWidth*1/2 - smallerGeometryDimension*1/2; 
imageY = appHeight*0; 
imageWidth = smallerGeometryDimension;
imageHeight = smallerGeometryDimension;
// 
rectFaceX2 = appWidth*1/2 - smallerGeometryDimension*1/4; 
rectFaceY2 = appHeight*1/15; 
rectFaceWidth2 = appWidth*1/3.6;  
rectFaceHeight2 =appHeight*1/2 + appHeight*0.365; 
// 
rectFaceX3 = appWidth*1/2 - smallerGeometryDimension*1/2.123; 
rectFaceY3 = appHeight*1/2.5; 
rectFaceWidth3 = appWidth*1/2.0*1.06;  
rectFaceHeight3 =appHeight*1/4; 
// 
rectFaceX4 = appWidth*1/2 - smallerGeometryDimension*1/2.87; 
rectFaceY4 = appHeight*1/6.8; 
rectFaceWidth4 = appWidth*1/2 - 160;  
rectFaceHeight4 =appHeight*1/4; 
//
rectFaceX5 = appWidth*1/2 - smallerGeometryDimension*1/2.87; 
rectFaceY5 = appHeight*1/2 + 130; 
rectFaceWidth5 = appWidth*1/2 - 160;  
rectFaceHeight5 =appHeight*1/4.9; 
//
noFill(); 
ellipse(faceX, faceY, faceDiameter, faceDiameter); 
noFill(); 
stroke(0);
fill(188, 189, 245);  
ellipse(faceX, faceY, faceDiameter, faceDiameter);   // this is for the circle 
//
// 
//Population
//pic = loadImage("0-50_free-tree-clipart.png"); //Dimensions: 800, 600
//
picWidth = 870.0 ; //decimals need to be declaired   //870.0 
picHeight = 1253.0; //1253.0
size(100, 100); 
pic = loadImage("0-50_free-tree-clipart.png"); 
imageMode(CENTER); 
image(pic, 770, 450, 600, 600);
// 
//Formulas 

 
if ( picWidth >= picHeight ) { //True, if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False, if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparision
println (smallerDimension, largerDimension);
//
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
println (imageWidthRatio, imageHeightRatio);
//
println(imageWidthRatio, imageHeightRatio);
// 
if ( imageWidth > width ) println( "ERROR: Image is too wide" ); //Simple Display Checker
if( imageHeight > height ) println( "ERROR: Image is too high" ); //Simple Display Checker
//
//rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight); //THIS ONE GETS RID OF WHITE RECTANGLE 
//rect(imageX, imageY, imageWidth, imageHeight);
// 
//rect(rectFaceX2, rectFaceY2, rectFaceWidth2, rectFaceHeight2); 
//rect(rectFaceX3, rectFaceY3, rectFaceWidth3, rectFaceHeight3); 
//rect(rectFaceX4, rectFaceY4, rectFaceWidth4, rectFaceHeight4);
//rect( rectFaceX5, rectFaceY5, rectFaceWidth5, rectFaceHeight5);
// This is for the "Hi" 
stroke(0);
fill(188, 189, 245);  
rect(50, 50, 20, 100);      //3rd number changes width, 4th number changes height

stroke(0);
fill(188, 189, 245);  
rect(70, 90, 50, 20);      //3rd number changes width, 4th number changes height, 2nd number changes up and down, 1st number changes left and right  

stroke(0);
fill(188, 189, 245);  
rect(100, 50, 20, 100);   

stroke(0);
fill(188, 189, 245);  
rect(150, 50, 20, 100);   
// 

//Display Geometry 
//Display orientation: landscape, portrait and square 
//Population 
titleX = displayWidth*1/33; 
titleY = displayHeight*1/3; 
titleWidth = displayWidth*1/12; 
titleHeight = displayHeight*5/18; 
// 
//Fonts from the Operating System (OS)
//String[] fontlist = PFont.list(); //To list all fonts available on the OS
//printArray (fontlist); //For listing all possible fonts to choose, then createFont 
// 
titleFont = createFont("Lobster", 50); //Verify font exists
//Tools / Create Font / 
// 
//Laying out text space and typographical feature
rect(titleX, titleY, titleWidth, titleHeight); 

//
//
//image(pic, imageX, imageY, imageWidth, imageHeight);

// 
} 
void draw() {
//Drawing Text 
fill(purple); //Ink, hexadecimal copied from Colour Selector
textAlign(CENTER, CENTER); //Align Horizontal, vertical, see Processing.org / Reference 
//Values: [ LEFT | CENTER | RIGHT ] & [ ROP | CETER | BOTTOM | BASELINE ]
textFont(titleFont, 26); //Change the number until it fits, largest text 
text(title, titleX, titleY, titleWidth, titleHeight); 
fill(resetDefaultInk); 
//
// 

// 
//Measle
float measleDiameter = random( smallerGeometryDimension*1/300, smallerGeometryDimension*1/200); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
float measleRadius = measleDiameter*1/2;
//float measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ) );    // OG RECTANGLE 
//float measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius ) );  // OG RECTANGLE 
//
//PART WORKS 
float measleX2 = random (rectFaceX2 + measleRadius, (( rectFaceX2+rectFaceWidth2) - measleRadius)); 
float measleY2 = random (rectFaceY2 + measleRadius, (( rectFaceY2+rectFaceHeight2) - measleRadius)); 
//
//PART WORKS 3 
float measleX3 = random (rectFaceX3 + measleRadius, (( rectFaceX3+rectFaceWidth3) - measleRadius)); 
float measleY3 = random (rectFaceY3 + measleRadius, (( rectFaceY3+rectFaceHeight3) - measleRadius)); 
// 
// PART WORKS 4 
float measleX4 = random (rectFaceX4 + measleRadius, (( rectFaceX4+rectFaceWidth4) - measleRadius)); 
float measleY4 = random (rectFaceY4 + measleRadius, (( rectFaceY4+rectFaceHeight4) - measleRadius));  
// 
//  PART WORKS 5 
float measleX5 = random (rectFaceX5 + measleRadius, (( rectFaceX5+rectFaceWidth5) - measleRadius)); 
float measleY5 = random (rectFaceY5 + measleRadius, (( rectFaceY5+rectFaceHeight5) - measleRadius));  
//
//
Boolean nightMode=false; //Note: IF-ELSE similar to ternary operator                                       faceX, faceY, faceDiameter, faceDiameter
//color red=#FF0000, measleColour=red, whiteReset=#000000; //Note: need range here too
color measleColour = #FFFFFF; //ternary operator for day:night
color whiteReset=#000000;
//
//float measleRectX = measleX-measleDiameter*1/2;
//float measleRectY = measleY-measleDiameter*1/2;
//float measleWidth = measleDiameter;
//float measleHeight = measleDiameter;
//
//  PART WORKS 
float measleRectX2 = measleX2 - measleDiameter*1/2; 
float measleRectY2 = measleY2 - measleDiameter*1/2; 
float measleWidth2 = measleDiameter; 
float measleHeight2 = measleDiameter;
//
//PART WORKS 3 
float measleRectX3 = measleX2 - measleDiameter*1/2; 
float measleRectY3 = measleY2 - measleDiameter*1/2; 
float measleWidth3 = measleDiameter; 
float measleHeight3 = measleDiameter;
//
//PART WORKS 4 
float measleRectX4 = measleX2 - measleDiameter*1/2; 
float measleRectY4 = measleY2 - measleDiameter*1/2; 
float measleWidth4 = measleDiameter; 
float measleHeight4 = measleDiameter;
//
// PART WORKS PART 5 
float measleRectX5 = measleX2 - measleDiameter*1/2; 
float measleRectY5 = measleY2 - measleDiameter*1/2; 
float measleWidth5 = measleDiameter; 
float measleHeight5 = measleDiameter;
// 
//

//rect( measleRectX, measleRectY, measleWidth, measleHeight );
//random values given other variables (similar to button code)
//noStroke(); //Shape outline
//fill(measleColour);
//ellipse( measleX, measleY, measleDiameter, measleDiameter );
//stroke(reset); //reset to 1 pixel
//fill(whiteReset); //reset to first colour (i.e. blackReset)
// 
// PART WORKS 
noStroke(); 
fill(measleColour); 
ellipse(measleX2, measleY2, measleDiameter, measleDiameter); 
fill(whiteReset);
// 
//  PART WORKS 3 
noStroke(); 
fill(measleColour); 
ellipse(measleX3, measleY3, measleDiameter, measleDiameter); 
// 
// PART WORKS 4 
noStroke(); 
fill(measleColour); 
ellipse(measleX4, measleY4, measleDiameter, measleDiameter); 
//
// PART WORKS 5 
noStroke(); 
fill(measleColour); 
ellipse(measleX5, measleY5, measleDiameter, measleDiameter); 
// 
//
}
//
void mousePressed() {}
//
void keyPressed() {}
//float measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ) );
//float measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius ) );
