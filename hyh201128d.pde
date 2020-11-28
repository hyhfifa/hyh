int[][] letters = {{0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1}, //A
                   {1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0}, //B
                   {1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0}}; //C
  
int blockSize = 20;

void setup() {
  size(600, 400);
  
  noStroke();
  background(255);
  fill(0);
}
  


  void draw(){

      translate(blockSize*8, blockSize*8);
    for (int i = 0; i < letters.length; i++) {
    int xPos = 0;
    int yPos = 0;
    for (int j = 0; j < letters[i].length; j++) {
      if (letters[i][j] == 1) {
        //rect(xPos, yPos, blockSize, blockSize);
        float a=random(1,25);
        fill(0,10);
        ellipse(xPos, yPos, a, a);
      }
      xPos += blockSize;
      if (j % 4 == 3) {
        xPos = 0;
        yPos += blockSize;
      }
    }
    translate(blockSize * 6, 0);
  }
  

  
}
