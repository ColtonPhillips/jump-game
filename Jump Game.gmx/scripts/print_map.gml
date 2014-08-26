var _map = argument0;
var _key;
_key = ds_map_find_first(_map);
for(i=0; i<ds_map_size(_map); i+=1) {
    show_debug_message("KEY: " + _key);
    show_debug_message("VALUE: " + string(_map[? _key]));
    _key = ds_map_find_next(_map, _key);
}