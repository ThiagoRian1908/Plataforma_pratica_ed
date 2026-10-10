var margem = 10;

var _x = bbox_left + margem;
var _y = bbox_top + margem;

var _larg = (bbox_right - bbox_left) - (margem * 2);

var _txt = scribble(texto).starting_format("fnt_celula", cor);

// controla tamanho aqui
_txt = _txt.scale(0.1);

// quebra linha dentro do quadro
_txt = _txt.wrap(_larg);

_txt.draw(_x, _y, typist);