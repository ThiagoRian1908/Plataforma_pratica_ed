/*
persistent = true;

// evita duplicar
if (instance_number(obj_musica) > 1)
{
    instance_destroy();
    exit;
}

// cria variável
musica_id = noone;

// controle global
if (!variable_global_exists("musica_tocando"))
{
    global.musica_tocando = false;
}

// toca só uma vez
if (!global.musica_tocando)
{
    musica_id = audio_play_sound(snd_musica, 1, true);
    global.musica_tocando = true;
}
 * */