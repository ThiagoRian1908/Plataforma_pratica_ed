estado = noone;
timer = 0;
//tempo = 1 * FPS;
contador = function(_estado_destino = estado_seta_cima)
{
    timer++;
    
    if (timer >= tempo)
    {
        timer = 0;
        //image_speed = 1;
        estado = _estado_destino;
    }
}


estado_seta_cima = function()
{
    image_index = 0;
    mask_index = spr_dado;
    
    contador(estado_quase_sem_seta);
    
}

estado_quase_sem_seta = function()
{
    if (image_index >= 8)
    {
        estado = estado_sem_seta;
    }
}

estado_sem_seta = function()
{
    image_index = 8;
    mask_index = spr_vazio;
    
    contador(estado_quase_seta_cima);
}

estado_quase_seta_cima = function()
{
    if (image_index >= image_number - 1)
    {
        estado = estado_seta_cima;
    }
}

estado = estado_seta_cima;

if (estado_inicial == "estado_sem_seta")
{
    estado = estado_sem_seta;
}