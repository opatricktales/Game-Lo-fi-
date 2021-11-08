void exibeControles ()
{
  background (0);
  manual.resize (width, height);
  image (manual, 0, 0);
}

void acaoBotaoControles ()
{
  if (key == 'z' && keyPressed == true)
  {
    menuRetornarControles = true;
  }
}
