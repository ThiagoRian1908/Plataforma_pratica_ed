if (obj_player.x >= x - 180)
{
    if (global.sumi = 1)
    {
        image_alpha = lerp(image_alpha, 0, 1);
    }
}

if (image_alpha <= 0.1)
{
    instance_destroy();
}