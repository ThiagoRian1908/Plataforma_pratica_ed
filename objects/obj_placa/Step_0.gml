var _player = place_meeting(x, y, obj_player);

if (_player)
{
    if (!instance_exists(meu_dialogo))
    {
        meu_dialogo = instance_create_layer(x, y - 10, "Dialogos", obj_caixa_dialogos);
        meu_dialogo.texto = textinho;
    }
    
}   
else
{
    if (instance_exists(meu_dialogo))
    {
        
        with(meu_dialogo)
        {
            me_destruir = 1;
        }
        
    }
}