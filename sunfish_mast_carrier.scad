$fn=60;
width=140;
height=120;
mast=58; // OD=2.25"
mast2=1.1*mast;

difference() {
    translate([0, 20, height/2]) intersection() {
        cube([width, width, height], center=true);
        cylinder(r1=40, r2=150, h=2*height, center=true);
    }
    cylinder(r=mast/2, h=140, center=true);
    translate([0, 40, 50]) {
        rotate([-90, 0, 0]) cylinder(r=mast2/2, h=100);
        translate([0, 50, 50]) cube([mast2, 100, 100], center=true);
    }
    translate([0, -30, 0])
    cube([4, 100, 200], center=true);
    translate([0, 0, 110])
        cube([100, 200, 60], center=true);
    for (z = [20, 50]) {
        translate([20, -36, z]) rotate([0, 90, 0]) # union() {
            cylinder(r=2, h=200, center=true, $fn=12);
            cylinder(r=6, h=100, $fn=24);
        }
    }
}
