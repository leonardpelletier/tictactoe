int[][] grid;
int currentPlayer = 1;

void setup() {
     size(300, 300);
     grid = new int[3][3];
     strokeWeight(3);
}

void draw() {
     background(200);
     drawDividingLines();
     drawXOs();
}

void drawDividingLines() {
     stroke(0);
     line(0, 100, 300, 100);
     line(0, 200, 300, 200);
     line(100, 0, 100, 300);
     line(200, 0, 200, 300);
}

void drawXOs() {
     for (int row = 0; row < 3; row++) {
          for (int col = 0; col < 3; col++) {
               drawCell(row, col);
          }
     }
}

void drawCell(int row, int col) {
     pushMatrix();
     translate(row * 100, col * 100);
     if (grid[row][col] == 0) {
          drawEmpty();
     } 
     else if (grid[row][col] == 1) {
          drawO();
     }
     else if (grid[row][col] == 2) {
          drawX();
     }
     popMatrix();
}

void drawX() {
     line (10, 10, 90, 90);
     line (90, 10, 10, 90);
}

void drawO() {
     noFill();
     ellipse(50, 50, 90, 90);
}

void drawEmpty() {
}

void mouseClicked() {
     //assign the clicked-on box with the current player's mark
     int row = (int)mouseX/100;
     int col = (int)mouseY/100;
     if (grid[row][col] == 0)
          grid[row][col] = currentPlayer;

     checkForWin();

     //switch to next player
     if (currentPlayer == 1)
          currentPlayer = 2;
     else
          currentPlayer = 1;
}

void checkForWin() {
         
}
