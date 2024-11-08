class Dude {
  private float x;
  private float y;
  private float vX;
  private float vY;
  private float diameter;
  private float distance;
  private float vectorX;
  private float vectorY;

  public Dude(float x, float y, float vX, float vY, float distance) {
    this.x = x;
    this.y =y;
    this.vX = vX;
    this.vY =vY;
    this.diameter = distance;
  }

  public void run() {
  }
  public void initial(float ColorA, float ColorB, float ColorC, float strokeWeight) {
    fill (ColorA, ColorB, ColorC);
    strokeWeight(strokeWeight);
    circle(x, y, diameter);
  }
  public void bouncewall() {
    x+=vX;
    y+=vY;
    if (x>500-diameter/2) {
      this.vX=-vX;
    }
    if (x<diameter/2) {
      this.vX=-vX;
    }
    if (y<diameter/2) {
      this.vY=-vY;
    }
    if (y>500-diameter/2) {
      this.vY=-vY;
    }
  }

  public float getx() {
    return x;
  }

  public float gety() {
    return y;
  }

  public void distance(Dude dude) {
    this.distance = sqrt(pow((x-dude.getx()), 2)+pow((y-dude.gety()), 2));
  }

  public void vector(Dude dude) {
    float xdistance = x-dude.getx();
    float ydistance = y-dude.gety();
    this.vectorX = xdistance/sqrt(pow(xdistance, 2)+pow(ydistance, 2));
    this.vectorY = ydistance/sqrt(pow(xdistance, 2)+pow(ydistance, 2));
  }

  public void attraction(float attractive) {
    x+=vX;
    y+=vY;
    vX=vectorX*-attractive;
    vY=vectorY*-attractive;
  }
}
