include <more_fontz/Cabin_Bold.scad>

module saga() {
  translate([-80, 0, 0]) Cabin_Bold("S");
  translate([-42, 0, 0]) Cabin_Bold("A");
  translate([-4, 0, 0]) Cabin_Bold("G");
  translate([40, 0, 0]) Cabin_Bold("A");
}

saga();