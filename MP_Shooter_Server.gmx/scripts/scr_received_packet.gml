/// scr_received_packet(global.buffer, socket)
var buffer = argument[0];
var socket = argument[1];
var message_id = buffer_read(buffer, buffer_u8);

switch(message_id)
{
    case PACKET_MOUSE_PRESSED:
        var mx = buffer_read(global.buffer,buffer_u32);
        var my = buffer_read(global.buffer, buffer_u32);
        break;
    case PACKET_KEY_PRESSED:
        scr_player_move(socket, buffer_read(buffer, buffer_bool), buffer_read(buffer, buffer_bool), buffer_read(buffer, buffer_bool), buffer_read(buffer, buffer_bool));
        break;
}
