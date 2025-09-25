void setup() {
  size(500, 300);
  background(200);
  strokeWeight(4);
  strokeCap(SQUARE);
  noLoop();
}

void draw() {
  background(180);
  int padding = 10;
  for (int h = padding; h <= (height - padding*2); h+=padding) {
    ColorPalette randomC = new ColorPalette();
    fill(randomC.getBaseColor());
    stroke(randomC.getComplement()); //black line // I could'nt put the alpha( -h) back to have the lines fade
    line(padding, h, width - padding*2, h);
    stroke(255, 247, h); //white line // into yellow to stand out
    line(padding, h+4, width - padding*2, h+4);
    saveFrame("Captur.jpg");  
  }
}
