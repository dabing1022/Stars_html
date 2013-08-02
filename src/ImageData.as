package
{
	import flash.display.BitmapData;

	/**图片数据*/
	public class ImageData
	{
		private var _imageData:BitmapData;
		private static var instance:ImageData;
		public function ImageData(p:PrivateClazz)
		{
		}
		
		public static function getInstance():ImageData{
			if(instance == null){
				instance = new ImageData(new PrivateClazz());
			}
			return instance;
		}

		public function get imageData():BitmapData
		{
			return _imageData;
		}

		public function set imageData(value:BitmapData):void
		{
			_imageData = value;
		}

	}
}

class PrivateClazz{}