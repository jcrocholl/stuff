function main() {
    var result = linear_extrude(
        {height: 120},
        CAG.roundedRectangle({
            radius: [36, 16],
            roundradius: 10
        }).subtract(CAG.roundedRectangle({
            radius: [36, 8.1],
            roundradius: 5
        }).translate([8, 0]))
    );
    result = result.subtract(CSG.roundedCube({
        center: [0, 0, 60],
        radius: [32, 13, 55],
        roundradius: 10
    }));
    for (var z = 30; z < 120; z = z + 60) {
        result = result.subtract(CSG.cylinder({
            start: [0, -20, z],
            end: [0, 20, z],
            radius: 2
        }));
        result = result.subtract(CSG.cylinder({
            start: [0, 0, z],
            end: [0, 20, z],
            radius: 6
        }));
    }
    return result;
}
