package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.geom.Point;
	import com.greensock.TweenMax;
	
	public class L520 extends Sprite
	{
		private var bigL:Sprite;
		private var bigLPaths:Vector.<Point>;
		
		private var smallL:Sprite;
		private var smallLPaths:Vector.<Point>;
		
		private var bigO:Sprite;
		private var bigOPath:Vector.<Point>;
		
		private var smallO:Sprite;
		private var smallOPath:Vector.<Point>;
		
		private var bigV:Sprite;
		private var bigVPath:Vector.<Point>;
		
		private var smallV:Sprite;
		private var smallVPath:Vector.<Point>;
		
		private var bigE:Sprite;
		private var bigEPath:Vector.<Point>;
		
		private var smallE:Sprite;
		private var smallEPath:Vector.<Point>;
		
		private var lineE_1:Sprite;
		private var lineEPath_1:Vector.<Point>;
		
		private var lineE_2:Sprite;
		private var lineEPath_2:Vector.<Point>;
		
		[Embed(source="../png/cupidbg_card.png")]
		private static var Card:Class;
		private var cardImg:Bitmap;
		
		public static var cardX:int = 250;
		public static var cardY:int = 330;
		public function L520()
		{	
			bigL = new Sprite();
			bigLPaths = new Vector.<Point>();
			bigLPaths.push(new Point(40,129));
			bigLPaths.push(new Point(40,345));
			bigLPaths.push(new Point(175,345));
			bigLPaths.push(new Point(175,345));
			bigL.addChild(new Item(bigLPaths,10,25));
			addChild(bigL);
			
			smallL = new Sprite();
			smallLPaths = new Vector.<Point>();
			smallLPaths.push(new Point(68,129));
			smallLPaths.push(new Point(68,320));
			smallLPaths.push(new Point(174,320));
			smallLPaths.push(new Point(174,320));
			smallL.addChild(new Item(smallLPaths,10,25));
			addChild(smallL);

			bigO = new Sprite();
			bigOPath = new Vector.<Point>();
			bigOPath.push(new Point(268,154));
			bigOPath.push(new Point(295,155));
			bigOPath.push(new Point(320,163));
			bigOPath.push(new Point(334,183));
			bigOPath.push(new Point(343,205));
			bigOPath.push(new Point(347,228));
			bigOPath.push(new Point(347,253));
			bigOPath.push(new Point(346,277));
			bigOPath.push(new Point(341,301));
			bigOPath.push(new Point(332,325));
			bigOPath.push(new Point(308,341));
			bigOPath.push(new Point(281,347));
			bigOPath.push(new Point(255,346));
			bigOPath.push(new Point(230,338));
			bigOPath.push(new Point(212,320));
			bigOPath.push(new Point(203,298));
			bigOPath.push(new Point(201,274));
			bigOPath.push(new Point(199,250));
			bigOPath.push(new Point(199,226));
			bigOPath.push(new Point(203,202));
			bigOPath.push(new Point(214,178));
			bigOPath.push(new Point(230,162));
			bigOPath.push(new Point(244,158));
			bigOPath.push(new Point(244,158));
			bigO.addChild(new Item(bigOPath,10,50));
			addChild(bigO);
			
			smallO = new Sprite();
			smallOPath = new Vector.<Point>();
			smallOPath.push(new Point(268,178));
			smallOPath.push(new Point(295,182));
			smallOPath.push(new Point(309,197));
			smallOPath.push(new Point(317,216));
			smallOPath.push(new Point(319,240));
			smallOPath.push(new Point(318,264));
			smallOPath.push(new Point(318,288));
			smallOPath.push(new Point(309,312));
			smallOPath.push(new Point(286,322));
			smallOPath.push(new Point(261,323));
			smallOPath.push(new Point(240,313));
			smallOPath.push(new Point(229,291));
			smallOPath.push(new Point(228,269));
			smallOPath.push(new Point(226,246));
			smallOPath.push(new Point(226,223));
			smallOPath.push(new Point(232,202));
			smallOPath.push(new Point(244,186));
			smallOPath.push(new Point(244,186));
			smallO.addChild(new Item(smallOPath,10,50));
			addChild(smallO);
			
			bigV = new Sprite();
			bigVPath = new Vector.<Point>();
			bigVPath.push(new Point(366,152));
			bigVPath.push(new Point(462,345));
			bigVPath.push(new Point(560,152));
			bigVPath.push(new Point(560,152));
			bigV.addChild(new Item(bigVPath,10,25));
			addChild(bigV);
			

			smallV = new Sprite();
			smallVPath = new Vector.<Point>();
			smallVPath.push(new Point(393,152));
			smallVPath.push(new Point(460,306));
			smallVPath.push(new Point(532,152));
			smallVPath.push(new Point(532,152));
			smallV.addChild(new Item(smallVPath,10,25));
			addChild(smallV);
			
			bigE = new Sprite();
			bigEPath = new Vector.<Point>();
			bigEPath.push(new Point(726,147));
			bigEPath.push(new Point(592,147));
			bigEPath.push(new Point(592,345));
			bigEPath.push(new Point(726,345));
			bigEPath.push(new Point(726,345));
			bigE.addChild(new Item(bigEPath,10,25));
			addChild(bigE);

			smallE = new Sprite();
			smallEPath = new Vector.<Point>();
			smallEPath.push(new Point(726,175));
			smallEPath.push(new Point(619,175));
			smallEPath.push(new Point(619,315));
			smallEPath.push(new Point(726,315));
			smallEPath.push(new Point(726,315));
			smallE.addChild(new Item(smallEPath,10,25));
			addChild(smallE);
			
			lineE_1 = new Sprite();
			lineEPath_1 = new Vector.<Point>();
			lineEPath_1.push(new Point(645,230));
			lineEPath_1.push(new Point(726,230));
			lineEPath_1.push(new Point(726,230));
			lineE_1.addChild(new Item(lineEPath_1,10,25));
			addChild(lineE_1);
			
			lineE_2 = new Sprite();
			lineEPath_2 = new Vector.<Point>();
			lineEPath_2.push(new Point(645,258));
			lineEPath_2.push(new Point(726,258));
			lineEPath_2.push(new Point(726,258));
			lineE_2.addChild(new Item(lineEPath_2,10,25));
			addChild(lineE_2);
			
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