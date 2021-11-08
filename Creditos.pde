void exibeCreditos ()
{ 
  background (0);

  ziquezira.resize (200, 200);
  image (ziquezira, 0, 0);

  lofiGirl.resize (200, 200);
  image (lofiGirl, 0, 200);
  
  fundoGame.resize (200, 200);
  image (fundoGame, 0, 400);

  rectMode (CENTER);
  textAlign(CENTER);

  font = createFont("amartans.ttf", 50);

  fill (255);
  textFont(font);
  text("Patrick Tales", width / 2, height / 2);

  fill (255);
  textFont(font);
  text("Vitor Emanuel", width / 2, height / 4);

  fill (255);
  textFont(font);
  text("Arte cedida pelo @who_wally", width / 2, height / 1.5 + 50);

  noStroke ();
  fill (255, 100);
  rect (width / 4 * 3 + 150, height / 4 * 3 + 100, 205, 92);

  textSize = 25; 
  font = createFont("amartans.ttf", textSize);
  fill (0);
  textFont(font);
  text("Z", 760, 455);
  
}


void acaoBotaoCreditos ()
{
  if (key == 'z' && keyPressed == true)
  {
    menuRetornarCreditos = true;
  }
}
