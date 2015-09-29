// scr_delete_player(socket)
with(obj_character)
{
    if (owner_id == argument[0])
        instance_destroy()
}
