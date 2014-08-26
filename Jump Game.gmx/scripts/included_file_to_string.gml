// Does not copy in newlines.

var file_string = argument0;
var file = file_text_open_read(working_directory + file_string);
var _string = "";
while(!file_text_eof(file)) {
    _string += file_text_readln(file);
}
file_text_close(file);
//show_debug_message(_string);
return _string;