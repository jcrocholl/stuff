$fn = 60;

difference() {
    linear_extrude(height=60, convexity=10) {
        difference() {
            union() {
                circle(r=33);
                translate([0, 32])
                    square([16, 24], center=true);
            }
            circle(r=28);
            square([7, 59], center=true);
            translate([0, 32])
                square([2, 64], center=true);
        }
    }
    translate([0, 0, 6])
        cylinder(r=30, h=60);
    for (z = [10:20:50]) {
        translate([0, 38, z]) rotate([0, 90, 0]) {
            # cylinder(r=1.7, h=30, center=true, $fn=12);
            translate([0, 0, 6]) rotate([0, 0, 90]) # cylinder(r=3.2, h=10, $fn=6);
        }
    }
}