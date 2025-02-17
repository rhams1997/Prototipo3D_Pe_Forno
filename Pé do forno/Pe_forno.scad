use <BOSL/masks.scad>
base_quadrado();
//corte_quadrado();
//corte_quadrado_interno();
//corte_quadrado_ultimo();
//corte_quadrado_fora();
//corte_quadrado_fora02();
module base_quadrado(){
    difference(){
color("orange")
 cube([55.6,55.6,30],center=true, $nf=400);
        corte_quadrado();
        corte_quadrado_ultimo();
        corte_quadrado_fora();
        corte_quadrado_fora02();
    }
}

module corte_quadrado(){
    difference(){
    translate([3,-3,10]){
        color("blue")
        cube([45.6,45.6,30],center=true, $nf=400);
    }
    arredonda();
    corte_quadrado_interno();
}
}
module corte_quadrado_interno(){
    difference(){
    translate([11,-11,10]){
        color("green")
        cube([46,46,30],center=true, $nf=400);
    }
    arredonda02();
}
}

module corte_quadrado_ultimo(){
    difference(){
    translate([11,-11,0]){
        color("green")
        cube([40,40,32],center=true, $nf=400);
    }
    arredonda02();
}
}
module arredonda(){
translate([-21.5,20,10]){
    rotate([0,0,-80]){
        
    #fillet_angled_edge_mask(h=40, r=6.0, ang=90, $fn=32);
    }
}
}

module arredonda02(){
translate([-12,13,10]){
    rotate([0,0,-5]){
        
    #fillet_angled_edge_mask(h=40, r=6.0, ang=90, $fn=32);
    }
}
}

module corte_quadrado_fora(){
    difference(){
    translate([-55,-3,0]){
        color("blue")
        cube([65.6,65.6,40],center=true, $nf=400);
    }
    
}
}

module corte_quadrado_fora02(){
    difference(){
    translate([10,55,0]){
        color("blue")
        cube([65.6,65.6,40],center=true, $nf=400);
    }
    
}
}