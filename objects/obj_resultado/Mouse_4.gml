if (certo_ou_errado == "certo")
{
    audio_play_sound(snd_acertou, 11, 0);
    obj_porta.estado = "abrindo";
}
else
{
    audio_play_sound(snd_errou, 11, 0);

    //obj_player.vida--;
    global.vidas--;
    tremendo(10);

    if (/*obj_player.vida */ global.vidas <= 0)
    {
        with (obj_player)
        {
            instance_destroy();
        }
        
        tremendo(10);
        global.vidas = 3;
        cria_transicao_inicia(rm_fase_1);
        //room_goto(rm_fase_1);
    }
}