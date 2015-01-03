all : ipod_holder.stl

%.dxf : %.jscad
	../OpenJSCAD.org/openjscad $< -o $@

%.stl : %.jscad
	../OpenJSCAD.org/openjscad $< -o $@
