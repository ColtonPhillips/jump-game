//Returns true if the object is standing on solid ground 
//(including jump-thru platforms), false otherwise.

//An object is on solid ground if:
// 1. there is an obj_floor directly below it
//  OR
// 2.   a. there is an obj_jumpthru directly below it
//          AND
//      b. there is not an obj_jumpthru inside it


return place_meeting_below(0, 1, collider ) 
    || (place_meeting_below(0, 1, obj_jumpthru ) && !place_meeting_below(0, 0, obj_jumpthru ));    