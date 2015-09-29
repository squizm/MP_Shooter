// scr_add_player(socket_id)
var new_player = instance_create(random_range(5,view_wport[0]), random_range(5,view_hport[0]), obj_character)    
var obj = ds_list_create();
with(new_player)
{
    owner_id = argument[0];
    ds_list_add(obj, x, y, owner_id);
}

// send new player to all connected clients
for(i = 0; i < ds_list_size(global.socket_list); i += 1)
{
    scr_send_packet(global.socket_list[|i], PACKET_CREATE_PLAYER, obj);
}

