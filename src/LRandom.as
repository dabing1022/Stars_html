package
{
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class LRandom extends Sprite
	{
		private var randomHolder:Sprite;
		private var randomPaths:Vector.<Point>;
		
		public function LRandom(picNum:int,imgData:BitmapData)
		{
			randomHolder = new Sprite();
			randomPaths = new Vector.<Point>();
			for(var i:int = 0;i<picNum;i++){
				var point:Point = new Point();
				point.x = Math.random() * (DataPool.WIDTH - imgData.width);
				point.y = Math.random() * (DataPool.HEIGHT - imgData.height); 
				randomPaths.push(point);
			}
		
			randomHolder.addChild(new Item(randomPaths,picNum,200,false));
			addChild(randomHolder);
		}
	}
}