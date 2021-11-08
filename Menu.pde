void exibeMenu ()
{
  x = 200;
  y = 200;

  background (255);
  image (menuFrame [frames1], 0, 0);
  tempoFrames1 = tempoFrames1 + 1;
  if (tempoFrames1 <= 6)    
  {
    frames1 = 0;
  } 
  else if (tempoFrames1 <= 12)
  {
    frames1 = 1;
  } 
  else if (tempoFrames1 <= 18)
  {
    frames1 = 2;
  } 
  else if (tempoFrames1 < 25)
  {
    frames1 = 3;
  } 
  else
  {
    tempoFrames1 = 0;
  }

  rectMode (CORNER);
  textAlign(CENTER);

  stroke (255);
  fill (255, 75);
  rect (670, 20, 177, 70);

  textSize = 16.5; 
  font = createFont("lo-fi.ttf", textSize);
  fill (0);
  textFont(font);
  text("Mouse = Movimento", 760, 50);

  font = createFont("lo-fi.ttf", textSize);
  fill (0);
  textFont(font);
  text("Segure = Selecionar", 760, 75); 

  textSize = 30; 

  stroke (255);
  fill (255, 75);
  rect (20, 410, 200, 50);

  font = createFont("lo-fi.ttf", textSize);
  fill (0, 100);
  textFont(font);
  text("JOGAR", 110, 435 + 15); 

  stroke (255);
  fill (255, 75);
  rect (240, 410, 200, 50);

  fill (0, 100);
  textFont(font);
  text("MANUAL", 340, 435 + 15); 

  stroke (255);
  fill (255, 75);
  rect (460, 410, 200, 50);

  fill (0, 100);
  textFont(font);
  text("CRÉDITOS", 560, 435 + 15); 

  stroke (255);
  fill (255, 75);
  ellipse (790, 435, 50, 50);

  stroke (255);
  fill (255, 75);
  line (765, 410, 815, 460);
  line (765, 460, 815, 410);

  font = createFont("lo-fi.ttf", textSize);
  fill (0, 100);
  textFont(font);
  text("SAIR", 790, 435 + 15);

  if (playMusic == !true)
  {
    menuMusic.loop();
    playMusic = true;
  }
}

void botoes ()
{
  textSize = 30;

  if ((mouseX >= 20 && mouseX <= 220) && (mouseY >= 410 && mouseY <= 460))
  {
    stroke (255);
    fill (255, 100);
    rect (20, 410, 200, 50);

    font = createFont("lo-fi.ttf", textSize);
    fill (0, 125);
    textFont(font);
    text("JOGAR", 110, 435 + 15); 

    botao1 = true;
    botao2 = false;
    botao3 = false;
    botao4 = false;
  } 
  else if (mousePressed && (mouseX >= 240 && mouseX <= 440) && (mouseY >= 410 && mouseY <= 460))
  {
    stroke (255);
    fill (255, 100);
    rect (240, 410, 200, 50);

    fill (0, 125);
    textFont(font);
    text("MANUAL", 340, 435 + 15); 

    botao1 = false;
    botao2 = true;
    botao3 = false;
    botao4 = false;
  } 
  else if (mousePressed && (mouseX >= 460 && mouseX <= 660) && (mouseY >= 410 && mouseY <= 460))
  {
    stroke (255);
    fill (255, 100);
    rect (460, 410, 200, 50);

    fill (0, 125);
    textFont(font);
    text("CRÉDITOS", 560, 435 + 15); 

    botao1 = false;
    botao2 = false;
    botao3 = true;
    botao4 = false;
  } 
  else if (mousePressed && (mouseX >= 765 && mouseX <= 815) && (mouseY >= 410 && mouseY <= 460))
  {
    stroke (255);
    fill (255, 100);
    ellipse (790, 435, 50, 50);

    stroke (255);
    fill (255, 100);
    line (765, 410, 815, 460);
    line (765, 460, 815, 410);

    font = createFont("lo-fi.ttf", textSize);
    fill (0, 125);
    textFont(font);
    text("SAIR", 790, 435 + 15);

    botao1 = false;
    botao2 = false;
    botao3 = false;
    botao4 = true;
  }
}

void mouseReleased ()  
{
  if (botao1 == true )
  {
    cutscene = true;
  } else if (botao2 == true )
  {
    controlesManual = true;
  } else if (botao3 == true )
  {
    creditos = true;
  } else if (botao4 == true )
  {
    exite = true;
    if (playMusic == true)
    {
      menuMusic.pause();
      playMusic = false;
    }
  }
}
