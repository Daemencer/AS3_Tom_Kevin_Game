package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Bullet extends MovieClip {
		
		private var speed:int = 10;
		private var initialX:int;
		private var maxRange:int = 2000;

		public function Bullet(playerX:int, playerY:int, playerDirection:String, playerSpeed:int) {
			
			if(playerDirection == "left") {
				speed = -30 + playerSpeed
				x = playerX - 25;
			} else if(playerDirection == "right") {
				speed = 30 + playerSpeed;
				x = playerX + 25
			}
			
			y = playerY - 75;
			
			initialX = x;
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		public function loop(e:Event):void {
			x += speed;
			
			if(speed > 0) { //if player is facing right
    			if(x > initialX + maxRange) {
        			removeSelf();
    			}
			} else { //else if player is facing left
    			if(x < initialX - maxRange) {
        			removeSelf();
    			}
			}
		}
		
		public function removeSelf():void {
    		removeEventListener(Event.ENTER_FRAME, loop); //stop the loop
    		this.parent.removeChild(this); //tell this object's "parent object" to remove this object

		}
		
	}
}//just some trololol
