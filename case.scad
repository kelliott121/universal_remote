$fn = 72;

feather();

translate([0, 0, 7.3])
tft_featherwing_24();

translate([-60, 0, 0])
battery_2000mah();

module tft_featherwing_24()
{
    color("blue")
    translate([0, 0, 6/2])
    difference()
    {
        cube([65, 53, 6], center=true);
        
    
        for (xOff = [-30, 30])
        {
            for (yOff = [-24, 24])
            {
                translate([xOff, yOff, 0])
                cylinder(d=2.5, h=6, center=true);
            }
        }
    }
    
    color("black")
    translate([0, 0, 6 + 3.5/2])
    cube([60.3, 43, 3.5], center=true);
}

module feather()
{
    color("black")
    translate([0, 0, 7.3/2])
    cube([22.7, 51, 7.3], center=true);
}

module battery_2000mah()
{
    color("silver")
    translate([0, 0, 7/2])
    cube([60, 36, 7], center=true);
}