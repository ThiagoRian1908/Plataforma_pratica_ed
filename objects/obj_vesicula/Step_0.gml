if (global.vesicula == 0)
{
    image_alpha = 1;
}
else
{
    image_alpha = 0.5;
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