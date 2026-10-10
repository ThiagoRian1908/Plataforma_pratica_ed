texto = "Você fez " + string(round(global.pontos)) + " pontos!";

scribble_anim_wave(1, 0.2, 0.1);

typist = scribble_typist();

typist.in(0.5, 10);
desenhar_texto = 1;
me_destruir = 0;
/*
if (!variable_instance_exists(id, "textinho"))
{
    textinho = "Texto padrão";
}

texto = textinho;
 * */