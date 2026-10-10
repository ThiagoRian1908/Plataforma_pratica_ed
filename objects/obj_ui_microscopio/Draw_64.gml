/*
// fundo escuro
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// janela
var w = 700;
var h = 500;

var pos_x = display_get_gui_width()/2 - w/2;
var pos_y = display_get_gui_height()/2 - h/2;

// desenha janela
draw_set_color(c_white);
draw_rectangle(pos_x, pos_y, pos_x + w, pos_y + h, false);

//IMAGEM CENTRALIZADA E MAIOR
if (spr_imagem != noone)
{
    draw_sprite_ext(
        spr_imagem,
        0,
        pos_x + w/2,
        pos_y + h/2,
        1.5, 1.5,
        0,
        c_white,
        1
    );
}

// texto
draw_set_color(c_black);
draw_text(pos_x + 20, pos_y + 20, "Microscópio");
draw_text(pos_x + 20, pos_y + 60, "Aqui vai o conteúdo...");
 */

// fundo escuro (opcional, pode tirar depois)


//draw_set_color(c_white);
//draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

/*
//IMAGEM EM TELA CHEIA
if (spr_imagem != noone)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var spr_w = sprite_get_width(spr_imagem);
    var spr_h = sprite_get_height(spr_imagem);

    // calcula escala pra caber na tela inteira
    //var escala = max(gui_w / spr_w, gui_h / spr_h);
    var escala = min(gui_w / spr_w, gui_h / spr_h);

    draw_sprite_ext(
        spr_imagem,
        0,
        gui_w / 2,
        gui_h / 2,
        escala, escala,
        0,
        c_white,
        1
    );
}
*/


/*
// tamanho da janela (ajusta aqui)
var w = 800;
var h = 500;

var pos_x = display_get_gui_width()/2 - w/2;
var pos_y = display_get_gui_height()/2 - h/2;

// fundo branco da "lâmina"
draw_set_color(c_white);
draw_rectangle(pos_x, pos_y, pos_x + w, pos_y + h, false);

// desenhar imagem dentro da janela
if (spr_imagem != noone)
{
    var spr_w = sprite_get_width(spr_imagem);
    var spr_h = sprite_get_height(spr_imagem);

    // escala pra caber dentro da janela
    var escala = min(w / spr_w, h / spr_h) * 0.9;

    draw_sprite_ext(
        spr_imagem,
        0,
        pos_x + w/2,
        pos_y + h/2,
        escala, escala,
        0,
        c_white,
        1
    );
}
 * */
/*
// tamanho da janela (bem menor que a tela)
var w = 700;
var h = 400;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var pos_x = gui_w/2 - w/2;
var pos_y = gui_h/2 - h/2;

// fundo da janela (SÓ a janela, não a tela toda)
draw_set_color(c_white);
draw_rectangle(pos_x, pos_y, pos_x + w, pos_y + h, false);

// imagem dentro da janela
if (spr_imagem != noone)
{
    var spr_w = sprite_get_width(spr_imagem);
    var spr_h = sprite_get_height(spr_imagem);

    // escala baseada na JANELA, não na tela
    var escala = min(w / spr_w, h / spr_h) * 0.9;

    draw_sprite_ext(
        spr_imagem,
        0,
        pos_x + w/2,
        pos_y + h/2,
        escala, escala,
        0,
        c_white,
        1
    );
}
 * */
// tamanho da janela
var w = 700;
var h = 400;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var pos_x = gui_w/2 - w/2;
var pos_y = gui_h/2 - h/2;

// fundo da janela
draw_set_color(c_white);
draw_rectangle(pos_x, pos_y, pos_x + w, pos_y + h, false);

// imagem dentro da janela
if (spr_imagem != noone)
{
    var spr_w = sprite_get_width(spr_imagem);
    var spr_h = sprite_get_height(spr_imagem);

    var escala = min(w / spr_w, h / spr_h) * 0.9;

    draw_sprite_ext(
        spr_imagem,
        0,
        pos_x + w/2,
        pos_y + h/2,
        escala, escala,
        0,
        c_white,
        1
    );
}