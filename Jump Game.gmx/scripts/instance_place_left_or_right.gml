// arg0 xoffeset
// arg2 object

var inst = collision_line(bbox_left-argument0,bbox_top,bbox_left-argument0,bbox_bottom,argument1,true,true);
if (inst == noone) {
    inst = collision_line(bbox_right+argument0,bbox_top,bbox_right+argument0,bbox_bottom,argument1,true,true);
    if (inst == noone) {
        return noone;
    }
    return inst;
}
return inst;
