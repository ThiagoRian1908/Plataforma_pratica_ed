if (!alvo) exit;
    
image_alpha = speed / 4;

image_xscale = lerp(image_xscale, speed * 3, 0.1);
image_angle = direction;

if (!voltar)
{
    speed -= 0.08;
    
    if (speed <= 0)
    {
        voltar = true;
        
        var _x = alvo.x + random_range(-3, 3);
        var _y = alvo.y - 12 + random_range(-3, 2);
        var _dir = point_direction(x, y, _x, _y);
        //var _dir = point_direction(x, y, alvo.x, alvo.y);
        direction = _dir;
    }
}
else
{
    speed += 0.1;
    
    var _player = instance_place(x, y, obj_player)
    
    if (_player)
    {
        with(_player) 
        {
        	var _xscale = random_range(-0.3, 0.3);
            var _yscale = random_range(-0.3, 0.3);
            
            efeito_squash_funcionando(1 + _xscale, 1 + _yscale);
            
            aplica_efeito_brilho();
        }
        
        tremendo(2);
        
        instance_destroy();
    }
}
//direction = point_direction(x, y, alvo.x, alvo.y);