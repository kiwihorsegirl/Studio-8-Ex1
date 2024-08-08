abstract class GardenObject
{
  protected PVector _centre;
  protected color _objColor;
  protected boolean _isSelected;
  protected color _selectedColor;
  
  public GardenObject(int x, int y, color objColor) {
    
    _centre = new PVector(x, y);
    _objColor = objColor;
    _isSelected = false;
    _selectedColor = #E31B36;
  }
  
  public abstract void drawObject();
  
  public abstract boolean isClicked(int x, int y);
  
  public void deselectObject() {
    _isSelected = false;
  }
  
  public void moveObject(int x, int y) {
    
    _centre.x = x;
    _centre.y = y;
    
    //_centre = new PVector(x, y);
  }
  
}
