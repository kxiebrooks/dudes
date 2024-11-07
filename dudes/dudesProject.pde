Dude dude1 =new Dude(200, 200, -0.5, 1, 50, true, false);
Dude dude2 =new Dude(50, 50, 1, 1.5, 30, false, false);
double x;
double y;
void setup() {
  size(500, 500);
  noCursor();
}

void draw() {
  background(0);
  dude1.update();
  dude2.update();
  dude1.distance(dude1.pointX(), dude1.pointY(), dude2.pointX(), dude2.pointY());
  dude1.attraction();
  dude2.attraction();
}
