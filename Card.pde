class Card{
  
  float wid;
  float high;
  String symbol;
  int number;
  color col;
  PVector pos;
  String symbols;
  color stro;
  boolean selected;
  
  Card(float _x, float _y, String _sym, int _num, color _col){
    wid = 35;
    high = 25;
    symbol = _sym;
    number = _num;
    col = _col;
    stro = color(0);
    pos = new PVector(_x, _y);
    selected = false;
    char s[];
    s = new char[number];
    for(int i = 0; i < number; i++){
      s[i] = symbol.charAt(0);
    }
    symbols = new String(s);
  }
  
  void update(){
    if(selected){
      stro = 255;
    }
    else{stro = 0;}
  }
  
  void show(){
    stroke(stro);
    fill(col);
    rectMode(CENTER);
    rect(pos.x, pos.y, wid, high);
    fill(255);
    textAlign(CENTER);
    text(symbols, pos.x, pos.y);    
  }
  
}