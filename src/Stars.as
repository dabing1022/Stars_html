package
{
	import com.greensock.TweenMax;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.geom.Point;
	import flash.net.URLRequest;
	import flash.system.Security;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.utils.Timer;
	
	[SWF(width="900",height="650")]
	public class Stars extends Sprite
	{
		private static const VERSION:String = "1.2";
		//显示形状类型
		public static const TRandom:String = "1";
		public static const T365:String = "365";
		public static const T520:String = "520";
		public static const T999:String = "999";
		public static const T1314:String = "1314";
		public static const T5200:String = "5200";
		public static const T9999:String = "9999";
		
		private var picNum:int;
		private var realPicNum:int;
		//显示图标资源
		private var imgData:BitmapData;
		//当前显示的实例
		private var actionInstance:Sprite;
		
		private var sender:TextField;
		private var senderTF:TextFormat;
		private var accepter:TextField;
		private var accepterTF:TextFormat;
		private var numTextField:TextField;
		private var numTextFormat:TextFormat;
		private var textBox:Sprite;
		public function Stars()
		{
			addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		}
		
		private var loader:Loader;
		private function onAddedToStage(e:Event):void{
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			var url:String = this.stage.loaderInfo.parameters["imgUrl"];
			if(url == null){
				if(ExternalInterface.available)
				{
					ExternalInterface.call("trace", "无效图片地址！");
				}
			}else{
				loader = new Loader();
				var policyFile:String = getPolicyFileByUrl(url);
				Security.loadPolicyFile(policyFile);
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoadImgComplete);
				loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
				loader.load(new URLRequest(url));
			}
		}
		
		private function getPolicyFileByUrl(url:String):String{
			var head:String = "http://";
			var result:String = url;
			if(result.indexOf(head) != -1){//包含http头,切掉
				result = result.substr(head.length);
			}
			
			result = result.substr(0,result.indexOf("/"));
			return head + result + "/crossdomain.xml" ;
		}
		
		private function showShape(imgData:BitmapData):void{
			ImageData.getInstance().imageData = imgData;
			var showType:String = this.stage.loaderInfo.parameters["showType"];
			picNum = int(this.stage.loaderInfo.parameters["picNum"]);
			realPicNum = picNum;
			if(picNum>99 && picNum<365)
				picNum = 99;
			if(picNum<11)
				return;
			switch(showType)
			{
				case TRandom:
					actionInstance = new LRandom(picNum,imgData);
					this.addChild(actionInstance);
					break;
				case T365:
					actionInstance = new Anime365();
					this.addChild(actionInstance);
					showText(Anime365.cardX,Anime365.cardY);
					break;
				case T520:
					actionInstance = new L520();
					this.addChild(actionInstance);
					showText(L520.cardX,L520.cardY);
					break;
				case T999:
					actionInstance = new L999();
					this.addChild(actionInstance);
					showText(L999.cardX,L999.cardY);
					break;
				case T1314:
					actionInstance = new L1314();
					this.addChild(actionInstance);
					showText(L1314.cardX,L1314.cardY);
					break;
				case T5200:
					actionInstance = new L5200();
					this.addChild(actionInstance);
					showText(L5200.cardX,L5200.cardY);
					break;
				case T9999:
					actionInstance = new L9999();
					this.addChild(actionInstance);
					showText(L9999.cardX,L9999.cardY);
					break;
			}
			TweenMax.to(textBox,2,{delay:3,autoAlpha:1});
		}
				
		private function onLoadImgComplete(e:Event):void{
			if(ExternalInterface.available)
			{
				ExternalInterface.call("trace", VERSION);
			}
			var bit:Bitmap =null;
			bit = Bitmap(loader.contentLoaderInfo.content);
			if(bit != null){
				showShape(bit.bitmapData);
			}
		}
		
		private function onIOError(e:IOErrorEvent):void{
			if(ExternalInterface.available)
			{
				ExternalInterface.call("trace", e.toString());
			}
		}
		
		private function showText(x:int,y:int):void{
			textBox = new Sprite();
			addChild(textBox);
			textBox.x = x;
			textBox.y = y;
			textBox.alpha = 0;
			
			sender = new TextField();
			senderTF = new TextFormat("宋体",13,0x000000,true);
			textBox.addChild(sender);
			with(sender){
				x = 102;
				y = 30;
				text = this.stage.loaderInfo.parameters["sender"];
				autoSize = TextFieldAutoSize.LEFT;
				selectable = false;
			}
			sender.setTextFormat(senderTF);
			
			
			accepter = new TextField();
			accepterTF = new TextFormat("宋体",13,0x000000,true);
			textBox.addChild(accepter);
			with(accepter){
				x = 55;
				y = 60;
				text = "送给      " + this.stage.loaderInfo.parameters["accepter"];
				autoSize = TextFieldAutoSize.LEFT;
				selectable = false;
			}
			accepter.setTextFormat(accepterTF);
			
			numTextField = new TextField();
			numTextFormat = new TextFormat("Arial",15,0xffffff,true);
			textBox.addChild(numTextField);
			with(numTextField){
				x = 75;
				y = 85;
				text = realPicNum;
				autoSize = TextFieldAutoSize.CENTER;
				selectable = false;
			}
			numTextField.setTextFormat(numTextFormat);
		}
		
	}
}