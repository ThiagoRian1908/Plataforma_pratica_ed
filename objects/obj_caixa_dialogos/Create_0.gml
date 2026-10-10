/*
texto = "Pato";

scribble_anim_wave(1, 0.2, 0.1);

typist = scribble_typist();

typist.in(0.5, 10);
desenhar_texto = 0;
me_destruir = 0;
image_xscale = .1
image_yscale = .1
image_alpha = 0;

iniciando = function()
{
    image_xscale = lerp(image_xscale, 2.5, .1);
    image_alpha = lerp(image_alpha, .8, .1);
    image_yscale = lerp(image_yscale, 1, .1);
    
    y = lerp(y, ystart - 30, .2);
    
    
    if (y <= ystart - 29.9)
    {
        desenhar_texto = 1;
    }

}

finalizando = function()
{
   image_xscale = lerp(image_xscale, 0, .1);
   image_yscale = lerp(image_yscale, 0, .05);
   
   image_alpha = lerp(image_alpha, 0, .1);
   
    y = lerp(y, ystart, .2);
   
    desenhar_texto = 0;
    
   if (image_alpha <= .01)
   { 
       instance_destroy();
   }
    
}
 */
image_alpha = 0.5;