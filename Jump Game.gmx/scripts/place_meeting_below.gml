// slightly DIFFERENT api than place_meeting
// argument0 = offsetx
//argument1 = offsety
//argument2 = obj
if (collision_line(argument0+bbox_left,argument1+bbox_bottom,argument0+bbox_right,argument1+bbox_bottom,argument2,true,true))
{return true;}
return false;

