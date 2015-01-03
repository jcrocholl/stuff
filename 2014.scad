include <more_fontz/Cabin_Bold.scad>

module twentyfourteen() {
  translate([-70, 0, 0]) Cabin_Bold("2", steps=3);
  translate([-35, 0, 0]) Cabin_Bold("0", steps=3);
  translate([10, 0, 0]) Cabin_Bold("1");
  translate([35, 0, 0]) Cabin_Bold("4");
}

twentyfourteen();