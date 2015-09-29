///scr_update_object(buffer)
var buffer = argument[0];

var ID = buffer_read(buffer, buffer_u16);
var mx = buffer_read(buffer, buffer_u16);
var my = buffer_read(buffer, buffer_u16);

with(ID)
{
    x = mx;
    y = my;
}

show_debug_message("ID: " + string(ID) + " x:" + string(mx) + " y:" + string(my));
