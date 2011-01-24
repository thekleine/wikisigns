Word[][] words;
int height, width, canvas_width, canvas_height;

void setup(){
  canvas_width = 442;
  canvas_height = 470;
  size( canvas_width, canvas_height );
  strokeWeight( 10 );
  frameRate( 15 );
  height = 4;
  width = 4;
  words = new Word[height][width];

  for(int i=0; i<height; i++) {
    for(int j=0; j<width; j++) {
      words[j][i] = new Word(i, j);
    }
  }
}

void draw(){
  for(int i=0; i < height; i++) {
    for(int j=0; j < width; j++) {
      words[j][i].display();
    }
  }
}

class Word {

  int x;
  int y;
  int size;
  int space;

  Word(int ix, int iy) {
    x = ix * (canvas_width/width);
    y = iy * (canvas_height/height);
    size = 100;
    space = size/2 + 5;
  }

  void display() {
    ellipse(x + space, y + space, size, size);
  }
}
