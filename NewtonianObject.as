package{
	import flash.display.Shape //ultimately NewtonianObject is a subclass of the shape class
	import flash.events.Event
	public class NewtonianObject extends Shape{
		
		public var netVel:Vector.<Number> = new Vector.<Number>(2) //publicly accessible (x,y) velocity components for NewtonianObject class
		public var pos:Vector.<Number> = new Vector.<Number>(3) //x and y positions
		//public var string:String = "Hello World"
		public var  radius:Number ,mass:Number
		
		var g:Number
		public function NewtonianObject(m:Number = 1,r:Number = 15){//constructor
			mass = m 
			radius = r
			g = m/Math.pow(r,2)
			//trace("Constructor function dimensions NewtonianObject \nmass:", mass, "\nradius:", radius, "\nLocal gravity:",g)
		}//contrutor function ends
		
		public function start(){//initiates motion
			this.addEventListener(Event.ENTER_FRAME,tickTock)
		}
		public function stop(){
			this.removeEventListener(Event.ENTER_FRAME,tickTock);
		}
		
		//protected var counter:int
		protected function tickTock(e:Event){ //executed every frame change
			this.x += netVel[0]
			this.y += netVel[1]//always moves shape at vectors assigned, any change to this will change how they move in a given direction
			pos[0] += netVel[0]
			pos[1] += netVel[1]
			pos[2] = pos[0]
		}//function ends
		
	}//class ends
}//package ends