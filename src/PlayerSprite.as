package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Peter
	 */
	public class PlayerSprite extends FlxSprite 
	{
		
		public function PlayerSprite(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			
		}
		
		public function movePlayerOne():void {
			if(FlxG.keys.LEFT)
				//playerOne.acceleration.x = -playerOne.maxVelocity.x * 4;
				this.acceleration.x = -this.maxVelocity.x * 4;
			if(FlxG.keys.RIGHT)
				this.acceleration.x = this.maxVelocity.x * 4;
			if(FlxG.keys.UP)
				this.acceleration.y = -this.maxVelocity.y * 4;
			if(FlxG.keys.DOWN)
				this.acceleration.y = this.maxVelocity.y * 4;
			if(FlxG.keys.justPressed("SPACE") && this.isTouching(FlxObject.FLOOR))
				this.velocity.y = -this.maxVelocity.y / 2;
		}
		
		public function movePlayerTwo():void {

			if(FlxG.keys.A)
				this.acceleration.x = -this.maxVelocity.x * 4;
			if(FlxG.keys.D)
				this.acceleration.x = this.maxVelocity.x * 4;
			if(FlxG.keys.W)
				this.acceleration.y = -this.maxVelocity.y * 4;
			if(FlxG.keys.S)
				this.acceleration.y = this.maxVelocity.y * 4;
			//if(this.isTouching(FlxObject.FLOOR))
				//this.velocity.y = -this.maxVelocity.y / 2;
		}
		
	}

}