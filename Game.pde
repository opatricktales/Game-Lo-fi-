void playGame()
{

  if (keyPressed && key=='c')
  {
    cPlay = true; 
    dPlay = false;
    ePlay = false;
    fPlay = false;
    gPlay = false;
    aPlay = false;
    bPlay = false;

    c.rewind();

    c.play();
    d.pause();
    e.pause();
    f.pause();
    g.pause();
    a.pause();
    b.pause();
  } 
  else if (keyPressed && key=='d')
  {
    cPlay = false; 
    dPlay = true;
    ePlay = false;
    fPlay = false;
    gPlay = false;
    aPlay = false;
    bPlay = false;

    d.rewind();

    c.pause();
    d.play();
    e.pause();
    f.pause();
    g.pause();
    a.pause();
    b.pause();
  } 
  else if (keyPressed && key=='e')
  {
    cPlay = false; 
    dPlay = false;
    ePlay = true;
    fPlay = false;
    gPlay = false;
    aPlay = false;
    bPlay = false;

    e.rewind();

    c.pause();
    d.pause();
    e.play();
    f.pause();
    g.pause();
    a.pause();
    b.pause();
  } 
  else if (keyPressed && key=='f')
  {
    cPlay = false; 
    dPlay = false;
    ePlay = false;
    fPlay = true;
    gPlay = false;
    aPlay = false;
    bPlay = false;

    f.rewind();

    c.pause();
    d.pause();
    e.pause();
    f.play();
    g.pause();
    a.pause();
    b.pause();
  } 
  else if (keyPressed && key=='g')
  {
    cPlay = false; 
    dPlay = false;
    ePlay = false;
    fPlay = false;
    gPlay = true;
    aPlay = false;
    bPlay = false;

    g.rewind();

    c.pause();
    d.pause();
    e.pause();
    f.pause();
    g.play();
    a.pause();
    b.pause();
  } 
  else if (keyPressed && key=='a')
  {
    cPlay = false; 
    dPlay = false;
    ePlay = false;
    fPlay = false;
    gPlay = false;
    aPlay = true;
    bPlay = false;

    a.rewind();

    c.pause();
    d.pause();
    e.pause();
    f.pause();
    g.pause();
    a.play();
    b.pause();
  } 
  else if (keyPressed && key=='b')
  {
    cPlay = false; 
    dPlay = false;
    ePlay = false;
    fPlay = false;
    gPlay = false;
    aPlay = false;
    bPlay = true;

    b.rewind();

    c.pause();
    d.pause();
    e.pause();
    f.pause();
    g.pause();
    a.pause();
    b.play();
  }
}

void exibeGame ()
{ 
  
  if (mudouFundo == !true)
  {
    background (255);
    mudouFundo = true;
  }

  if (playMusicGame == !true)
  {
    beat.loop();
    playMusicGame = true;
  }

  if (cPlay == true)
  { 
    float x = 0;
    x = x + 0.5;

    if (desenhouc == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(0, 255, 255);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = false;
    desenhoub = false;
    desenhouc = true;
    desenhoud = false;
    desenhoue = false;
    desenhouf = false;
    desenhoug = false;
    }
  } 
  else if (dPlay == true)
  {
     if (desenhoud == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(0, 0, 255);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 2)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = false;
    desenhoub = false;
    desenhouc = false;
    desenhoud = true;
    desenhoue = false;
    desenhouf = false;
    desenhoug = false;
    }
  } 
  else if (ePlay == true)
  {
    if (desenhoue == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(255, 0, 255);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 3)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = false;
    desenhoub = false;
    desenhouc = false;
    desenhoud = false;
    desenhoue = true;
    desenhouf = false;
    desenhoug = false;
    }
  } 
  else if (fPlay == true)
  {
    if (desenhouf == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(255, 255, 0);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 4)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = false;
    desenhoub = false;
    desenhouc = false;
    desenhoud = false;
    desenhoue = false;
    desenhouf = true;
    desenhoug = false;
    }
  } 
  else if (gPlay == true)
  {
    if (desenhoug == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(255, 125, 0);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 5)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = false;
    desenhoub = false;
    desenhouc = false;
    desenhoud = false;
    desenhoue = false;
    desenhouf = false;
    desenhoug = true;
    }
  } 
  else if (aPlay == true)
  {
    if (desenhoua == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(0, 255, 0);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 6)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix ();
    desenhoua = true;
    desenhoub = false;
    desenhouc = false;
    desenhoud = false;
    desenhoue = false;
    desenhouf = false;
    desenhoug = false;
    }
  } 
  else if (bPlay == true)
  {
    if (desenhoub == !true)
    {
    pushMatrix ();
    noStroke ();
    translate(random(0, width), random(0, height));
    fill(255, 0, 0);
    beginShape();
    for (float theta = 0; theta < TWO_PI; theta+=0.01)
    {
      float r = noise(cos(theta)+1, sin(theta)+1, x * 7)*height/2;
      vertex(cos(theta)*r, sin(theta)*r);
    }
    endShape();
    popMatrix();
    desenhoua = false;
    desenhoub = true;
    desenhouc = false;
    desenhoud = false;
    desenhoue = false;
    desenhouf = false;
    desenhoug = false;
    }
  } 
  rectMode (CENTER);
  textAlign(CENTER);

  noStroke ();
  fill (0, 100);
  rect (width / 4 * 3 + 150, height / 4 * 3 + 100, 205, 92);

  textSize = 25; 
  font = createFont("lo-fi.ttf", textSize);
  fill (255);
  textFont(font);
  text("Z", 760, 455);
}

void ondas ()
{
  float x = 0, y = 0;

  tempoNoise = tempoNoise + 0.02;

  while (x < width)
  {
    stroke (0);
    strokeWeight (1);
    point (x, height * noise(x / 100, tempoNoise));
    x = x + 1;
  }

  while (y < height)
  {
    stroke (0);
    strokeWeight (1);
    point (width * noise(y / 100, tempoNoise), y);
    y = y + 1;
  }

}

void acaoBotaoGame ()
{
  if (key == 'z' && keyPressed == true)
  {
    menuRetornarGame = true;
    mudouFundo = false;
  }
}
