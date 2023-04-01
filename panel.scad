// A Parametric Eurorack Panel
// All units in mm 

// Arc resolution parameters
$fa = 1;
$fs = 0.4;

// A single horizontal pitch 
HP = 5.00; 

// 3U rack unit rounded down ~4mm to account for rim of the mounting rails
RU = 128.5;

pannel_depth = 2.0;

difference()
{
    cube([(8 * HP), pannel_depth ,RU]);

    rotate([90,0,0])
    translate([7.5, 3.0, -2.1])
    {
        
        cylinder(3, 1.6, 1.6);
    }

    for(i = [0:2])
    {
        for(j = [0:1])
        {
            rotate([90,0,0])
            translate([(10 + (i*10)),(15 + (j*10)), -2.1])
            {
                
                cylinder(3, 3.0, 3.0);
                
            }
            
        }
    
    }
   
}

