class felho {
  float x;
  float y;
  float sebesseg;
  void barany() {
    fill (#B7F0F2, 65);
    noStroke();
    ellipse (x, y, 210, 90);
  }
  void mozogj() {
    x=x+sebesseg;
  }
}


class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }

  void mozogj() {
    x=x+0.5;
  }
}

Csillag[] csillagok= new Csillag[1000];

Csillag cs1=new Csillag ();
Csillag cs2=new Csillag ();
Csillag cs3=new Csillag ();
Hold hold=new Hold();

felho felho1=new felho ();
felho felho2=new felho ();
felho felho3=new felho ();
felho felho4=new felho ();



void setup() {

  size(500, 500);
  cs1.szuless();
  cs2.szuless ();
  cs3.szuless ();

  Csillag cs1=new Csillag ();
  Csillag cs2=new Csillag ();
  Csillag cs3=new Csillag ();

  felho1.x=70;
  felho1.sebesseg=0.6;
  felho2.x=110;
  felho2.sebesseg=0.9;
  felho3.x=420;
  felho3.sebesseg=0.2;
  felho4.x=55;
  felho4.sebesseg=0.8;

  felho1.y=200;
  felho2.y=270;
  felho3.y=325;
  felho4.y=80;



  int szamlalo= 0; 
  while (szamlalo<1000) {
    csillagok[szamlalo]=new Csillag();
    csillagok[szamlalo].szuless();
    szamlalo=szamlalo+1;
  }
  hold.x=50;
  hold.y=75;
  hold.r=40;
}


void draw() {
  background(#2C2AB7);

  hold.vilagits();
  hold.mozogj();

  felho1.barany();
  felho1.mozogj();
  felho2.barany();
  felho2.mozogj();
  felho3.barany();
  felho3.mozogj();
  felho4.mozogj();
  felho4.barany();

  int szamlalo= 0; 
  while (szamlalo<1000) {
    csillagok[szamlalo].ragyogj();
    szamlalo=szamlalo+1;
  }
}