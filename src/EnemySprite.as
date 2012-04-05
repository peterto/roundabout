package  
{
	import org.flixel.FlxGroup;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Peter
	 */
	public class EnemySprite extends FlxSprite 
	{
		private var superEnemy:EnemySprite;
		
		public function EnemySprite(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
		}
		
		//tells the enemy to swarm
		public function swarm():void {
			
			if (!this.isSuper()) {
				
				//if this isn't a super, then check to see what's super
				//then have this EnemySprite swarm around it's super
				
			}
		}
		
		//checks for it's nearest super swarm
		public function checkSuperSwarm():EnemySprite {
			
			var randomX:int = (Math.random() * 4) * 8 + 3;
			var randomY:int = (Math.random() * 4) * 8 + 2;

			var superEnemy:EnemySprite = new EnemySprite(randomX, randomY);
			
			return superEnemy;
		}
		
		//checks to see if it is a "Super"
		public function isSuper():Boolean {
			
			var randomBool:Boolean = Math.random() * 2;
			return randomBool;
		}
		
		public function move():void {
			var randomNum:int;
			randomNum = new int(Math.random() * 4);
					
			if (randomNum == 0)	{
				this.acceleration.x = -this.maxVelocity.x * 4;
			} else if (randomNum == 1) {
				this.acceleration.x = this.maxVelocity.x * 4;
			} else if (randomNum == 2) {
				this.acceleration.y = -this.maxVelocity.y * 4;
			} else {
				this.acceleration.y = this.maxVelocity.y * 4;
			}

		}
		
	}

}