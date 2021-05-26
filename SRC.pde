Table table;


void setup() {
  size(600, 600);


  table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv", "header");

  println(table.getRowCount() + " total rows in table");

    int x=0,y,w,h;

  for (TableRow row : table.rows()) {

    int deaths = row.getInt("deaths");
    String state = row.getString("state");
    int cases = row.getInt("cases");



    w=1;
    x=x+w;
    y=height;
    h = -cases;

    if(!state.equals("Pennsylvania") && !state.equals("Ohio")&& !state.equals("Indiana") && !state.equals("Illinois")&& !state.equals("Iowa")&& !state.equals("Michigan")&& !state.equals("Wisconsin")&& !state.equals("Minnesota")&& !state.equals("Connecticut")&& !state.equals("Maine")&& !state.equals("Massachusetts")&& !state.equals("New Hampshire")&& !state.equals("Rhode island")&& !state.equals("Vermont") && !state.equals("South Dakota") && !state.equals("North Dakota"))continue;
    rect(x,y,w,h*5);
    if(x==600)break;
    
   tekst Tekst = new tekst(state);
   Tekst.SkrivTekst();
  }
}
