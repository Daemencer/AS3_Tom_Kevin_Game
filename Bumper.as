package  {
	import flash.display.MovieClip;
    import flash.events.Event;
	
	public class Bumper extends MovieClip{

		public function Bumper(xLocation:int, yLocation:int) {
			x = xLocation;
            y = yLocation;
 
            addEventListener(Event.ENTER_FRAME, loop);
		}
		
		public function loop(e:Event):void{
            //code here
        }
		
		public function removeSelf():void
        {
            removeEventListener(Event.ENTER_FRAME, loop); //stop the loop
            this.parent.removeChild(this); //tell this object's "parent object" to remove this object
        }

	}
	
}
