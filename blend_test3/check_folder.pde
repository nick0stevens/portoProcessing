void checkFolder(){

// we'll have a look in the data folder
java.io.File folder = new java.io.File(dataPath(""));
 
// let's set a filter (which returns true if file's extension is .mp4)
java.io.FilenameFilter playFilter = new java.io.FilenameFilter() {
 public boolean accept(File dir, String name) {
   return name.toLowerCase().endsWith(".mp4");  
  }
};

// list the files in the data folder, passing the filter as parameter
String[] filenames = folder.list(playFilter);
numOfVideos=filenames.length;
video = new Movie[filenames.length];
numOfSequences = filenames.length/2;

println(numOfSequences + " sequences in specified directory");

 for(int i=0; i<filenames.length; i++) {
String [] timeSplit= splitTokens(filenames[i], " ,.-");


video [i] = new Movie(this, filenames[i]);
video[i].play();
video[i].pause();
}
}
