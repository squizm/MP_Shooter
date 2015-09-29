/// scr_send_packet(socket_id, message_id, data)
message_id = argument[1];
message_contents = argument[2]

buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, message_id);
for(i = 0; i < ds_list_size(message_contents); i += 1)
{
    buffer_write(global.buffer, buffer_u16, message_contents[| i]);
}
network_send_packet(argument[0], global.buffer, buffer_tell(global.buffer));
