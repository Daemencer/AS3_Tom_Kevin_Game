package  {
	import flash.display.MovieClip;
    import flash.events.Event;	
	
	public class Enemy extends MovieClip {
		
		private var xSpeedConst:int = 2;
		private var flip:int = 0;

		public function Enemy(xLocation:int, yLocation:int, direct:int) {
			x = xLocation;
            y = yLocation;
			flip = direct;
 
            addEventListener(Event.ENTER_FRAME, loop);
		}
		
		public function loop(e:Event):void {
            if ((flip%2) == 1){
                x += xSpeedConst;
            } else if((flip%2) == 0){
                x += (-xSpeedConst);
            }
        }
		
		public function removeSelf():void
        {
            removeEventListener(Event.ENTER_FRAME, loop); //stop the loop
            this.parent.removeChild(this); //tell this object's "parent object" to remove this object
        }
		
		public function changeDirection():void{
            flip++;
        }

	}
	
}
