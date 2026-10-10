//Inicia as variáveis necessárias
function inicia_efeito_brilho()
{
    xscale = 1;
    yscale = 1;
    dir = 1;
    
    alpha_brilho = 0;
    cor_brilho = c_white;
} 

//Aplicando as coisas e mudando o cor
function aplica_efeito_brilho(_cor = c_white, _valor = 1)
{
    alpha_brilho = _valor;
    cor_brilho = _cor;
}

//Voltando a cor e escolhendo a velocidade
function retorna_efeito_brilho(_vel = .1)
{
    alpha_brilho = lerp(alpha_brilho, 0, _vel);
}


function desenha_efeito_brilho()
{
    if (alpha_brilho <= 0.01) return;
    
    shader_set(sh_muda_cor);
    draw_sprite_ext(sprite_index, image_index, x, y, xscale * dir, yscale, image_angle, cor_brilho, alpha_brilho);
    shader_reset();    
}