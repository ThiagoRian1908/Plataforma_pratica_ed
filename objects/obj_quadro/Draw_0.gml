/*
draw_self();

//if (!desenhar_texto) exit;
    /*
draw_set_halign(0);
draw_set_valign(0);


draw_set_font(fnt_dialogos);
*/
/*
var _marg = 3;
var _x = x - sprite_width/2 + _marg;
var _y = y - sprite_height/2 + _marg;
var _larg = (sprite_width * 10) - (_marg * 20);

//draw_text_ext_transformed(_x, _y, texto, 60, _larg, .1, .1, 0);
//draw_set_font(-1);
/*
var _txt = scribble(texto).starting_format("fnt_dialogos", c_blue);

_txt = _txt.scale(0.1);

_txt = _txt.wrap(sprite_width - _marg * 2);

_txt.draw(_x, _y, typist);
*/


 // Ajustado
draw_self();

var margem = 10;

var _x = bbox_left + margem;
var _y = bbox_top + margem;

var _larg = (bbox_right - bbox_left) - (margem * 2);

//var _txt = scribble(texto).starting_format("fnt_quadro", c_blue);
var _txt = scribble(texto).starting_format("fnt_celula", c_blue);

// controla tamanho aqui
_txt = _txt.scale(0.1);

// quebra linha dentro do quadro
_txt = _txt.wrap(_larg);

_txt.draw(_x, _y, typist);