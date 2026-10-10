
//Usnado o microscópio ou mudand o tamanho do personagem
if (tamanho = 0)
{
    if (keyboard_check_pressed(vk_space))
{
    if (!instance_exists(obj_ui_microscopio))
    {
        instance_create_depth(0, 0, 0, obj_ui_microscopio, {
            spr_imagem: spr_imagem
         });
    }
}
}
else
{
    obj_player.xscale += 0.5;
    obj_player.yscale += 0.5;
}