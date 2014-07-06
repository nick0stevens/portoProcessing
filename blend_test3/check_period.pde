void checkPeriod(){

if(playingActive){ 
if(millis()>playingActiveStartTime+activePlayingTime){
playingActive=false;
fadingActive=true;
}
}
if(fadingActive){
if(millis()>playingActiveStartTime+totalPlayingTime){
 video[active].jump(0);
 video[active].pause();
}
}

if((second()%15==0)&&(!changingSequence)){
chooseSequence();
changingSequence=true;
if(debug){println("changingSequence (time based)");}
}
}
