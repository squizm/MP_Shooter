//  scr_player_move(socket, UP, LEFT, DOWN, RIGHT)
var ID = argument[0];
var UP = argument[1];
var LEFT = argument[2];
var DOWN = argument[3];
var RIGHT = argument[4];

with(obj_character)
{
    if(owner_id == ID)
    {
        move_keys[|0] = UP;
        move_keys[|1] = LEFT;
        move_keys[|2] = DOWN;
        move_keys[|3] = RIGHT;        
        x += (DOWN - UP) * 4;
        y += (RIGHT - LEFT) * 4;
        
        // update all clients with new object position
        var obj = ds_list_create()
        show_debug_message("ID: " + string(ID) + " x:" + string(x) + " y:" + string(y));
        ds_list_add(obj, ID, x, y);
        for(i = 0; i < ds_list_size(global.socket_list); i += 1)
        {
            scr_send_packet(global.socket_list[|i], PACKET_MOVE_OBJECT, obj );
        }
    }
}
