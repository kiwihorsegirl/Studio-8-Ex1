Garden g;


void setup()
{
  size(800, 600);

  g = new Garden();
  
}

void draw()
{
  background(245);
  // draw the garden
  g.drawGarden();
}

void mousePressed()
{
  g.handleClick(mouseX, mouseY); 
}

void keyPressed()
{
  if(key == 'b')
  {
    // create a bench
    g.addBench(mouseX,mouseY,(int)random(50, 100), 10, #744813); 
  }
  else if(key == 'p')
  {
    // create a plan
    g.addPlant(mouseX,mouseY, (int)random(20,80), #1C7E4E);
  }
  else if(key == 'g')
  {
    // grow the plants
    g.growGarden(); 
  }
}
