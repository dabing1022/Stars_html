package
{
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.geom.Point;

	public class L5200 extends Sprite
	{
		private var bigHeartPath:Vector.<Point>;
		private var bigHeart:Sprite;
		
		private var smallHeartPath:Vector.<Point>;
		private var smallHeart:Sprite;
		
		private var arrowPath:Vector.<Point>;
		private var arrow:Sprite;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var card:Class;
		private var cardImg:Bitmap;
		
		public static var cardX:int = 260;
		public static var cardY:int = 390;
		public function L5200()
		{
			bigHeart = new Sprite();
			bigHeartPath = new Vector.<Point>();
			bigHeartPath.push(new Point(389,122));
			bigHeartPath.push(new Point(410,109));
			bigHeartPath.push(new Point(431,97));
			bigHeartPath.push(new Point(457,89));
			bigHeartPath.push(new Point(483,87));
			bigHeartPath.push(new Point(507,94));
			bigHeartPath.push(new Point(530,106));
			bigHeartPath.push(new Point(549,123));
			bigHeartPath.push(new Point(558,146));
			bigHeartPath.push(new Point(566,170));
			bigHeartPath.push(new Point(569,194));
			bigHeartPath.push(new Point(569,218));
			bigHeartPath.push(new Point(563,242));
			bigHeartPath.push(new Point(550,265));
			bigHeartPath.push(new Point(532,283));
			bigHeartPath.push(new Point(510,299));
			bigHeartPath.push(new Point(487,313));
			bigHeartPath.push(new Point(465,328));
			bigHeartPath.push(new Point(445,345));
			bigHeartPath.push(new Point(426,363));
			bigHeartPath.push(new Point(410,384));
			bigHeartPath.push(new Point(387,395));
			bigHeartPath.push(new Point(362,384));
			bigHeartPath.push(new Point(349,363));
			bigHeartPath.push(new Point(331,344));
			bigHeartPath.push(new Point(310,328));
			bigHeartPath.push(new Point(288,313));
			bigHeartPath.push(new Point(266,298));
			bigHeartPath.push(new Point(244,282));
			bigHeartPath.push(new Point(226,262));
			bigHeartPath.push(new Point(214,239));
			bigHeartPath.push(new Point(211,214));
			bigHeartPath.push(new Point(211,190));
			bigHeartPath.push(new Point(216,165));
			bigHeartPath.push(new Point(225,136));
			bigHeartPath.push(new Point(242,115));
			bigHeartPath.push(new Point(263,98));
			bigHeartPath.push(new Point(289,91));
			bigHeartPath.push(new Point(318,89));
			bigHeartPath.push(new Point(344,92));
			bigHeartPath.push(new Point(367,106));
			bigHeartPath.push(new Point(367,106));
			bigHeart.addChild(new Item(bigHeartPath,50,100));
			addChild(bigHeart);
			bigHeart.x = 30;
			bigHeart.y = 10;
			
			smallHeart = new Sprite();
			smallHeartPath = new Vector.<Point>();
			smallHeartPath.push(new Point(391,171));
			smallHeartPath.push(new Point(407,148));
			smallHeartPath.push(new Point(426,127));
			smallHeartPath.push(new Point(449,116));
			smallHeartPath.push(new Point(476,112));
			smallHeartPath.push(new Point(502,120));
			smallHeartPath.push(new Point(523,136));
			smallHeartPath.push(new Point(535,159));
			smallHeartPath.push(new Point(543,183));
			smallHeartPath.push(new Point(543,207));
			smallHeartPath.push(new Point(537,230));
			smallHeartPath.push(new Point(525,252));
			smallHeartPath.push(new Point(506,270));
			smallHeartPath.push(new Point(484,286));
			smallHeartPath.push(new Point(461,300));
			smallHeartPath.push(new Point(440,315));
			smallHeartPath.push(new Point(419,332));
			smallHeartPath.push(new Point(402,349));
			smallHeartPath.push(new Point(386,369));
			smallHeartPath.push(new Point(374,347));
			smallHeartPath.push(new Point(357,328));
			smallHeartPath.push(new Point(336,313));
			smallHeartPath.push(new Point(314,299));
			smallHeartPath.push(new Point(292,284));
			smallHeartPath.push(new Point(269,270));
			smallHeartPath.push(new Point(252,250));
			smallHeartPath.push(new Point(241,228));
			smallHeartPath.push(new Point(238,204));
			smallHeartPath.push(new Point(240,181));
			smallHeartPath.push(new Point(247,156));
			smallHeartPath.push(new Point(259,134));
			smallHeartPath.push(new Point(281,119));
			smallHeartPath.push(new Point(308,116));
			smallHeartPath.push(new Point(335,118));
			smallHeartPath.push(new Point(359,131));
			smallHeartPath.push(new Point(376,150));
			smallHeartPath.push(new Point(376,150));
			smallHeart.addChild(new Item(smallHeartPath,50,100));
			addChild(smallHeart);
			smallHeart.x = 30;
			smallHeart.y = 10;
			
			arrowPath = new Vector.<Point>();
			arrow = new Sprite();
			arrowPath.push(new Point(121,138));
			arrowPath.push(new Point(108,116));
			arrowPath.push(new Point(96 ,95));
			arrowPath.push(new Point(87 ,70));
			arrowPath.push(new Point(114, 68));
			arrowPath.push(new Point(140, 68));
			arrowPath.push(new Point(165, 68));
			arrowPath.push(new Point(155, 93));
			arrowPath.push(new Point(179,106));
			arrowPath.push(new Point(204,120));
			arrowPath.push(new Point(227,133));
			arrowPath.push(new Point(562,322));
			arrowPath.push(new Point(585,335));
			arrowPath.push(new Point(608,348));
			arrowPath.push(new Point(631,361));
			arrowPath.push(new Point(655,375));
			arrowPath.push(new Point(679,388));
			arrowPath.push(new Point(702,401));
			arrowPath.push(new Point(719,412));
			arrowPath.push(new Point(137,114));
			arrowPath.push(new Point(155,124));
			arrowPath.push(new Point(177,137));
			arrowPath.push(new Point(200,150));
			arrowPath.push(new Point(223,163));
			arrowPath.push(new Point(537,340));
			arrowPath.push(new Point(561,353));
			arrowPath.push(new Point(584,366));
			arrowPath.push(new Point(608,380));
			arrowPath.push(new Point(631,393));
			arrowPath.push(new Point(655,406));
			arrowPath.push(new Point(679,420));
			arrowPath.push(new Point(703,434));
			arrowPath.push(new Point(703,434));
			arrow.addChild(new Item(arrowPath,100,1000));
			addChild(arrow);
			
			
			cardImg = new card();
			addChild(cardImg);
			cardImg.smoothing = true;
			cardImg.x = cardX;
			cardImg.y = cardY;
			cardImg.alpha = 0;
			TweenMax.to(cardImg,4,{delay:2,autoAlpha:1.0});
		}
	}
}
