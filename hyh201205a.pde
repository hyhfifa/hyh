Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 80;
int bh = 40;
int by2 = by + bh + 20;
int by3 = bh + by2 + 20;
int bx2 = bx + bw + 20;
int bx3 = bw + by2 + 50;
int a = int(random(0,255));
int b = int(random(0,255));
int c = int(random(0,255));
int d = 0;
int e=0;


float speed = 0;
float easing = 0.07;
void setup() {
  size(600, 400);
  background(255);
  noStroke();
  fill(0);
String txt = "点击任意方块开始做图";
text(txt, 350, 50);
}

void draw() {
if((mouseX > bx2) && (mouseX < bx2 + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(100);
    e=1;
  } else {
    fill(0);
  }
  rect(bx2, by, bw, bh);
  if((mouseX > bx3) && (mouseX < bx3 + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(100);
 e=2;
  } else {
    fill(0);
  }
  rect(bx3, by, bw, bh);
  
  
  
  if (e==1){
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(a, b, c,200);
    d=1;
  } else {
    fill(a-50, b-50, c-50);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(b,c,a,200);
  d=2;
  } else {
    fill(b-50,c-50,a-50);
  }
  rect(bx, by2, bw, bh);
   if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by3) && (mouseY < by3 + bh) && mousePressed == true) {
    fill(c,b,a,200);
   d=3;
  } else {
    fill(c,b,a);
  }
  rect(bx, by3, bw, bh);
  
  
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && d==1 && mousePressed == true) {
   stroke(a, b, c);
   float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;
if (mousePressed) {
strokeWeight(20/(speed+1));
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) &&d==2 && mousePressed == true) {
    stroke(b, c,a);
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;

if (mousePressed) {
strokeWeight(20/(speed+1));
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by3) || (mouseY > by3 + bh)) && d==3 && mousePressed == true) {
    stroke(c, b,a);
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;

if (mousePressed) {
strokeWeight(20/(speed+1));
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }
}


if(e==2){
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(a, b, c,200);
    d=1;
  } else {
    fill(a-50, b-50, c-50);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(b,c,a,200);
  d=2;
  } else {
    fill(b-50,c-50,a-50);
  }
  rect(bx, by2, bw, bh);
   if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by3) && (mouseY < by3 + bh) && mousePressed == true) {
    fill(c,b,a,200);
   d=3;
  } else {
    fill(c,b,a);
  }
  rect(bx, by3, bw, bh);
  
  
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && d==1 && mousePressed == true) {
   stroke(a, b, c);
   float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;
if (mousePressed) {
strokeWeight(speed/2);
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) &&d==2 && mousePressed == true) {
    stroke(b, c,a);
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;

if (mousePressed) {
strokeWeight(speed/2);
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by3) || (mouseY > by3 + bh)) && d==3 && mousePressed == true) {
    stroke(c, b,a);
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
speed += (target - speed) * easing;

if (mousePressed) {
strokeWeight(speed/2);
line(mouseX, mouseY, pmouseX, pmouseY);
}
  }


}
}
