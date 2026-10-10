if (piscar == 1)
{
    tempo_piscar--;

    // alterna entre verde e azul
    if (tempo_piscar > 0)
    {
        cor = #99e550;
        cliquei = 1;
    }
    else
    {
        piscar = 0;
        cor = c_white;
    }
        

}


if (cliquei = 1)
{
    tempo_cliquei--;
}

if (tempo_cliquei < 60 * 3)
{
    cliquei = 0;
}