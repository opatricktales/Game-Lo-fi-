void exibeFlor ()
{
  if (mudouFundo == !true)
  {
    background (0);
    tempo = 301;
    mudouFundo = true;
  }
  tempo = tempo + 0.5;

  if (sorteio == !true)
  {
    x = (int)random(1, 8);
    sorteio = true;
    if (x == 1)
    {
      k = 1 / 8.0;
    } 
    else if (x == 2)
    {
      k = 2 / 7.0;
    } 
    else if (x == 3)
    {
      k = 3 / 4.0;
    } 
    else if (x == 4)
    {
      k = 4 / 7.0;
    } 
    else if (x == 5)
    {
      k = 5 / 9.0;
    } 
    else if (x == 6)
    {
      k = 6 / 6.0;
    } 
    else if (x == 7)
    {
      k = 7 / 8.0;
    }
  }

  for (int z = 0; z <= width / 2; z = z + 2);
  {
    pushMatrix ();
    translate (width / 2, height / 2);
    scale (200, 200);
    float t = frameCount / 20.0;
    float x = cos(k * t) * sin(t);
    float y = cos(k * t) * cos(t);

    strokeWeight (0.1);
    stroke (255, 255, 0);
    point (x, y);
    popMatrix();

    //Animação Rose (Mathematics)
    //Aprendemos isso no canal do youtube FunProgramming
   //EP 122: Programming roses and other flowers
    
    /*
    rectMode (CENTER);
    textAlign(CENTER);

    noStroke ();
    fill (255, 100);
    rect (width / 4 * 3 + 150, height / 4 * 3 + 100, 205, 92);

    textSize = 25; 
    font = createFont("lo-fi.ttf", textSize);
    fill (0);
    textFont(font);
    text("Z", 760, 455);*/
  }

  if (tempo >= 1500)
  {
    exit();
  }
}

/*
void acaoBotaoSair ()
{
  if (key == 'z')
  {
    menuRetornarSair = true;
    mudouFundo = false;
    sorteio = false;
  }
} */
