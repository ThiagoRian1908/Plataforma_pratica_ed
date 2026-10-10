draw_set_font(fnt_celula_peq);

draw_set_halign(1);
draw_set_valign(1);

var _pontos = round(global.pontos);


draw_set_color(c_black);


draw_text(120, 30, "Pontos: " + string(_pontos));



draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);


