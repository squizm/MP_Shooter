/// scr_send_packet(message_id, ...)
message_id = argument[0];

var buffer = global.buffer;

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, message_id);
buffer_write(buffer, buffer_bool, argument[1]);
buffer_write(buffer, buffer_bool, argument[2]);
buffer_write(buffer, buffer_bool, argument[3]);
buffer_write(buffer, buffer_bool, argument[4]);

network_send_packet(global.connection, buffer, buffer_tell(buffer));
