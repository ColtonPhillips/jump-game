// well this kinda sucks.
//argument0 = inst to check 
if (argument0.x < x && argument0.facing_right) { return true; }
if (argument0.x > x && !argument0.facing_right) { return true; }
return false;
