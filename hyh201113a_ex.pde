void setup()
{
size(600,600);
background(0);
frameRate(8);
}
void draw()

{
 background(mouseX/2,mouseY/2,50);
for(int i = 0;i<15;i++)
{
  for(int j = 0;j<15;j++)
  {
  fill(255,random(0,255));
  noStroke();
  ellipse(50*i,50*j,40,40);
  }
  
}
}
