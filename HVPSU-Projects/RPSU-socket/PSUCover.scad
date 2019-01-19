OD = 56;
ID = 53.15;
OH = 50;
IH = 48;
$fs=1;
$fa = 1;

difference()
{
    union()
    {
        cylinder(OH,d=OD,true);
        translate([0,0,OH-.01])cylinder(h=.7,r1=OD/2,r2=OD/2-1.4,true);
    }
    union()
    {
        cylinder(IH,d=ID,true);
        translate([0,14,45])cube([25,28,20],true);
        translate([(OD/2)-5,0,37.5])cube([10,15,5],true);
        translate([-(OD/2)+5,0,37.5])cube([10,15,5],true);
        translate([(OD/2)-5,0,20])cube([10,5,10],true);
        translate([6.096,-4.318,OH-5])cylinder(10,d=5,true);
        translate([-1.524,-10.414,OH-5])cylinder(10,d=5,true);
        translate([-6.604,-7.112,OH-5])cylinder(10,d=5,true);
    }
}
