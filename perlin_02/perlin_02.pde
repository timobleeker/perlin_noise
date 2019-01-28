float start = 0.0f;
float inc = .05f;

int pixelScale = 1;
float intensity = 20f;
float zOffset = 0f;

void setup () {
  size(500,500);
  noStroke();
}

void draw() {
  float yOffset = start;
  
  for(int y = 0; y < height; y++) {
    float xOffset = start;
    for(int x = 0; x < width; x++) {
      float fillColor = noise(xOffset, yOffset, zOffset) * 255;
      
      fill(fillColor);
      
      rect(x * pixelScale, y * pixelScale, pixelScale, pixelScale);
      xOffset += inc;
    }
    yOffset += inc;
  }
  
  zOffset += inc;
  
};
