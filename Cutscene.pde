void exibeAnimacao ()
{ 
  image (botaFone [frames2], 0, 0);
  tempoFrames2 = tempoFrames2 + 1;
  if (tempoFrames2 <= 2)
  {
    frames2 = 0;
  } else if (tempoFrames2 <= 4)
  {
    frames2 = 1;
  } else if (tempoFrames2 <= 6)
  {
    frames2 = 2;
  } else if (tempoFrames2 <= 8)
  {
    frames2 = 3;
  } else if (tempoFrames2 <= 10)
  {
    frames2 = 4;
  } else if (tempoFrames2 <= 12)
  {
    frames2 = 6;
  } else if (tempoFrames2 <= 39)
  {
    if (frames2 <= 30)
    {
      frames2 = frames2 + 1;
    } else
    {
      frames2 = 31;
      game = true;
    }
  }
}
