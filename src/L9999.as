package
{
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class L9999 extends Sprite
	{
		private var bigHeartPath:Vector.<Point>;
		private var bigHeart:Sprite;
		
		private var smallHeartPath:Vector.<Point>;
		private var smallHeart:Sprite;
		
		[Embed(source="../png/9999Bg.png")]
		private static var bg:Class;
		private var bgImg:Bitmap;
		private var bgBox:Sprite;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var card:Class;
		private var cardImg:Bitmap;
		
		public static var cardX:int = 250;
		public static var cardY:int = 419;
		public function L9999()
		{
			bgImg = new bg();
			bgImg.smoothing = true;
			bgBox = new Sprite();
			bgBox.addChild(bgImg);
			bgImg.x = -bgImg.width >>1;
			bgImg.y = -bgImg.height >>1;
			addChild(bgBox);
			bgBox.x = DataPool.WIDTH >>1;
			bgBox.y = 220;
			bgBox.alpha = 0;
			bgBox.scaleX = bgBox.scaleY = 0.1;
			TweenMax.to(bgBox,3,{delay:0.5,scaleX:1,autoAlpha:1,scaleY:1});
			
			bigHeart = new Sprite();
			bigHeartPath = new Vector.<Point>();
			bigHeartPath.push(new Point(156,122));
			bigHeartPath.push(new Point(175,103));
			bigHeartPath.push(new Point(198,87 ));
			bigHeartPath.push(new Point(224,76 ));
			bigHeartPath.push(new Point(251,72 ));
			bigHeartPath.push(new Point(278,75 ));
			bigHeartPath.push(new Point(303,84 ));
			bigHeartPath.push(new Point(322,100 ));
			bigHeartPath.push(new Point(349,94 ));
			bigHeartPath.push(new Point(374,80 ));
			bigHeartPath.push(new Point(401,74 ));
			bigHeartPath.push(new Point(427,71 ));
			bigHeartPath.push(new Point(454,73 ));
			bigHeartPath.push(new Point(479,80 ));
			bigHeartPath.push(new Point(500,97 ));
			bigHeartPath.push(new Point(510,119 ));
			bigHeartPath.push(new Point(527,96 ));
			bigHeartPath.push(new Point(548,79 ));
			bigHeartPath.push(new Point(575,69 ));
			bigHeartPath.push(new Point(602,69 ));
			bigHeartPath.push(new Point(629,73 ));
			bigHeartPath.push(new Point(652,88 ));
			bigHeartPath.push(new Point(667,108 ));
			bigHeartPath.push(new Point(654,277 ));
			bigHeartPath.push(new Point(638,297 ));
			bigHeartPath.push(new Point(616,315 ));
			bigHeartPath.push(new Point(596,333 ));
			bigHeartPath.push(new Point(578,351 ));
			bigHeartPath.push(new Point(557,368 ));
			bigHeartPath.push(new Point(538,388 ));
			bigHeartPath.push(new Point(519,408 ));
			bigHeartPath.push(new Point(494,423 ));
			bigHeartPath.push(new Point(470,411 ));
			bigHeartPath.push(new Point(453,390 ));
			bigHeartPath.push(new Point(435,370 ));
			bigHeartPath.push(new Point(413,353 ));
			bigHeartPath.push(new Point(396,370 ));
			bigHeartPath.push(new Point(379,389 ));
			bigHeartPath.push(new Point(359,408 ));
			bigHeartPath.push(new Point(335,421 ));
			bigHeartPath.push(new Point(312,411 ));
			bigHeartPath.push(new Point(292,393 ));
			bigHeartPath.push(new Point(274,373 ));
			bigHeartPath.push(new Point(258,352 ));
			bigHeartPath.push(new Point(240,334 ));
			bigHeartPath.push(new Point(220,316 ));
			bigHeartPath.push(new Point(201,298));
			bigHeartPath.push(new Point(201,298));
			bigHeart.addChild(new Item(bigHeartPath,150,1000));
			addChild(bigHeart);
			
			smallHeart = new Sprite();
			smallHeartPath = new Vector.<Point>();
			smallHeartPath.push(new Point(181,134));
			smallHeartPath.push(new Point(200,114));
			smallHeartPath.push(new Point(222,100));
			smallHeartPath.push(new Point(247,96));
			smallHeartPath.push(new Point(273,101));
			smallHeartPath.push(new Point(297,111));
			smallHeartPath.push(new Point(315,129));
			smallHeartPath.push(new Point(330,148));
			smallHeartPath.push(new Point(348,127));
			smallHeartPath.push(new Point(368,111));
			smallHeartPath.push(new Point(392,100));
			smallHeartPath.push(new Point(418,97));
			smallHeartPath.push(new Point(444,98));
			smallHeartPath.push(new Point(467,106));
			smallHeartPath.push(new Point(485,122));
			smallHeartPath.push(new Point(496,142));
			smallHeartPath.push(new Point(507,158));
			smallHeartPath.push(new Point(523,139));
			smallHeartPath.push(new Point(534,120));
			smallHeartPath.push(new Point(552,105));
			smallHeartPath.push(new Point(575,95));
			smallHeartPath.push(new Point(601,95));
			smallHeartPath.push(new Point(625,104));
			smallHeartPath.push(new Point(640,119));
			smallHeartPath.push(new Point(625,273));
			smallHeartPath.push(new Point(605,291));
			smallHeartPath.push(new Point(585,307));
			smallHeartPath.push(new Point(567,325));
			smallHeartPath.push(new Point(545,342));
			smallHeartPath.push(new Point(527,362));
			smallHeartPath.push(new Point(510,379));
			smallHeartPath.push(new Point(495,396));
			smallHeartPath.push(new Point(479,378));
			smallHeartPath.push(new Point(462,360));
			smallHeartPath.push(new Point(444,343));
			smallHeartPath.push(new Point(427,326));
			smallHeartPath.push(new Point(405,325));
			smallHeartPath.push(new Point(388,343));
			smallHeartPath.push(new Point(369,360));
			smallHeartPath.push(new Point(353,380));
			smallHeartPath.push(new Point(335,395));
			smallHeartPath.push(new Point(315,381));
			smallHeartPath.push(new Point(299,361));
			smallHeartPath.push(new Point(283,341));
			smallHeartPath.push(new Point(266,322));
			smallHeartPath.push(new Point(248,303));
			smallHeartPath.push(new Point(228,287));
			smallHeartPath.push(new Point(228,287));
			smallHeart.addChild(new Item(smallHeartPath,150,1000));
			addChild(smallHeart);
			
			cardImg = new card();
			addChild(cardImg);
			cardImg.smoothing = true;
			cardImg.x = cardX;
			cardImg.y = cardY;
			cardImg.alpha = 0;
			TweenMax.to(cardImg,4,{delay:2,autoAlpha:1.0});
			
			
			var star1:MovieClip = new StarTwinkle();
//			var star2:MovieClip = new StarTwinkle();
			var star3:MovieClip = new StarTwinkle();
			var star4:MovieClip = new StarTwinkle();
			var star5:MovieClip = new StarTwinkle();
			var star6:MovieClip = new StarTwinkle();
			addChild(star1);
//			addChild(star2);
			addChild(star3);
			addChild(star4);
			addChild(star5);
			addChild(star6);
			
			star1.x = 176;
			star1.y = 172;
			star1.scaleX = star1.scaleY = 0.5;
//			star2.x = 147;
//			star2.y = 244;
//			star2.scaleX = star2.scaleY = 0.6;
			star3.x = 325;
			star3.y = 268;
			star3.scaleX = star3.scaleY = 0.8;
			star4.x = 465;
			star4.y = 125;
			star4.scaleX = star4.scaleY = 0.5;
			star5.x = 545;
			star5.y = 343;
			star5.scaleX = star5.scaleY = 0.7;
			star6.x = 680;
			star6.y = 180;
			star6.scaleX = star6.scaleY = 0.4;
		}
	}
}