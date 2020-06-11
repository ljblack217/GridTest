int columnNrows = 9;
int dropX;
int dropY;

void setup() {
  size(600, 600);
  rectMode(RADIUS);
}

void draw() {
  background(0);
  fill(255);
  for (int x = 0; x<columnNrows; x++) {
    for (int y = 0; y<columnNrows; y++) {
      
      rect((width/columnNrows)/2+(width/columnNrows)*x,
      (height/columnNrows)/2+(height/columnNrows)*y,
      fSize(mouseX,mouseY,x,y),fSize(mouseX,mouseY,x,y));
      
    }
  } 
}

float fSize( float mX, float mY, float x, float y){
  float size;
  float distnc;
  distnc = dist(mX, mY, (width/columnNrows)/2.0+(width/columnNrows)*x,(height/columnNrows)/2.0+(height/columnNrows)*y);
  
  size = (width/columnNrows)/10.0+(width/distnc);
  if(size >= width/columnNrows/2){
   size = (width/columnNrows)/2; 
  }
  println(size);
  
  return size;
};
