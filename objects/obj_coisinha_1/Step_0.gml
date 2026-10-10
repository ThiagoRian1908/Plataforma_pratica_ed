vspeed += random_range(-0.1, 0.1);
vspeed += random_range(-0.1, 0.1);
vspeed = clamp(vspeed, -1, 1);

if (x < -sprite_width)
{
    instance_destroy();
}

