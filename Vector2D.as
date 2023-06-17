public function Vector2D(valueX:Number, valueY:Number) 
{
    this._x = valueX;
    this._y = valueY;
}
public function set vecX(valueX:Number):void
{
    this._x = valueX;
}
public function get vecX():Number
{
    return this._x
}
public function set vecY(valueY:Number):void
{
    this._y = valueY;
}
public function get vecY():Number
{
    return this._y
}
public function setVector(valueX:Number, valueY:Number):void
{
    this._x = valueX;
    this._y = valueY;
}
public function reset():void
{
    this._x = 0;
    this._y = 0;
}