//using processing 2.2.1

import processing.video.*;

Movie movie, movie2;
Movie[] video;

boolean playingActive =false;
boolean fadingActive =false;
boolean blendStart =false;
boolean changingSequence =false;

long blendStartTime;
long playingActiveStartTime;
long fadeTime=3000;
float totalPlayingTime;


int fps=24;
int numOfVideos;
int numOfSequences;
int passive, active;
int passiveOld, activeOld;
int seq;

float tintVar;
float tintChange;
float activePlayingTime;

boolean debug=true;



void setup(){
  size(1280, 720,P3D);
  frameRate(fps);
  background(0);
  checkFolder();
  chooseSequence();
}


void draw(){
background(0);
checkPeriod();
playVideos();
}


void keyPressed() {
playingActive=true;
playingActiveStartTime=millis();
video[active].play();
}


void mousePressed() {
chooseSequence();
changingSequence=true;
}

void movieEvent(Movie m) {
  m.read();
}



