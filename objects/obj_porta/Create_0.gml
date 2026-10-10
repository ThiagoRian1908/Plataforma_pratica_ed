estado = "fechada";
/*
//ps_porta_abrindo
ps = part_system_create();
part_system_draw_order(ps, true);

//Emitter
ptype1 = part_type_create();
part_type_shape(ptype1 , pt_shape_cloud);
part_type_size(ptype1 , 1, 1, 0.05, 0);
part_type_scale(ptype1 , 0.1, 0.1);
part_type_speed(ptype1 , 0.1, 0.1, 0.01, 0);
part_type_direction(ptype1 , 306, 80, 0, 0);
part_type_gravity(ptype1 , 0, 270);
part_type_orientation(ptype1 , 0, 0, 0, 0, false);
part_type_colour3(ptype1 , $666666, $B2B2B2, $FFFFFF);
part_type_alpha3(ptype1 , 1, 1, 0.169);
part_type_blend(ptype1 , false);
part_type_life(ptype1 , 20, 40);
*/



maquina_de_estados = function()
{
    switch (estado) 
    {
        case "fechada":
        {
            
        }
        break;
    
        case "abrindo":
        {
            vspeed = -0.3;
            
            tremendo(3);
            
            //if (!part_system_exists(ps))
            //{
                //ps = part_system_create(ps_porta_abrindo);
                //part_system_position(ps, x, y - sprite_height / 2);
            //}
            
            var _x = x + random_range(- sprite_width / 1.5, sprite_width / 1.5);
            //part_particles_create(ps, _x, ystart - sprite_height, ptype1, 1);
            
            x = xstart + random_range(-1, 1);

            
            if (y < ystart -33)
            {
                estado = "aberta";
                alarm[0] = FPS;
            }
        }
        break;
    
        case "aberta":
        {
            vspeed = 0;
            
            x = xstart;
            
            //ps = noone;
            //part_system_destroy(ps);
        }
        break;
    }
}