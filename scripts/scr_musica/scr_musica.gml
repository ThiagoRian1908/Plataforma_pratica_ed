function musica_tocar()
{
    if (!variable_global_exists("musica_tocando"))
    {
        global.musica_tocando = false;
        global.musica_id = noone;
    }

    if (!global.musica_tocando)
    {
        global.musica_id = audio_play_sound(snd_musica, 1, true);
        global.musica_tocando = true;
    }
}