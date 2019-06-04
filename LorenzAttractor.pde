float x = 0.1;
float y = 0;
float z = 0;
float turn = .01;
float hu = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  size(800,600, P3D);
  
}
void draw(){
  background(0);
  turn = turn;
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - (z * c)) * dt;
  
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x,y,z));
  
  translate(width/2,height/2,turn);
  scale(5);
  stroke(255);
  noFill();
  
  turn = turn + .01;
  
  
  beginShape();
  for(PVector v : points){
    stroke(hu,255,100);
    vertex(v.x, v.y, v.z);
    hu = hu + .1;
    if(hu>255){
      hu=0;
    }
  }
  rotateY(PI/8+turn);
  rotateX(PI/8-turn);
  rotateZ(PI-turn);
  endShape();
  
  
  
}
