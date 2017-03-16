ArrayList<Card> deck;
Card c;
ArrayList<Card> selection;

void setup(){
  size(600, 300);
  selection = new ArrayList<Card>();
  deck = new ArrayList<Card>();
  for(int i=0; i < 3; i++){
    c = new Card(i*40+30, 30, "diamond", i+1, color(255,0,0));
    deck.add(c);
    c = new Card(i*40+30, 60, "squiggle", i+1, color(255,0,0));
    deck.add(c);
    c = new Card(i*40+30, 90, "pill", i+1, color(255,0,0));
    deck.add(c);
  }
    
  for(int i=0; i < 3; i++){
    c = new Card(i*40+150, 30, "diamond", i+1, color(0,150,0));
    deck.add(c);
    c = new Card(i*40+150, 60, "squiggle", i+1, color(0,150,0));
    deck.add(c);
    c = new Card(i*40+150, 90, "pill", i+1, color(0,150,0));
    deck.add(c);
  }
  
  for(int i=0; i < 3; i++){
    c = new Card(i*40+270, 30, "diamond", i+1, color(150,0,255));
    deck.add(c);
    c = new Card(i*40+270, 60, "squiggle", i+1, color(150,0,255));
    deck.add(c);
    c = new Card(i*40+270, 90, "pill", i+1, color(150,0,255));
    deck.add(c);  
  }
}  

void draw(){
   background(51);
   for(Card c:deck){
     c.update();
     c.show();
   }
   if( selection.size() == 3){
     checkSet(selection);
   }
   //mouseUpdate();
}

//void mouseUpdate(){
//  for(Card d:deck){
//    if(mouseX > d.pos.x && mouseX < d.pos.x+d.wid 
//       && mouseY < d.pos.y+d.high && mouseY > d.pos.y){
//      d.stro = 255;
//    }
//    else d.stro = 0;
//  } 
//}

void mousePressed(){
  for(Card d:deck){
    if(mouseX > d.pos.x - d.wid/2 && mouseX < d.pos.x+d.wid/2 
       && mouseY < d.pos.y+d.high/2 && mouseY > d.pos.y-d.high/2){
      d.selected = !d.selected;
      selection.add(d);
    }
  }  
}

void checkSet(ArrayList<Card> selection){
  boolean sn;
  boolean sc;
  boolean ss;
   if(selection.get(0).number == selection.get(1).number && selection.get(0).number == selection.get(2).number){
     println("Same Number!");
     sn = true;
   }
   if(selection.get(0).col == selection.get(1).col && selection.get(0).col == selection.get(2).col){
     println("Same Color!");
   }
   if(selection.get(0).symbol.equals(selection.get(1).symbol) && selection.get(0).symbol.equals(selection.get(1).symbol)) {
     println("Same Symbol!");
   }
   
   for(Card c: selection){
     c.selected = !c.selected;
   }
   selection.clear();

 }