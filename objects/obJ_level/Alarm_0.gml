var _meu_y = random_range(70, 140); 
var _x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 100;

instance_create_layer(_x, _meu_y, "Coisinhas", obj_coisinha_1);

alarm[0] = 3 * random_range(2, 5);
