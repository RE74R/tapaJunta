// It is licensed under the Creative Commons - GNU GPL license.
// © 2023 by Ricardo Espinosa

agujero=13;
$fn=50;
estrias=6;

difference(){
    union(){
        cylinder (h=1, d=agujero+35);
        cylinder(h=15,d1=agujero, d2=agujero-1);
    }
cylinder(h=32,d=agujero-4, center=true);
}


for(i=[0:estrias-1]){
    rotate([0,0,360/estrias*i]){
        hull(){
            translate([agujero/2,0,1])
            sphere(1);
            translate([agujero/2-0.5,0,13])
            sphere(1);
        }
    }
}

