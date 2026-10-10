if (piscar == 1)
{
    tempo_piscar--;

    // alterna entre verde e azul
    if (tempo_piscar > 0)
    {
        cor = c_green;
        cliquei = 1;
    }
    else
    {
        piscar = 0;
        cor = c_blue;
    }
        

}