// slightly DIFFERENT api than instance_place
// argument0 = offsetx
//argument1 = offsety
// argument2 = shift
//argument3 = obj
return collision_line(argument0-argument2+bbox_left,argument1+bbox_top,argument0+argument2+bbox_right,argument1+bbox_top,argument3,true,true);
