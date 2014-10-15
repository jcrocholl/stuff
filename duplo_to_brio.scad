/*
 * Duplo to Brio converter, for making bridges for Brio tracks using Duplo bricks
 *
 * Design by Thomas Flummer, http://hackmeister.dk/
 * 
 * This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License
 *
 */

resolution = 100;

module duplo_to_brio()
{
	union()
	{
		difference()
		{
			union()
			{
				translate([0, 0, 0])
					cube([63.8, 40, 20], center = true);
			}
			union()
			{
				translate([(63.8/2)-9.5, 0, 4.5])
					cube([21, 41, 13], center = true);

				translate([-(63.8/2)+9.5, 0, 4.5])
					cube([21, 41, 13], center = true);

				translate([0, 0, -7.5])
					cube([63.8-3, 31.7-3, 7], center = true);

				translate([0, 20.8, -10])
				rotate(56, [1, 0, 0])
					cube([80, 20, 8], center = true);
	
				translate([0, -20.8, -10])
				rotate(-56, [1, 0, 0])
					cube([80, 20, 8], center = true);
	
				translate([0, 0, 4.5])
					cylinder(r = 6.5, h = 13, center = true, $fn = resolution);
	
				translate([-8, 0, 4.5])
					cube([20, 7, 13], center = true);
				
				translate([0, 25/2, 8.5])
					cube([30, 5, 4], center = true);

				translate([0, -25/2, 8.5])
					cube([30, 5, 4], center = true);

				translate([0, -25/2-1.5, 8.5+1.5])
					rotate(-56, [1, 0, 0])
					cube([30, 3, 4], center = true);

				translate([0, -25/2+1.5, 8.5+1.5])
					rotate(56, [1, 0, 0])
					cube([30, 3, 4], center = true);

				translate([0, 25/2-1.5, 8.5+1.5])
					rotate(-56, [1, 0, 0])
					cube([30, 3, 4], center = true);

				translate([0, 25/2+1.5, 8.5+1.5])
					rotate(56, [1, 0, 0])
					cube([30, 3, 4], center = true);
			}
		}
		
		translate([11.9+12, 0, 3.5])
			cylinder(r = 11.5/2, h = 13, center = true, $fn = resolution);
	
		translate([11.9+5, 0, 3.5])
			cube([12, 6, 13], center = true);

		difference()
		{
			union()
			{
				translate([16, 0, -6.05])
					cylinder(r = 13.4/2, h = 7.9, center = true, $fn = resolution);

				translate([0, 0, -6.05])
					cylinder(r = 13.4/2, h = 7.9, center = true, $fn = resolution);

				translate([-16, 0, -6.05])
					cylinder(r = 13.4/2, h = 7.9, center = true, $fn = resolution);

				translate([24, (25.5/2)+(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([8, (25.5/2)+(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([-8, (25.5/2)+(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([-24, (25.5/2)+(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);

				translate([24, -(25.5/2)-(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([8, -(25.5/2)-(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([-8, -(25.5/2)-(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);
				translate([-24, -(25.5/2)-(2.5/2), -6.05])
					cube([1, 2.5, 7.9], center = true);

				translate([+(25.5/2)+(2.5/2)+16, -8, -6.05])
					cube([2.5, 1, 7.9], center = true);
				translate([+(25.5/2)+(2.5/2)+16, 8, -6.05])
					cube([2.5, 1, 7.9], center = true);

				translate([-(25.5/2)-(2.5/2)-16, -8, -6.05])
					cube([2.5, 1, 7.9], center = true);
				translate([-(25.5/2)-(2.5/2)-16, 8, -6.05])
					cube([2.5, 1, 7.9], center = true);
				
			}
			union()
			{
				translate([16, 0, -6])
					cylinder(r = 10/2, h = 8.1, center = true, $fn = resolution);

				translate([0, 0, -6])
					cylinder(r = 10/2, h = 8.1, center = true, $fn = resolution);

				translate([-16, 0, -6])
					cylinder(r = 10/2, h = 8.1, center = true, $fn = resolution);
			}
		}
	}
}

duplo_to_brio();