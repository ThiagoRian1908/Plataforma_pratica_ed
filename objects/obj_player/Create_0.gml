inicia_efeito_squash();
inicia_efeito_brilho();

if (instance_exists(obj_ui_microscopio)) exit;

#region Variáveis

//Valores movimento
velh = 0;
max_velh = 2;
velv = 0;
max_velv = 4;

//Variáveis do brilho
//cor_brilho = c_white;
//alpha_brilho = 0;

//Botões inputs
right = 0
left = 0;
jump = 0;
paint = 0;

/*
//Controlando as sprites de transição
lista_sprites = [spr_player_parando, spr_player_idle];
indice_sprites = 0;
*/

//Variavel da colisão
var _tile = layer_tilemap_get_id("tl_level");
colisao = [obj_parade, _tile, obj_porta, obj_fosfolipidios, obj_fosfolipidios_baixo, obj_bacteria, obj_colesterol, obj_microtubulos];

//Física
grav = 0.2;
chao = 0;

//Estado
estado = noone;

//Direção que eu tô olhando
dir = 1;

//Variável de controle
tintando = 0;

//Pegando o oid do tl_tinta 
tile_tinta = layer_tilemap_get_id("tl_tinta");
chao_tinta = 0;

//Criando a variável de chaves
chaves = 0;

////Impedindo que o personagem pule de dentro da tinta
//estado_tinta_loop = noone;
//pode_pular = (estado != estado_tinta_loop);


#endregion

#region Métodos

//Inputs
pega_input = function()
{
    right = keyboard_check(vk_right) or keyboard_check(ord("D"));
    left = keyboard_check(vk_left) or keyboard_check(ord("A"));
    jump = keyboard_check_pressed(vk_space);
    paint = keyboard_check_pressed(vk_control);
}


aplica_velocidade = function()
{
    checa_chao();
    
    velh = (right - left) * max_velh;
    
    if (estado != estado_tinta_loop)
    {
       if (!chao)
       {
            velv += 1.8
           //velv += grav;
        
        
           //estado = estado_pulando;
       }
       else
       {
           velv = 0;
           
           y = round(y);
           /*
           if (jump)
           {
               velv = - max_velv;
           }
         * */
       }
    }
    
    
    velv = clamp(velv, -max_velv, max_velv);
}

removendo_colisao_one_way = function()
{
    //Tirando o bug que ficou quando concertou o buh=g de deslizar a cabeça no teto
    if (instance_place(x, y, obj_parade_one_way))
    {
        if (array_contains(colisao, obj_parade_one_way))
        {
            var _ind = array_get_index(colisao, obj_parade_one_way);
            
            array_delete(colisao, _ind, 1);
        }
    }
}

ajusta_escala = function()
{
   if (velh != 0) dir = sign(velh);
}

movimento = function()
{
    move_and_collide(velh, 0, colisao, 4);
    move_and_collide(0, velv, colisao, 24);
}

checa_chao = function()
{
    chao = place_meeting(x, y + 1, colisao);
    chao_tinta = place_meeting(x, y + 1, tile_tinta);
}

pega_chave = function()
{
    chaves++;
}




#endregion

#region Debugs

view_player = noone;

//efeito do debug
roda_debug = function()
{
    //if (!global.debugs) return;
    
    //mostrando o código se global.debugs é igual a 1;
    show_debug_overlay(1);
    
    view_player = dbg_view("View_player", 1, 40, 100, 300, 400)
    
    //ativa debug
    var _ref_velv = ref_create(id, "velv")
    dbg_watch(_ref_velv, "Velv");
    
    //ativa debug
    dbg_slider(ref_create(id, "max_velv"), 0, 10, "Max velv", .1);
    dbg_slider(ref_create(id, "grav"), 0, 1, "Gravidade", .01);
} 

ativa_debug = function()
{
    if (!DEBUG_MODE) return;
    
    if (keyboard_check_pressed(vk_tab))
    {
       //global.debugs invertendo
       global.debugs = !global.debugs;
        
       if (global.debugs)
       {
           roda_debug();
       }
       else 
       {
            show_debug_overlay(0);
        
           if (dbg_view_exists(view_player))
           { 
                dbg_view_delete(view_player);  
           } 
       } 
       
    }
}

#endregion

#region Métodos 2

troca_sprite = function(meu_sprite = spr_parede)
{
    if (sprite_index != meu_sprite)
    {
        sprite_index = meu_sprite;
        image_index = 0;
    }   
}

acabou_animacao = function()
{
    var _spd = sprite_get_speed(sprite_index) / FPS;
    if (image_index  + _spd >= image_number)
    {
        return true;
    }
}


#endregion

//Power up
estado_pega_power_up = function()
{
    estado = estado_power_up_inicio;
}

#region Estados

/*
//Método para as transições
transicao_sprites = function()
{
   troca_sprite(lista_sprites[indice_sprites]);
       
       if (acabou_animacao())
       {
           var _qtd = array_length(lista_sprites) - 1;
           if (indice_sprites < _qtd)
           {
               indice_sprites++;
           }
           
       }    
}
*/
/*
if (room_restart)
{
    audio_stop_all();
}
*/

#endregion

troca_estado = function(_estado = estado_parado,/* _lista_sprites = [spr_player_idle] */)
{
    estado = _estado;
    /*
    indice_sprites = 0;
    lista_sprites = _lista_sprites;
    */
}

estado_parado = function()
{
    //Talvez precise de um abre_porta() aqui
    
    //sprite_index = spr_player_idle;
    velv = 0;
    velh = 0;
    aplica_velocidade();
    
    //troca_sprite(spr_player_idle);
    //sprite_index = lista_sprite[indice_sprites];
    
    //transicao_sprites();
    
    if (right != left)
    {
        /*troca_estado(estado_movendo, [spr_player_inicia_correr, spr_player_move]) */
        
        estado = estado_movendo;
        troca_sprite(spr_player_move);
        
    }
    /*
    if (jump)
    {
        //estado = estado_pulando;
        troca_estado(estado_pulando, [spr_player_jump_inicia, spr_player_jump_cima]);
        instance_create_depth(x, y, depth - 1, obj_particulas_pulo);
        
        efeito_squash_funcionando(.4, 1.6);
    }
    */
    /*
    if (!chao)
    {
        estado = estado_pulando;
    }
    */
    if (paint && tintando && chao_tinta)
    {
        estado = estado_tinta_entrar;
        //instance_create_depth(x, y, depth - 1, obj_tinta_entrar_particulas);
    }
}
//}

abre_porta = function()
{
    var _porta = instance_place(x + velh, y, obj_porta)
    
    if (_porta)
    {
        if (chaves > 0 && _porta.estado == "fechada")
        {
            //instance_destroy(_porta)
            //_porta.porta_abrindo();
            _porta.estado = "abrindo";
            
            chaves--;
        }
    }
}

estado_movendo = function()
{
    aplica_velocidade();
    //sprite_index = spr_player_move;
    
    //troca_sprite(spr_player_move);
    //transicao_sprites();
    
    //Mudei aqui
    abre_porta();
    
    if (velh == 0)
    {
        //troca_estado(estado_parado, [spr_player_parando, spr_player_idle])
        estado = estado_parado;
        troca_sprite(spr_player_idle);
        
    }
    /*
    if (jump)
    {
        //troca_estado(estado_pulando, [spr_player_jump_inicia, spr_player_jump_cima]);
        estado = estado_pulando;
        instance_create_depth(x, y, depth - 1, obj_particulas_pulo);
    }
    */
    if (paint && tintando && chao_tinta)
    {
        estado = estado_tinta_entrar;
    }
}

/*
    
estado_pulando = function()
{
    //if (chao)
    //{
        //instance_create_layer(x, y, layer, obj_particulas_pulo);
    //}
    
    
    aplica_velocidade();
    //sprite_index = spr_player_jump_cima;
    
    var _layer = layer_tilemap_get_id("tl_level")
    var _colisao = [obj_parade, _layer]
    
    if (place_meeting(x, y + sign(velv), _colisao))
    {
        velv = 0;
    }
    
    /*
    if (velv < 0)
    {
        //troca_sprite(spr_player_jump_cima);
        //transicao_sprites();
        
        
        if (array_contains(colisao, obj_parade_one_way))
        {
            var _ind = array_get_index(colisao, obj_parade_one_way);
            
            array_delete(colisao, _ind, 1);
        }
    }
    else 
    {
    	//troca_sprite(spr_player_jump_baixo);
        ///lista_sprites = [spr_player_jump_inicia_queda, spr_player_jump_baixo];
        ///transicao_sprites();
        
        if (!array_contains(colisao, obj_parade_one_way))
        {
            if (!place_meeting(x, y, obj_parade_one_way))
            {
                array_push(colisao, obj_parade_one_way);
            }
            
        }
        
    }
    
    if (chao)
    {
        //estado = estado_parado;
        //troca_estado(estado_parado, [spr_player_jump_pousando, spr_player_idle]);
        
        instance_create_depth(x, y, depth - 1, obj_particulas_pouso);
        
        efeito_squash_funcionando(1.5, .5);
    }
}
*/


estado_power_up_inicio = function()
{
    troca_sprite(spr_player_power_up_inicio);
    
    velh = 0;
    velv = 0;
    
    //var _spd = sprite_get_speed(sprite_index) / FPS;
    //if (image_index  + _spd>= image_number)
    //{
        //estado = estado_power_up_meio;
    //}
    
    if (acabou_animacao())
    {
        estado = estado_power_up_meio;
    }
}

estado_power_up_meio = function()
{
    troca_sprite(spr_player_power_up_meio);
    
    if (!instance_exists(obj_particula_power_up))
    {
        estado = estado_power_up_fim;
    } 
}

estado_power_up_fim = function()
{
    troca_sprite(spr_player_power_up_fim);
    
   
    if (acabou_animacao())
    {
        troca_estado(estado_parado, [spr_player_idle]);
    }
}
//roda_debug();
//estado_indo = function()
//{
    //velh = 1;
//}

estado_tinta_entrar = function()
{
    velh = 0;
    troca_sprite(spr_player_tinta_entrar);
    //lista_sprites = [spr_player_tinta_entrar, spr_player_tinta_entrar]
    //transicao_sprites();
    
    if (!instance_exists(obj_tinta_entrar_particulas))
    {
        instance_create_depth(x, y, depth - 1, obj_tinta_entrar_particulas);
    }
    
    if (acabou_animacao())
    {
        //estado = estado_tinta_loop;
        troca_estado(estado_tinta_loop, [spr_player_tinta_inicio, spr_player_tinta_loop]);
    }
}

estado_tinta_loop = function()
{
    //troca_sprite(spr_player_tinta_loop);
    ///transicao_sprites();
    aplica_velocidade();
    
    //velv = 0;
    
    var _sair = !place_meeting(x + (velh * 18), y - 10, colisao);
    if (paint && _sair)
    {
        //estado = estado_tinta_sair;
        troca_estado(estado_tinta_sair, [spr_player_tinta_fim, spr_player_tinta_sair]);
        instance_create_depth(x, y, depth - 1, obj_tinta_sair_particulas);
    }
    
    
    //spr = sprite_add("spr_", 16, true, true, 0, 0);
    mask_index = spr_player_tinta_loop;
    //var _parar = !place_meeting(x + (velh * 18), y + 1, tile_tinta);
    var _parar = !place_meeting(x + (velh * 23), y + 1, tile_tinta);
    //var _parar_tinta = !place_meeting(x + (velh * 18), y + 1, chao_tinta);
    if (_parar)
    {
        velh = 0;
    }
}

estado_tinta_sair = function()
{
    velh= 0;
    //troca_sprite(spr_player_tinta_sair);
    
    mask_index = spr_player_idle;
    
    var _qtd = array_length(lista_sprites) - 1;
    if (acabou_animacao() && indice_sprites >= _qtd)
    {
        troca_estado(estado_parado, [spr_player_idle]);
    }
    
    transicao_sprites();

}

#endregion

estado = estado_parado;
//estado = estado_parado;
    /*
audio_stop_all();
audio_play_sound(snd_musica, 10, 1);
     */
    //instance_create_layer(0, 0, "Player", obj_musica);
musica_tocar();