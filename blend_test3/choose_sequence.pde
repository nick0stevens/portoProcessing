void chooseSequence(){

//changePeriod=true;
//changeOverStartTime=millis();

activeOld=active;
passiveOld=passive;

println("changer over started");

seq = int(random(numOfSequences));
active = seq*2;
passive= active+1;

if(active==activeOld){
chooseSequence();
if(debug){println("looped");}
}

 video[passive].loop();
 video[active].play();
 video[active].pause();
 
 activePlayingTime=((video[active].duration()-(fadeTime/1000))*1000);
 totalPlayingTime=video[active].duration();
//       
}
