// slightly DIFFERENT api than instance_place
// argument0 = offsetx
//argument1 = offsety
//argument2 = obj
return collision_line(argument0+bbox_left,argument1+bbox_bottom,argument0+bbox_right,argument1+bbox_bottom,argument2,true,true);
