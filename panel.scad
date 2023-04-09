// A Parametric Eurorack Panel
// All units in mm 

// v0.0.1 

// Arc resolution parameters
$fa = 1;
$fs = 0.4;

// A single horizontal pitch 
HP = 5.00; 

// 3U rack unit rounded down ~4mm to account for rim of the mounting rails
RU = 128.5;

pannel_depth = 2.0;

pannel_width = 10 * HP; 


// This text is just a test! 
rotate([90,0,0])
linear_extrude(1)
translate([15, 10.0, 0])
{
    text("ParaPanel: v0.0.1", 2);
    
    translate([-4, -3, 0])
    text("Designed by: Colin Frisch ", 2);
    
    translate([5, -6, 0])
    text("04/09/23", 2);
}

difference()
{
    cube([pannel_width, pannel_depth ,RU]);

    // Bottom left screw
    rotate([90,0,0])
    translate([7.5, 3.0, -2.1])
    {
        
        cylinder(3, 1.6, 1.6);
    }
    
    // Bottom right screw
    rotate([90,0,0])
    translate([(pannel_width - 7.5), 3.0, -2.1])
    {
        
        cylinder(3, 1.6, 1.6);
    }
    
    // Top left screw
    rotate([90,0,0])
    translate([7.5, (RU - 3.0), -2.1])
    {
        
        cylinder(3, 1.6, 1.6);
    }
    
    // Top right screw
    rotate([90,0,0])
    translate([(pannel_width - 7.5), (RU - 3.0), -2.1])
    {
        
        cylinder(3, 1.6, 1.6);
    }
    
    
    // Jack Cutouts 
    for(i = [0:2])
    {
        for(j = [0:1])
        {
            rotate([90,0,0])
            translate([(10 + (i*14.5)),(20 + (j*10)), -2.1])
            {
                
                cylinder(3, 3.0, 3.0);
                
            }
            
        }
    
    }
   
}

