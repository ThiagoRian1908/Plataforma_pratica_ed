// Quando o player chegar perto
if (obj_player.x >= x - 180)
{
    caindo = true;
}

// Desce até encostar no fosfolipídio
if (caindo)
{
    if (!place_meeting(x, y + 1, obj_fosfolipidios))
    {
        y += 2.3;
    }
}

if (place_meeting(x, y + 1, obj_fosfolipidios))
{
    if (global.passou = 1)
    {
        instance_destroy();
    }
}

