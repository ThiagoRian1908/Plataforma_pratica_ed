colidi_player = 0;

if (!variable_instance_exists(id, "destino_level"))
{
  destino_level = rm_fase_2; // ou qualquer room padrão
}
//colidi_player = 0;

// segurança melhor
//if (!room_exists(destino_level))
//{
    //show_debug_message("ERRO: destino_level inválido no obj_muda_level");
//}