//if (obj_power_up.tinta = 1)
//{
    //tintando = 10;
//}

pega_input();
checa_chao();
movimento();

ajusta_escala();
//aqui eu ativo a função ativa_debug
//ativa_debug();

retorna_squash();

//alpha_brilho = lerp(alpha_brilho, 0, .1);
retorna_efeito_brilho();

ativa_debug();

estado();


if (keyboard_check_pressed(ord("R")))
{
    cria_transicao_inicia(room);
}

removendo_colisao_one_way();

if (keyboard_check_pressed(vk_f11))
{
    var _full = window_get_fullscreen();
    window_set_fullscreen(!_full);
}

if (place_meeting(x, y, obj_espinhos))
{
    cria_transicao_inicia(room);
}

if (xscale < 0.2)
{
    cria_transicao_inicia(rm__memb_4);
}
else if (xscale > 1.5)
{
    cria_transicao_inicia(rm__memb_5);
}




show_debug_message(xscale);

//testando
var _canal = instance_place(x + velh, y, obj_canal);

if (_canal != noone && _canal.image_alpha == 1)
{
    velh = 0;
}

var _vesicula = instance_place(x + velh, y, obj_vesicula);

if (_vesicula != noone && _vesicula.image_alpha == 1)
{
    velh = 0;
}