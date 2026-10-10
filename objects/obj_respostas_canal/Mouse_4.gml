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
with (obj_respostas_canal)
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
    //global.canal = spr_canal_aberto;
    if (cliquei == 0)
    {
        global.canal = 1;
        global.pontos++;
        alarm[0] = 7 * 60;
        cliquei = 1;
    }
    
}
else
{
    audio_play_sound(snd_errou, 11, 0);
    global.canal = 1;
    alarm[0] = 7 * 60;

    //obj_player.vida--;
    //global.vidas--;
    tremendo(10);

    if (global.vidas <= 0)
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

/*
// Se já cliquei nessa resposta, não faz nada
if (cliquei) return;

// Piscando só nessa resposta
if (certo_ou_errado == "certo")
{
    piscar = true;
    tempo_piscar = 60 * 2;
}

// Lógica de acerto/erro
if (certo_ou_errado == "certo")
{
    audio_play_sound(snd_acertou, 11, 0);

    if (!cliquei)
    {
        global.canal = 1;
        global.pontos++;
        alarm[0] = 7 * 60;
        cliquei = true; // trava essa resposta
    }
}
else
{
    audio_play_sound(snd_errou, 11, 0);
    global.canal = 1;
    alarm[0] = 7 * 60;

    tremendo(10);

    if (global.vidas <= 0)
    {
        with (obj_player)
        {
            instance_destroy();
        }

        tremendo(10);
        global.vidas = 3;
        cria_transicao_inicia(rm_fase_1);
    }
}
