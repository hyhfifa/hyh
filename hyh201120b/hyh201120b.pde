void setup(){
size(600,600);
background(255);


  int a =int(random(80,140));
   int b=int(random(80,140));
for(int i =0;i<600;i+=a){
  a =int(random(40,180));
  for(int j =0;j<600;j+=b){
    int choice = floor(random(5));
switch(choice) {
 case 0:
fill(20);
 break;
 case 1:
 fill(150);
break;
 case 2:
 fill(150);
 break;
  case 3:
 fill(100);
 break;
  case 4:
 fill(255);
 break;}
strokeWeight(5);
b=int(random(40,180));
rect(j,i,b,a);
}

}
  
}
