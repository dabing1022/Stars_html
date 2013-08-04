package
{
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.geom.Point;
	import flash.utils.Timer;
	import flash.utils.getDefinitionByName;
	
	import org.osmf.events.TimeEvent;
	
	public class LRandomGif extends Sprite
	{
		private var randomHolder:Sprite;
		private var picNum:int;
		private var gifID:String;
		private var GifClass:Class;
		private var timer:Timer;
		private const LIFE_TIME:int = 4500;
		public static var cardX:int = 250;
		public static var cardY:int = 419;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var card:Class;
		private var cardImg:Bitmap;
		public function LRandomGif(picNum:int, gifID:String):void
		{
			this.picNum = picNum;
			this.gifID = gifID;
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);		
			ExternalInterface.call("trace", "进入LRandomGif onStage");
			var className:String = "Daoju" + this.gifID;
			GifClass = getDefinitionByName(className) as Class;
			randomHolder = new Sprite();
			for(var i:int = 0;i < this.picNum;i++){
				var gifMc:MovieClip = new GifClass();
				gifMc.x = Math.random() * (DataPool.WIDTH - gifMc.width);
				gifMc.y = Math.random() * (DataPool.HEIGHT - gifMc.height);
				randomHolder.addChild(gifMc);
			}			
			addChild(randomHolder);
			
			cardImg = new card();
			addChild(cardImg);
			cardImg.smoothing = true;
			cardImg.x = cardX;
			cardImg.y = cardY;
			cardImg.alpha = 0;
			TweenMax.to(cardImg,3,{delay:0.5,autoAlpha:1.0});
			
			timer = new Timer(LIFE_TIME, 1);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, killSelf);
			timer.start();
		}
		
		private function killSelf(event:TimerEvent):void
		{
			this.parent.removeChild(this);
			timer.removeEventListener(TimerEvent.TIMER_COMPLETE, killSelf);
			ExternalInterface.call("trace", "killSelfkillSelf");
		}
	}
}