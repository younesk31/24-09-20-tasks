int board[][] = new int[8][8];
int sideLength = 50;


void setup() {
  size(401, 401);
  for (int x = 0; x < board.length; x++) {
    for (int y = 0; y < board.length; y++) {
      if (x % 2 == 0) {
        board[x][y] = 0;
      } else {
        board[x][y] = 1;
      }
      if (y % 2 == 0) {
        board[x][y] = 1;
      } else {
        board[x][y] = 0;
      }
      println("x:" +x+"\t"+"y:"+y+"\t"+"Value ot check:"+board[x][y]);
    }
  }
}

void draw() {

  for (int x = 0; x < board.length; x++) {
    for (int y = 0; y < board.length; y++) {
      if ((x + y) % 2 == 0) { // fill(255); if the value is 0
        fill(255);
      }
        else {                // fills with black if the board[x][y] == 1.
          fill(0);
        }
      rect(x*sideLength, y*sideLength, sideLength, sideLength);
    }
  }
}
