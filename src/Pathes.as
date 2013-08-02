package
{
	import flash.geom.Point;

	public class Pathes
	{
		private static var instance:Pathes;
		private var _starPaths:Vector.<Point>;
		public function Pathes(p:PrivateClazz){
			init();
		}
		
		private function init():void{
			_starPaths = new Vector.<Point>();
			_starPaths.push(new Point(344,222));
			_starPaths.push(new Point(367,213));
			_starPaths.push(new Point(383,201));
			_starPaths.push(new Point(401,196));
			_starPaths.push(new Point(420,207));
			_starPaths.push(new Point(432,220));
			_starPaths.push(new Point(437,236));
			_starPaths.push(new Point(437,254));
			_starPaths.push(new Point(433,273));
			_starPaths.push(new Point(423,288));
			_starPaths.push(new Point(408,304));
			_starPaths.push(new Point(391,316));
			_starPaths.push(new Point(373,326));
			_starPaths.push(new Point(355,341));
			_starPaths.push(new Point(339,354));
			_starPaths.push(new Point(314,341));
			_starPaths.push(new Point(294,326));
			_starPaths.push(new Point(281,316));
			_starPaths.push(new Point(267,304));
			_starPaths.push(new Point(253,288));
			_starPaths.push(new Point(243,273));
			_starPaths.push(new Point(240,254));
			_starPaths.push(new Point(241,236));
			_starPaths.push(new Point(249,220));
			_starPaths.push(new Point(264,206));
			_starPaths.push(new Point(283,196));
			_starPaths.push(new Point(315,205));
			_starPaths.push(new Point(344,222));
		}
		
		public static function getInstance():Pathes{
			if(instance == null){
				instance = new Pathes(new PrivateClazz());
			}
			return instance;
		}

		public function get starPaths():Vector.<Point>
		{
			return _starPaths;
		}

	}
}

class PrivateClazz{}

