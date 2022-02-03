public void recurse(int x, int y, int z, int size) {
  if (size<=100) {
    Sierpinskify(x, y, z, size);
  } 
  else {
    recurse(x, y, z, size/2);
    recurse(x+size/2, y, z, size/2);
    recurse(x, y+size/2, z, size/2);
    recurse(x+size/2, y+size/2, z, size/2);
    recurse(x+size/4, y+size/4, z+size/2, size/2);
  }
}
public void Sierpinskify(int x, int y, int z, int size) {
  beginShape();
  vertex(x, y, z);
  vertex(x+size, y, z);
  stroke(255);
  vertex(x+size/2, y+size/2, z+size);
    stroke(55,55,55);
  vertex(x+size, y, z);
  vertex(x+size, y+size, z);
 
  vertex(x+size/2, y+size/2, z+size);
  vertex(x+size, y+size, z);
  vertex(x, y+size, z);
  vertex(x+size/2, y+size/2, z+size);
  vertex(x, y+size, z);
  vertex(x, y, z);
  vertex( x+size/2, y+size/2, z+size);
  endShape();
}
