draw_self();

// margem interna
var margem = 10;

// largura do texto dentro do objeto
var largura = (bbox_right - bbox_left) - (margem * 2);

// centro do objeto
var cx = (bbox_left + bbox_right) / 2;
var cy = (bbox_top + bbox_bottom) / 2;

// cria o texto
var txt = scribble(texto)
    .starting_format("fnt_quadro", c_black)
    .scale(0.1) // AJUSTA AQUI se precisar
    .wrap(largura)
    .align(fa_center, fa_middle);

// desenha centralizado
txt.draw(cx, cy, typist);