public float x, y, z, rotX, rotY, rotZ;
public Boolean Bounce1=false;
public Boolean wPressed, sPressed;
public int bounceLevel=700;
 public void setup() {
  size(750, 750, P3D);
  x = width/2;
  y = width/2+700;
  z = -2500;
  rotX = PI/2;
  rotY = 0;
  rotZ = 0;
}

public void draw() {
  background(0);
  pushMatrix();
  translate(x, y, z);
  rotateX(rotX);
  rotateY(rotY);
  rotateZ(rotZ);
  stroke(55,55,55);
  noFill();
  recurse(-50, -100, 150, 1500);
  popMatrix();
  rotZ+=0.01;

  System.out.println(y);
}


