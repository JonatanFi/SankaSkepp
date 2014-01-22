package  
{
	import flash.display.Sprite;	
	/**
	 * ...
	 * @author Jonatan Finsberg
	 */
	public class TileClass extends Sprite
	{
		//Main = starta prg = init = skapa tiles
		//TileClass = rita grafik
		//Main = Key Down Listener = tryck space = nollställa alla tiles
		//TileClass = Rita vatten, nollställa variabler
		
		public static const TILE_SIDE:int = 45;
		private var ship:Boolean = false;
		
		public function TileClass() 
		{	
			this.graphics.clear();
			this.graphics.beginFill (0x0080FF);
			this.graphics.drawRect (0, 0, TILE_SIDE, TILE_SIDE);
			this.graphics.endFill();
		}	
		
		public function clicked():void
		{
			if (this.ship = true)
			{
				this.graphics.clear();
				this.graphics.beginFill (0x00FF00);
				this.graphics.drawRect (0, 0, TILE_SIDE, TILE_SIDE);
				this.graphics.endFill();
			}
			
			else 
			{
			this.graphics.clear();
			this.graphics.beginFill (0xFF0000);
			this.graphics.drawRect (0, 0, TILE_SIDE, TILE_SIDE);
			this.graphics.endFill();
			}
			
		}
		
		public function resetted():void 
		{
			this.graphics.clear();
			this.graphics.beginFill (0x0080FF);
			this.graphics.drawRect (0, 0, TILE_SIDE, TILE_SIDE);
			this.graphics.endFill();		
		}
	}
}