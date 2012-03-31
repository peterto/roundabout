package
{
	import mx.core.FlexSprite;
	import org.flixel.*;

	public class PlayState extends FlxState
	{
		public function PlayState()
		{
		}

		override public function create():void
		{
			var playerOne = new FlxSprite
			add(playerOne);
			add(new FlxSprite(50, 50));
			
			for (var i:int=0; i<50; i++)
			{
				add(new FlxSprite(Math.random()*320, Math.random()*240));
			}
		}
		
		//override public function update():void
		//{
			//if (FlxG.keys())
			//{
			//
			//}
			//
			//super.update();
		//}
	}
}