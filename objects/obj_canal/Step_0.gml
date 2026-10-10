if (global.canal == 0)
{
    sprite_index = spr_canal_fechado;
    image_alpha = 1;
}
else
{
    sprite_index = spr_canal_aberto;
    image_alpha = 0.9;
}

if (image_alpha == 1)
{
    if (place_meeting(x, y, obj_player))
    {
        // Faz alguma coisa
    }
}
else
{
    // Não faz nada ou desfaz algum efeito
}