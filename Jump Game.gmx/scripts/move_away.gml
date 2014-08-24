var inst = argument0;
var sp = argument1;

if (x < inst.x) {
    x = x - sp;
}
else if (x > inst.x) {
    x = x + sp;
}

if (y < inst.y) {
    y = y - sp;
}
else if (y > inst.y) {
    y = y + sp;
}
