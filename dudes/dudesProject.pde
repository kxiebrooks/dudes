Dude dude1 =new Dude(70, 70, -3, 1, 50);
Dude dude2 =new Dude(200, 200, -3, 2.2, 30);
double x;
double y;
void setup() {
  size(500, 500);
  noCursor();
}

void draw() {
  background(0);
  dude1.initial(200, 30, 25, 4);
  //change the values to change the color and strokeweight of the object
  dude1.bouncewall();
  dude2.initial(200, 30, 25, 4);
  dude2.bouncewall();
  dude1.distance(dude2);
  dude2.vector(dude1);
  dude2.attraction(0.999);
  //put the attractive of dudes inside from [0,1], 0 means no attractive at all, 1 means comple attractive
}
