int size = 500;
public void setup()
{
  size(500, 500);
  
  fill(#ffb3ba);
}
public void draw()
{
  myFractal(0, 0, 500);
  println (mouseX +"," + mouseY + "  " + size);
  
}
public void mouseDragged()//optional
{
  size = size - 10;
  if(size < 4){
   size = 500;
  }
}
public void myFractal(int x, int y, int len)
{
    //mouseDragged();
  if (len <=  50) {
    rect(x, y, len, len);
   if(size <= 10){
    size = 10; 
   }
  } else {
    myFractal(x, y, len/2);
    myFractal(x + len/2, y, len/2);
    myFractal(x, y + (len/2), len/2);
    myFractal(x + len/2, y+ len/2, len/2);
    myFractal(x + len/4, y + len / 4, len/2);
  }
}
