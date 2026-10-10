//Fechar com ESC ou espaço
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space))
{
    instance_destroy();
}