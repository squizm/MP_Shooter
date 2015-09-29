// scr_create_player(buffer)
var buffer = argument[0];
var inst = instance_create(buffer_read(buffer, buffer_u16), buffer_read(buffer, buffer_u16), obj_character);
with(inst)
{
    owner_id = buffer_read(buffer, buffer_u16);
}
