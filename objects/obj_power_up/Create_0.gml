alvo = noone;

tinta = 0;

movendo = function()
{
    if (!alvo) return;
        
    x = alvo.x;
    y = alvo.y - 35;
    //y = alvo.y - 35;
}

explosao = function()
{
    var _qnt = irandom_range(20, 50);
    repeat (_qnt) 
    {
    	var _part = instance_create_layer(x, y, "Enfeites", obj_particula_power_up);
        _part.speed = random_range(2, 5);
        _part.direction = random_range(0, 359);
        
        _part.alvo = alvo;
        
        
        //if (!instance_exists(obj_particula_power_up))
        //{
            //tinta = 1;
        //}
        tinta = 1;
    }
    
}

