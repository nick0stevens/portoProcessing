void blendVideo(Movie bottom, Movie top, long blendTime ){
  tintChange=255.00/((blendTime/1000)*fps);
  if(!blendStart){
  blendStartTime = millis();
  blendStart=true;
  tintVar=255;
  }
tint(255, 255);
image( bottom, 438, 0, 405, 800);
tint(255, tintVar);
tintVar=tintVar-tintChange;
if(tintVar<30){
tintVar=0;
}

image( top, 438, 0, 405, 800);
if(millis()>blendStartTime + blendTime){
blendStart= false;
fadingActive= false;
changingSequence=false;
}



}
