var tilesets_list = argument0;
var gid = argument1;
var tilesets_size = ds_list_size(tilesets_list);
var gid_counter = 1;
for (var i = 0; i < tilesets_size; i++) {
    var current_tileset = ds_list_find_value(tilesets_list,i);
    var first_gid = ds_map_find_value(current_tileset,"firstgid");
    var image_height = ds_map_find_value(current_tileset,"imageheight");
    var image_width = ds_map_find_value(current_tileset,"imagewidth");
    var tile_height = ds_map_find_value(current_tileset,"tileheight");
    var tile_width = ds_map_find_value(current_tileset,"tilewidth");    
    var calculated_next_gid = gid_counter + (floor((image_width/tile_width)) * floor((image_height/tile_height)));
    if (gid < calculated_next_gid) {
        return i;
    }
    gid_counter = calculated_next_gid;
}
return -1;