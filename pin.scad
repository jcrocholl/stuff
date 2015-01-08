r1 = 10;
x = 35;
y = -30;
diagonal = sqrt(x*x + y*y);
r2 = diagonal - r1;
w = x*r1/diagonal;

difference() {
  color([1, 0, 0])
    linear_extrude(height=20, scale=0.85, convexity=2)
    difference() {
      union() {
        circle(r=r1, $fn=60);
        translate([0, -10])
          square([2*w, 18], center=true);
    }
    translate([x, y]) circle(r=r2, $fn=180);
    translate([-x, y]) circle(r=r2, $fn=180);
  }
  color([0, 0, 0]) translate([0, 0, 19.5])
    cylinder(r=3, h=10, $fn=24);
}