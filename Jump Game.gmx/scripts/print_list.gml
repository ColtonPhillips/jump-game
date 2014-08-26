var _list = argument0;
for (i=0; i<ds_list_size(_list); i+=1) {
    show_debug_message(ds_list_find_value(_list,i));
}