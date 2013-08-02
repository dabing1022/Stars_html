package
{
	import com.greensock.TweenMax;
	import com.greensock.easing.Back;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Timer;

	public class Anime365 extends Sprite
	{
		private var imgBmpData:BitmapData;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var card:Class;
		private var cardImg:Bitmap;
		
		private static const CENTER_POINT:Point = new Point(385,242);
		private static const SMALL_RADIUS:int = 202;
		private static const BIG_RADIUS:int = 230;
		private static const SMALL_NUM:int = 60;
		private static const BIG_NUM:int = 80;
		
		private var box:Sprite;
		private var bigOPath:Vector.<Point>;
		private var smallOPath:Vector.<Point>;
		private var lEyePath:Vector.<Point>;
		private var rEyePath:Vector.<Point>;
		private var mouthPath:Vector.<Point>;
		private var imgNum:int;
		private var imgVec:Vector.<Bitmap>;
		private var timer:Timer;
		
		public static var cardX:int = 250;
		public static var cardY:int = 468;
		public function Anime365()
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		}
		
		protected function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
			init();
		}
		
		private function init():void{
			box = new Sprite();
			imgBmpData = ImageData.getInstance().imageData;
			imgVec = new Vector.<Bitmap>();
			imgNum = SMALL_NUM + BIG_NUM;
			
			bigOPath = new Vector.<Point>();
			smallOPath = new Vector.<Point>();
			makeUpCirclePath();
			initEyeAndMouthPath();
			
			imgNum += lEyePath.length;
			imgNum += rEyePath.length;
			imgNum += mouthPath.length;
			
			randomMakeUp();
			
			cardImg = new card();
			addChild(cardImg);
			cardImg.alpha = 0;
			cardImg.x = cardX;
			cardImg.y = cardY;
			
			timer = new Timer(800,1);
			timer.addEventListener(TimerEvent.TIMER,startAnime);
			timer.start();
			
		}
		
		protected function startAnime(event:TimerEvent):void
		{
			animeItems();
		}
		
		private function animeItems():void
		{
			var a:int = BIG_NUM;
			var b:int = BIG_NUM + SMALL_NUM;
			var c:int = b + lEyePath.length;
			var d:int = c + rEyePath.length;
			for(var i:uint = 0;i<imgNum;i++){
				var bmp:Bitmap = imgVec[i];
				if(i<a){
					TweenMax.to(bmp,4,{x:bigOPath[i].x,y:bigOPath[i].y});
				}else if(i<b){
					TweenMax.to(bmp,4,{x:smallOPath[i-a].x,y:smallOPath[i-a].y});
				}else if(i<c){
					TweenMax.to(bmp,4,{x:lEyePath[i-b].x,y:lEyePath[i-b].y});
				}else if(i<d){
					TweenMax.to(bmp,4,{x:rEyePath[i-c].x,y:rEyePath[i-c].y});
				}else{
					TweenMax.to(bmp,4,{x:mouthPath[i-d].x,y:mouthPath[i-d].y});
				}
			}
			TweenMax.to(cardImg,4,{autoAlpha:1.0});
			
		}
		
		private function randomMakeUp():void
		{
			for(var i:uint = 0;i<imgNum;i++){
				var img:Bitmap = new Bitmap(imgBmpData);
				img.x = Math.random() * (DataPool.WIDTH - imgBmpData.width);
				img.y = Math.random() * (DataPool.HEIGHT - imgBmpData.width);
				box.addChild(img);
				imgVec[i] = img;
			}
			addChild(box);
			box.y = -10;
		}
		
		private function initEyeAndMouthPath():void
		{
			lEyePath = new Vector.<Point>();
			lEyePath.push(new Point(257,163));
			lEyePath.push(new Point(274,178));
			lEyePath.push(new Point(294,185));
			lEyePath.push(new Point(315,184));
			lEyePath.push(new Point(333,179));
			lEyePath.push(new Point(350,169));
			
			rEyePath = new Vector.<Point>();
			rEyePath.push(new Point(420,163));
			rEyePath.push(new Point(437,178));
			rEyePath.push(new Point(457,185));
			rEyePath.push(new Point(478,184));
			rEyePath.push(new Point(496,179));
			rEyePath.push(new Point(513,169));
			
			mouthPath = new Vector.<Point>();
			mouthPath.push(new Point(279,304));
			mouthPath.push(new Point(290,319));
			mouthPath.push(new Point(306,331));
			mouthPath.push(new Point(322,343));
			mouthPath.push(new Point(342,351));
			mouthPath.push(new Point(360,356));
			mouthPath.push(new Point(379,356));
			mouthPath.push(new Point(396,356));
			mouthPath.push(new Point(417,352));
			mouthPath.push(new Point(439,348));
			mouthPath.push(new Point(454,338));
			mouthPath.push(new Point(471,330));
			mouthPath.push(new Point(484,316));
			mouthPath.push(new Point(493,302));
		}
		
		private function makeUpCirclePath():void
		{
			var uintAngleForBig:Number = Math.PI * 2 / BIG_NUM;
			var unitAngleForSmall:Number = Math.PI * 2 / SMALL_NUM;
			for(var i:uint = 0;i < BIG_NUM;i++){
				var point1:Point = new Point(CENTER_POINT.x + Math.cos(uintAngleForBig * i) * BIG_RADIUS,CENTER_POINT.y + Math.sin(uintAngleForBig * i) * BIG_RADIUS);
				bigOPath.push(point1);
			}
			
			for(var j:uint = 0;j < SMALL_NUM;j++){
				var point2:Point = new Point(CENTER_POINT.x + Math.cos(unitAngleForSmall * j) * SMALL_RADIUS,CENTER_POINT.y + Math.sin(unitAngleForSmall * j) * SMALL_RADIUS);
				smallOPath.push(point2);
			}
		}
	}
}