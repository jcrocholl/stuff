$fn=36;
r=0.33;

scale(25.4)
difference() {
    cube([3, 2, 1], center=true);
    for (x = [-1:1]) {
        translate([x, 0, 0]) rotate([90, 0, 0])
            # cylinder(r=r, h=3, center=true);
        
        for (y = [-0.5:0.5]) {
            translate([x, y, 0])
                # cylinder(r=r, h=2, center=true);
        }
    }
    for (y = [-0.5:0.5]) {
        translate([0, y, 0]) rotate([0, 90, 0])
            # cylinder(r=r, h=4, center=true);
    }
}