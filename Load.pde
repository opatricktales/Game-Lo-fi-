void esfera ()
{
  noStroke ();
  fill (255);
  esfera1 = createShape (SPHERE, 200); // Cria a Terra
  esfera1.setTexture(terra);

  noStroke ();
  fill (255);
  esfera2 = createShape (SPHERE, 40); // Cria a Lua
  esfera2.setTexture(lua);
}

void exibeEstrelas ()
{
  tamanho = 1;

  for (int z = 0; z <= width / 2; z = z + 10);
  {
    background (0);

    for (int i = 0; i < 200; i++) 
    {
      x = random(0, width + 1);
      y = random(0, width + 1);

      if ((x >= 295 && x <= 555) && (y >= 110 && y <= 390))
      {
      } 
      else
      {
        fill (255);
        noStroke ();
        ellipse (x, y, tamanho, tamanho);
      }
      //200 estrelas aleatorias pela área a cada loop, mas não em cima da esfera
    }
  }

  if (playIntro == !true)
  {
    ps2.play();
    playIntro = true;
  }
}

void exibePlaneta ()
{

  for (int z = 0; z <= width / 2; z = z + 2);
  {

    pushMatrix ();
    translate(width / 2, height / 2, -200);
    rotateY (radians (giroTerra));
    fill(0, 0, 255);
    lights ();
    noStroke();
    shape(esfera1);
    spotLight(255, 255, 255, width/2, height/2, 200, 0, 0, -1, PI/2, 4);
    giroTerra = giroTerra - 1.2;
    if (giroTerra <= 0)
    {
      giroTerra = 360;
    }
    popMatrix ();
  }

  //Cria a Terra e faz ela girar em torno de seu eixo y
}

void exibeLua ()
{

  for (int z = 0; z <= width / 2; z = z + 2);
  {
    translate(width / 2, height / 4 - 40, - 80);
    pushMatrix ();
    rotateY (radians (giroLua));
    translate(width / 4, height / 4, -200);
    rotateY (radians (giroLua));
    fill(255, 255, 255);
    lights ();
    noStroke();
    shape(esfera2);
    spotLight(255, 255, 255, width/4, height/4, 200, 0, 0, -1, PI/2, 4);
    giroLua = giroLua + 0.9;
    if (giroLua >= 360)
    {
      giroLua = 0;
    }
    popMatrix ();
  }
  // Cria a Lua e faz ela girar em torno do seu eixo y e da Terra
}

void exibeZiquezira ()
{ 
  image (logoZiquezira [frames], -290, height / 2);
  if (frames < 20)
  {
    frames = frames + 1;
  } else 
  {
    frames = 20;
  }
}
