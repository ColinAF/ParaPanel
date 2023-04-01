// A Parametric Eurorack Panel
// All units in mm 

// A single horizontal pitch 
HP = 5.00; 

// 3U rack unit rounded down ~4mm to account for rim of the mounting rails
RU = 128.5;

Pannel_Depth = 2.0;

difference()
{

    cube([(8 * HP), Pannel_Depth ,RU]);

    rotate([90,0,0])
    translate([7.5, 3.0, -2.0])
    {
        cylinder(2.2, 3.2/2, 3.2/2);
    }
    
}

