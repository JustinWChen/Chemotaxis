Walker [] bob;
void setup(){
  size (500,500);
  bob=new Walker[100];
   for (int i=0;i<100;i++){
bob[i]=new Walker();
  }
}
void draw() {

  background (0);
  for (int i=0;i<100;i++){
    bob[i].show(255,255,255);
    bob[i].walk();
    if(dist(bob[i].myY,mouseY,bob[i].myX,mouseX)<100){
    bob[i].show(255,0,0);
  }
  }
}

class Walker{
  int myX,myY;
  Walker (){
    myX=myY=250;
  }
 void walk()
 {
   myX=myX+(int)(Math.random()*7)-3;
   
   myY=myY + (int)(Math.random()*7)-3;
   if(mouseX>myX)
   myX=myX+(int)(Math.random()*5)-1;
   else myX=myX+(int)(Math.random()*5)-3;
   if(mouseY>myY)
   myY=myY+(int)(Math.random()*5)-1;
   else myY=myY+(int)(Math.random()*5)-3;
 }
 void show(int r, int g, int b){
 fill(r,g,b);
   ellipse (myX,myY,30,30);
 }
}
