
TOTAL_WIDTH=30;
BORDER_WIDTH=3;
BORDER_HEIGHT=50;

translate([-10,-5,0]){
cube([25,40,1]);
}


difference(){
 translate([-BORDER_WIDTH,0,0]){
  cube([BORDER_WIDTH,TOTAL_WIDTH,BORDER_HEIGHT]);
 }

  translate([-BORDER_WIDTH-1,10,28]){
   cube([9,9,19]);
  }
  translate([-BORDER_WIDTH-1,2,22]){
   cube([BORDER_WIDTH/2,25,25]);
  }
}

translate([-5,4,31]){
  rotate([0,90,0]){
   cylinder(h=3,r=0.75,center=True);
  }
 }

translate([-5,25,31]){
  rotate([0,90,0]){
   cylinder(h=3,r=0.75,center=True);
  }
 }
 
translate([-5,4,43.5]){
  rotate([0,90,0]){
   cylinder(h=3,r=0.75,center=True);
  }
 }

translate([-5,25,43.5]){
  rotate([0,90,0]){
   cylinder(h=3,r=0.75,center=True);
  }
 }
