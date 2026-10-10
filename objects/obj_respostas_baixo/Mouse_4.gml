if (cliquei) return;
/*
//Piscando
if (certo_ou_errado == "certo")
{
    piscar = 1;
    tempo_piscar = 60 * 2;
}
//Piscando

*/
//Piscando
//A resposta está errada → fazer a certa piscar
with (obj_respostas_baixo)
{
    if (certo_ou_errado == "certo")
    {
        piscar = 1;
        tempo_piscar = 60 * 3; 
    }
}
//Piscando


if (certo_ou_errado == "certo")
{
    audio_play_sound(snd_acertou, 11, 0);
    if (cliquei == 0)
    {
        global.sumi = 1;
        global.pontos++;    
        cliquei = 1;
    }
    
}
else
{
    audio_play_sound(snd_errou, 11, 0);
    global.sumi = 1;

    //obj_player.vida--;
    //global.vidas--;
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