float start = 0.0f;
float inc = .05f;
float zStart = start;

int w = 40;
int h = 40;
int d = 40;
int gap = 2;

int scale = 10;

int shapeWidth = (scale + gap) * w;
int shapeHeight = (scale + gap) * h;

void setup () {
  size(500,500, P3D);
  background(0);
  stroke(0);
}

void draw () {
  translate((width - shapeWidth)/2, (height - shapeHeight)/2, 0);
  background(0);
  
  float zOffset = zStart;
  for(int z = 0; z < d; z++) {
    float yOffset = start;
    for(int y = 0; y < h; y++) {
      float xOffset = start;
      for(int x = 0; x < w; x++) {
        float n = noise(xOffset, yOffset, zOffset);
        float c = map(z, 0, d, 255, 0);

        if(n > .5) {
          pushMatrix();
          fill(c);
          translate(scale * x + gap*x, scale * y + gap*y, -scale * z + gap*z); 
          box(scale);
          popMatrix();
        }
        xOffset += inc;
        
      }
      yOffset += inc;
    }
    zOffset += inc;
  } 
  
   zStart += inc;
}
