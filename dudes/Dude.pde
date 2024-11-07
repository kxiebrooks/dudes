class Dude {
  private float x;
  private float y;
  private float vX;
  private float vY;
  private float diameter;
  private float distance;
  private boolean attraction;
  private boolean runaway;
  
    public Dude(float x, float y, float vX, float vY, float distance, boolean attrction, boolean runaway) {
    this.x = x;
    this.y =y;
    this.vX = vX;
    this.vY =vY;
    this.diameter = distance;
    this.runaway = runaway;
    this.attraction = attraction;
  }

  public void run() {
  }
  public void update() {
    fill (250, 152, 5);
    strokeWeight(3);
    circle(x, y, diameter);
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
  public float pointX() {
    return (x);
  }
  public float pointY() {
    return (y);
  }
  
  public void distance(float x1, float y1, float x2, float y2) {
    this.distance = sqrt(pow((x1-x2), 2)+pow((y1-y2), 2));
    println(distance);
  }
  public void attraction(){
    if (distance<50){
      if (runaway = true){
        vX+=0.001;
        vY+=0.001;
      }
      else{
        vX-=0.001;
        vY-=0.001;
  }
  
}
else{
        vX+=0.001;
        vY+=0.001;
  }
}
}
