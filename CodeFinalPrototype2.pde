//STEPS TO COMPLETE 
//1) instructions asking user inputs data
//2) Capture image 
//3) Save image as reference to draw from with drawing tool 
//4) draw image 
//5) save image 

//General Variables 
StepFour four;

//variables for STEP 1 

//variables for STEP 2 

//variables for STEP 3 

//variables for STEP 4 
PImage img;
int pointillize = 160;

//variables for STEP 5


void setup() {
  size(1200, 700);
  frameRate(frame);
  background(255);
  four = new StepFour(300);
  four.prime();
}

void draw() {
  four.update();
} 

class StepOne {
  //set framerate to normal
}

class StepTwo {
  //set framerate to normal
}

class StepThree {
  //set framerate to normal
}

class StepFour {
  //set framerate to be faster 

  int frame;

  StepFour (_frame) {
    frame = _frame
  }

  void prime () {
    frameRate (frame);
    img = loadImage("test.jpg");
  }

  void update() {
    // Pick a random point
    int x = int(random(img.width));
    int y = int(random(img.height));
    int loc = x + y * img.width;

    // Look up the RGB color in the source image
    loadPixels();
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);

    // Back to shapes! Instead of setting a pixel, we use the color from a pixel to draw a circle.
    noStroke();
    fill(r, g, b, 100);
    ellipse (x, y, pointillize, pointillize);
  }
}

class StepFive {
}

