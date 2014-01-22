package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Jonatan Finsberg
	 */
	public class Main extends Sprite 
	{
		
		//Steg 1: KLAR - 10x10 spelplan. Klicka på ruta = försvinner/byter färg + ett poäng. Space = nollställs
			//KLAR - 10x10 Spelplan - vector[vector[]] v[2][2] Tile (3;3), for-loopception, 
			//KLAR - Klicka på ruta = försvinner/byter färg
			//KLAR - Text med poäng
			//Kolla alla namn
			//Kommentera allt
		//Steg 2: Tile-klass med vatten/miss/träff. En Tile stor båt.
			//KLAR - Tile-klass
			//En Tile är båt
			//Space = nollställs
		//Steg 3: Tre Tiles på rad är en båt. Var som helst, men på planen. Horisontell/vertikal.
			//
		
		
		//private var map:Vector.<Vector.<Sprite>> = new Vector.<Vector.<Sprite>>(); //The whole map of 10x10 tiles
		public var pointsText:TextField = new TextField(); //Text that will show how many tiles you've removed
		public var points:int = 0; //Number of points if you haven't clicked on any tile
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			
			for (var i:int = 0; i < 10; i++)
			{
				for (var j:int = 0; j < 10; j++)
				{
					var t:TileClass = new TileClass();
					t.x = 50 + j * (TileClass.TILE_SIDE + 3);
					t.y = 50 + i * (TileClass.TILE_SIDE + 3);
					this.addChild(t);
					
					t.addEventListener(MouseEvent.CLICK, clickTile);	
				}
			}
			stage.addEventListener(KeyboardEvent.KEY_DOWN, resetMap); //Pressing down a key will reset the map
			addChild(pointsText); 
			pointsText.text = "Score: 0"; //The text will say that you have no points if you haven't clicked on any tile
			pointsText.x = 600; //Where the text will be on the stage. On the side of the map
		}
		
		
		private function clickTile(e:MouseEvent):void
		{
			TileClass(e.target).clicked();			
			points ++;
			pointsText.text = "Score: " + points;
		}
		
		
		public function resetMap(e:KeyboardEvent):void 
		{
			if (e.keyCode == 32) //The map will be resetted if you press down Space
			{	
				points = 0; //The points return to zero
				pointsText.text = "Score: 0"; //The text indicates that the points have returned to zero
				TileClass(e.).resetted();
			}
		}
	}
}