if (obj_player.y > 380)
{
    var _x = random_range(4600, room_width + 100);
    var _y = random_range(240, 300);

    instance_create_layer(_x, _y, "Coisinhas", obj_coisinha_7);
}

alarm[1] = 2 * random_range(2, 5);