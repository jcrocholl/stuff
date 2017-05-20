module hub(shaft, height) {
    difference() {
        union() {
            cylinder(r=14, h=height-15, $fn=60);
            for (y = [-10, 10]) {
                translate([0, y, 0]) scale([1, 0.7, 1]) cylinder(r=8, h=height, $fn=6);
            }
        }
        difference() {
            cylinder(r=shaft/2, h=100, center=true, $fn=24);
            translate([0, shaft*0.8, 0]) cube([shaft, shaft, 2*height], center=true);
        }
        translate([0, 0, height-5]) rotate([90, 0, 0])
            cylinder(r=1.5, h=60, center=true, $fn=24);
        translate([0, 0, 5]) rotate([90, 0, 0])
            cylinder(r=1.5, h=60, center=true, $fn=24);
    }
}

h = 30;
hub(10, h);
% translate([0, 0, 2*h-5]) rotate([0, 180, 90]) hub(5, h);