//Piscando

piscar = 0;
tempo_piscar = 0;
vezes_piscar = 0;

tempo_piscar = 0;

//Piscando

texto = "Pato";
certo_ou_errado = "sei lá";
cor = c_blue;

scribble_anim_wave(1, 0.2, 0.1);

typist = scribble_typist();

typist.in(0.5, 10);
desenhar_texto = 1;
me_destruir = 0;

if (!variable_instance_exists(id, "textinho"))
{
    textinho = "Texto padrão";
}

texto = textinho;

if (!variable_instance_exists(id, "resposta"))
{
    resposta = "Texto padrão";
}

certo_ou_errado = resposta;

