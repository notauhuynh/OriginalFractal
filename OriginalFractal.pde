
public void setup()
{
  size(500, 500);
  
  fill(#9DE8D1);
}
public void draw()
{
  myFractal(0, 0, 500);
  println (mouseX +"," + mouseY + "  ");
  
}
//public void mouseDragged()//optional
//{
//  size = size - 10;
//  if(size < 4){
//   size = 500;
//  }
//}
public void myFractal(int x, int y, int len)
{
    //mouseDragged();
  if (len <=  5) {
    rect(x, y, len, len);
  } else {
    myFractal(x, y, len/2);
    myFractal(x + len/2, y, len/2);
    myFractal(x, y + (len/2), len/2);
    myFractal(x + len/2, y+ len/2, len/2);
    myFractal(x + len/4, y + len / 4, len/2);
  }
}
