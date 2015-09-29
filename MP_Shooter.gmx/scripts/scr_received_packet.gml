/// scr_received_packet(buffer)
var buffer = argument[0]
var message_id = buffer_read(buffer, buffer_u8);

switch(message_id)
{
    case PACKET_CREATE_PLAYER:  
        scr_create_player(buffer);
        break;
    case PACKET_MOVE_OBJECT:
        scr_update_object(buffer);
        break;
}
