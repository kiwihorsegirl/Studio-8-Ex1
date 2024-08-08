class Garden
{
  // reference variable
  private GardenObject _selectedObject;
  
  ArrayList<GardenObject> _objList;
  
  public Garden() {
    _objList = new ArrayList<GardenObject>();
    _selectedObject = null;
  }
  
  public void addPlant(int x, int y, int size, color pColor) {
    
    _objList.add(new Plant(x, y, size, pColor));
    
  }
  
  public void addBench(int x, int y, int bWidth, int bHeight, color bColor) {
    
     _objList.add(new Bench(x, y, bWidth, bHeight, bColor));
  }
  
  public void drawGarden() {
    
    for (GardenObject o : _objList) {
       o.drawObject();
    }
    
  }
  
  public void handleClick(int x, int y) {
    if (_selectedObject == null) {
      for (GardenObject o : _objList) {
        if (o.isClicked(x, y) == true) {
          _selectedObject = o;
        }
      }
    } else {
      _selectedObject.moveObject(x, y);
      _selectedObject.deselectObject();
      _selectedObject = null;
    }
    
    
    
  }
  
  public void growGarden() {
    for (GardenObject o : _objList) {
      if (o instanceof Plant) {
        //Plant p = (Plant)o;
        //p.growPlant();
        ((Plant)o).growPlant();
      }
     
    }
  }
  
}
