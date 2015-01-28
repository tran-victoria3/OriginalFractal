public void setup(){

  size(700,700);
}

public void draw(){
  background(0);
  stroke(0,255,0);
  fill(0);
  strokeWeight(1);
myFractal(350,350,700);


}
public void myFractal(int x, int y, int siz){

rect(x,y,siz/2,siz/2);
triangle(x-siz/2,y+siz/2,x+siz/2,y+siz/2,x,y-siz/2);
ellipse(x, y, siz/2,siz/2);
    if(siz > 2){
    pushMatrix();
    translate(x-siz/2,y);
    rotate(-PI/4);
    myFractal(0,0,siz/2);
    popMatrix();
    
    pushMatrix();
    translate(x+siz/2,y);
    rotate(PI/4);
    myFractal(0,0,siz/2);
    popMatrix();	
    }
  
}
