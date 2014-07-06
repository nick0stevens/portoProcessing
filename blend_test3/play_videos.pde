void playVideos(){
  
  if(fadingActive){
  blendVideo(video[active], video[passive], fadeTime);
  if(debug){println("fadingActive");}
}
else if(changingSequence){
  blendVideo(video[passive], video[passiveOld], fadeTime);
if(debug){println("changingSequence");}
}
else if(playingActive){
 image( video[active], 438, 0, 405, 800);
 if(debug){println("playingActive");}
}
else{
  tint(255, 255);
  
image( video[passive], 438, 0, 405, 800);
if(debug){println("playingPassive");}
}
}
