float start = 0.0f;
float inc = 0.005f;

void setup () {
  size(500,500);
}

void draw() {
  background(255);

  float xoffset = start;
  
  beginShape();
  for(int x = 0; x < width; x++) {
    float y = noise(xoffset) * height;
    
    vertex(x, y);
    xoffset += inc;  
  }
  
  endShape();
  
  start += inc;
  
};
