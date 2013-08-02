package
{
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class L1314 extends Sprite
	{
		private var path1:Vector.<Point>;
		private var path2:Vector.<Point>;
		private var path3:Vector.<Point>;
		private var path5:Vector.<Point>;
		private var path6:Vector.<Point>;
		private var path7:Vector.<Point>;
		private var path8:Vector.<Point>;
		private var path9:Vector.<Point>;
		private var path10:Vector.<Point>;
		private var path11:Vector.<Point>;
		private var path12:Vector.<Point>;
		private var path13:Vector.<Point>;
		private var path14:Vector.<Point>;
		private var path15:Vector.<Point>;
		private var path16:Vector.<Point>;
		private var path17:Vector.<Point>;
		private var path18:Vector.<Point>;
		private var path19:Vector.<Point>;
		
		[Embed(source="../png/1314Bg.png")]
		private static var Bg:Class;
		private var bgImg:Bitmap;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var Card:Class;
		private var cardImg:Bitmap;
		
		public static var cardX:int = 283;
		public static var cardY:int = 382;
		public function L1314()
		{
           	bgImg = new Bg();
			addChild(bgImg);
			bgImg.smoothing = true;
			bgImg.y = 130;
			
			path1 = new Vector.<Point>();
            path1.push(new Point(14,272));
            path1.push(new Point(228,272));
            path1.push(new Point(228,272));
            addChild(new Item(path1,20,25));

            path2 = new Vector.<Point>();
            path2.push(new Point(14,298));
            path2.push(new Point(228,298));
            path2.push(new Point(228,298));
            addChild(new Item(path2,20,25));

            path3 = new Vector.<Point>();
            path3.push(new Point(207,170));
			path3.push(new Point(182,243));
			path3.push(new Point(157,240));
			path3.push(new Point(177,220));
            path3.push(new Point(183,195));
            path3.push(new Point(182,171));
            path3.push(new Point(182,171));
            addChild(new Item(path3,20,500));

            path5 = new Vector.<Point>();
			path5.push(new Point(255,145));
            path5.push(new Point(255,170));
            path5.push(new Point(282,170));
            path5.push(new Point(282,145));
			path5.push(new Point(282,145));
            addChild(new Item(path5,20,35));

            path6 = new Vector.<Point>();
            path6.push(new Point(201,196));
            path6.push(new Point(336,196));
            path6.push(new Point(336,196));
            addChild(new Item(path6,20,25));

            path7 = new Vector.<Point>();
            path7.push(new Point(201,222));
            path7.push(new Point(336,222));
            path7.push(new Point(336,222));
            addChild(new Item(path7,20,25));

            path8 = new Vector.<Point>();
            path8.push(new Point(255,246));
            path8.push(new Point(255,347));
            path8.push(new Point(149,347));
            path8.push(new Point(149,347));
            addChild(new Item(path8,20,25));

            path9 = new Vector.<Point>();
            path9.push(new Point(282,246));
            path9.push(new Point(282,347));
            path9.push(new Point(388,347));
            path9.push(new Point(388,347));
            addChild(new Item(path9,20,25));

            path10 = new Vector.<Point>();
            path10.push(new Point(149,373));
            path10.push(new Point(388,373));
            path10.push(new Point(388,373));
            addChild(new Item(path10,20,25));

            path11 = new Vector.<Point>();
            path11.push(new Point(309,272));
            path11.push(new Point(546,272));
            path11.push(new Point(546,272));
            addChild(new Item(path11,20,25));

            path12 = new Vector.<Point>();
            path12.push(new Point(309,298));
            path12.push(new Point(546,298));
            path12.push(new Point(546,298));
            addChild(new Item(path12,20,25));

            path13 = new Vector.<Point>();
            path13.push(new Point(627,271));
            path13.push(new Point(627,297));
            path13.push(new Point(627,297));
            addChild(new Item(path13,20,35));

            path14 = new Vector.<Point>();
            path14.push(new Point(573,246));
            path14.push(new Point(573,447));
            path14.push(new Point(816,447));
            path14.push(new Point(816,447));
            addChild(new Item(path14,20,23));

            path15 = new Vector.<Point>();
            path15.push(new Point(600,246));
            path15.push(new Point(600,421));
            path15.push(new Point(816,421));
            path15.push(new Point(816,421));
            addChild(new Item(path15,20,23));

            path16 = new Vector.<Point>();
            path16.push(new Point(654,222));
            path16.push(new Point(654,373));
            path16.push(new Point(790,373));
            path16.push(new Point(790,222));
            path16.push(new Point(790,222));
            addChild(new Item(path16,20,23));

            path17 = new Vector.<Point>();
            path17.push(new Point(681,222));
            path17.push(new Point(680,349));
            path17.push(new Point(762,349));
            path17.push(new Point(762,222));
            path17.push(new Point(762,222));
            addChild(new Item(path17,20,23));

            path18 = new Vector.<Point>();
            path18.push(new Point(708,272));
            path18.push(new Point(708,298));
            path18.push(new Point(735,298));
            path18.push(new Point(735,272));
            path18.push(new Point(735,272));
            addChild(new Item(path18,20,20));

            path19 = new Vector.<Point>();
            path19.push(new Point(816,272));
            path19.push(new Point(816,298));
            path19.push(new Point(816,298));
            addChild(new Item(path19,20,25));
			
			cardImg = new Card();
			addChild(cardImg);
			cardImg.smoothing = true;
			cardImg.x = cardX;
			cardImg.y = cardY;
			cardImg.alpha = 0;
			TweenMax.to(cardImg,4,{delay:2,autoAlpha:1.0});
		}
	}
}
