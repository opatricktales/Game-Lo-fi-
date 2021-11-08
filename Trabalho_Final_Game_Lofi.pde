import ddf.minim.*;

Minim minim;
AudioPlayer ps2, menuMusic, beat, a, b, c, d, e, f, g;
float giroTerra = 360, giroLua = 0, tamanho, tempo = 0, x, y, textSize, k = 5 / 6.0, tempoNoise = 0;
boolean menuRetornar = false, playIntro = false, playMusic = false, mudouFundo = false, sorteio = false, playMusicGame = false;
boolean creditos = false, game = false, exite = false, controlesManual = false, cutscene = false;
boolean desenhoua, desenhoub, desenhouc, desenhoud, desenhoue, desenhouf, desenhoug;
boolean aPlay = false, bPlay = false, cPlay = false, dPlay = false, ePlay = false, fPlay = false, gPlay = false;
boolean menuRetornarCreditos = false, menuRetornarControles = false, menuRetornarGame = false, menuRetornarSair = false;
boolean botao1 = false, botao2 = false, botao3 = false, botao4 = false;
PFont font;
PImage terra, lua, manual, lofiGirl, ziquezira, fundoGame;
PImage [] logoZiquezira = new PImage [21];
PImage [] menuFrame = new PImage [24];
PImage [] botaFone = new PImage [38];
PShape esfera1, esfera2;
int frames, frames1, frames2, tempoFrames1, tempoFrames2;

void setup ()
{
  size (853, 480, P3D);
  background (0);

  minim = new Minim(this);
  ps2 = minim.loadFile("ps2.mp3");
  menuMusic = minim.loadFile("menuMusic.mp3");
  beat = minim.loadFile("beat.mp3");
  a = minim.loadFile("a.mp3");
  b = minim.loadFile("b.mp3");
  c = minim.loadFile("c.mp3");
  d = minim.loadFile("d.mp3");
  e = minim.loadFile("e.mp3");
  f = minim.loadFile("f.mp3");
  g = minim.loadFile("g.mp3");

  terra = loadImage("terra.jpg");
  lua = loadImage("lua.jpg");
  lofiGirl = loadImage("lofiGirl.jpg");
  manual = loadImage("manual.png");
  manual = loadImage("manual.png");
  ziquezira = loadImage("ziquezira.png");
  fundoGame = loadImage("beatbg.png");

  esfera ();

  logoZiquezira [0] = loadImage("logoZiquezira1.png");
  logoZiquezira [1] = loadImage("logoZiquezira2.png");
  logoZiquezira [2] = loadImage("logoZiquezira3.png");
  logoZiquezira [3] = loadImage("logoZiquezira4.png");
  logoZiquezira [4] = loadImage("logoZiquezira5.png");
  logoZiquezira [5] = loadImage("logoZiquezira6.png");
  logoZiquezira [6] = loadImage("logoZiquezira7.png");
  logoZiquezira [7] = loadImage("logoZiquezira8.png");
  logoZiquezira [8] = loadImage("logoZiquezira9.png");
  logoZiquezira [9] = loadImage("logoZiquezira10.png");
  logoZiquezira [10] = loadImage("logoZiquezira11.png");
  logoZiquezira [11] = loadImage("logoZiquezira12.png");
  logoZiquezira [12] = loadImage("logoZiquezira13.png");
  logoZiquezira [13] = loadImage("logoZiquezira14.png");
  logoZiquezira [14] = loadImage("logoZiquezira15.png");
  logoZiquezira [15] = loadImage("logoZiquezira16.png");
  logoZiquezira [16] = loadImage("logoZiquezira17.png");
  logoZiquezira [17] = loadImage("logoZiquezira18.png");
  logoZiquezira [18] = loadImage("logoZiquezira19.png");
  logoZiquezira [19] = loadImage("logoZiquezira20.png");
  logoZiquezira [20] = loadImage("logoZiquezira21.png");

  menuFrame [0] = loadImage("menuframe1.png");
  menuFrame [1] = loadImage("menuframe2.png");
  menuFrame [2] = loadImage("menuframe3.png");
  menuFrame [3] = loadImage("menuframe4.png");

  botaFone [0] = loadImage("botafoneframe1.png");
  botaFone [1] = loadImage("botafoneframe2.png");
  botaFone [2] = loadImage("botafoneframe3.png");
  botaFone [3] = loadImage("botafoneframe4.png");
  botaFone [4] = loadImage("botafoneframe5.png");
  botaFone [5] = loadImage("botafoneframe6.png");
  botaFone [6] = loadImage("botafoneframe7.png");
  botaFone [7] = loadImage("botafoneframe8.png");
  botaFone [8] = loadImage("botafoneframe9.png");
  botaFone [9] = loadImage("botafoneframe10.png");
  botaFone [10] = loadImage("botafoneframe11.png");
  botaFone [11] = loadImage("botafoneframe12.png");
  botaFone [12] = loadImage("botafoneframe13.png");
  botaFone [13] = loadImage("botafoneframe14.png");
  botaFone [14] = loadImage("botafoneframe15.png");
  botaFone [15] = loadImage("botafoneframe16.png");
  botaFone [16] = loadImage("botafoneframe17.png");
  botaFone [17] = loadImage("botafoneframe18.png");
  botaFone [18] = loadImage("botafoneframe19.png");
  botaFone [19] = loadImage("botafoneframe20.png");
  botaFone [20] = loadImage("botafoneframe21.png");
  botaFone [21] = loadImage("botafoneframe22.png");
  botaFone [22] = loadImage("botafoneframe23.png");
  botaFone [23] = loadImage("botafoneframe24.png");
  botaFone [24] = loadImage("botafoneframe25.png");
  botaFone [25] = loadImage("botafoneframe26.png");
  botaFone [26] = loadImage("botafoneframe27.png");
  botaFone [27] = loadImage("botafoneframe28.png");
  botaFone [28] = loadImage("botafoneframe29.png");
  botaFone [29] = loadImage("botafoneframe30.png");
  botaFone [30] = loadImage("botafoneframe31.png");
  botaFone [31] = loadImage("botafoneframe32.png");
}

void draw ()
{
  tempo = tempo + 0.5;
  smooth ();

  if (tempo <= 300)
  {
    exibeEstrelas (); 
    exibePlaneta (); 
    exibeLua ();
    exibeZiquezira ();
  } 
   else if (exite == true)
  {
    exibeFlor ();
    //acaoBotaoSair ();
    /*
    if (menuRetornarSair == true)
    {
      exite = false;
      menuRetornarSair = false;
    }
    */
  }
  
  else if (creditos == true)
  {
    exibeCreditos ();
    acaoBotaoCreditos ();

    if (playMusic == true)
    {
      menuMusic.pause();
      playMusic = false;
    }

    if (menuRetornarCreditos == true)
    {
      creditos = false;
      menuRetornarCreditos = false;
    }
  } 
  
  else if (controlesManual == true)
  {
    exibeControles ();
    acaoBotaoControles ();

    if (playMusic == true)
    {
      menuMusic.pause();
      playMusic = false;
    }

    if (menuRetornarControles == true)
    {
      controlesManual = false;
      menuRetornarControles = false;
    }
  }
  
  else if (game == true)
  {
    exibeGame ();
    playGame ();
    acaoBotaoGame ();
    ondas ();
    cutscene = false;

    if (playMusic == true)
    {
      menuMusic.pause();
      playMusic = false;
    }

    if (menuRetornarGame == true)
    {
      game = false;
      menuRetornarGame = false;
      if (playMusicGame == true)
      {
        beat.pause();
        playMusicGame = false;
      }
    }
  } 
  
  else if (cutscene == true)
  {
    exibeAnimacao ();
  } 
  
   else 
  {
    exibeMenu ();
    botoes ();

    if (playIntro == true)
    {
      ps2.pause();
    }
  }
}
