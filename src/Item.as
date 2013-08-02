package
{
	import com.greensock.TweenMax;
	import com.greensock.easing.Back;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.net.Socket;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.Timer;

	public class Item extends Sprite
	{
		private var imgData:BitmapData;
		private var imgs:Vector.<Bitmap>;
		private var moveImgs:Vector.<Bitmap>;
		private var rosePoints:Vector.<Point>;
		private var currIndex:int = 0;
		
		private var STEP:Number = 30;//调整每个物体之间距离
		private var IMAGENUMBERS:int = 30;//调整随机显示图片个数
		
		private var points:Vector.<Point>;
		private var _moveOrNot:Boolean = true;
		
		/**
		 * @param path: 路径
		 * @param imgnums: 显示图片个数
		 * @param stepLen: 每个图片间隔长度
		 * */
		public function Item(paths:Vector.<Point>, imgnums:int,stepLen:int,moveOrNot:Boolean = true)
		{
			this.points = paths;
			_moveOrNot = moveOrNot;
			STEP = stepLen;
			if(_moveOrNot){
				IMAGENUMBERS = imgnums <= paths.length ? paths.length + 5 : imgnums;
			}else{
				IMAGENUMBERS = imgnums;
			}
			
			addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void{
			removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
		
			imgs = new Vector.<Bitmap>();
			moveImgs = new Vector.<Bitmap>();
			
			imgData = ImageData.getInstance().imageData;
			init();
		}
		
		private function init():void{
			var imageNumbers:int;
			var rx:int;
			var ry:int;
			if(_moveOrNot){
				rosePoints = new Vector.<Point>();
				generateRosePoint(points);
				imageNumbers = rosePoints.length >= IMAGENUMBERS ? rosePoints.length + (rosePoints.length/2) : IMAGENUMBERS; 
			}else{
				 imageNumbers = IMAGENUMBERS;
			}
			for(var i:int = 0;i<imageNumbers;i++){
				var img:Bitmap = new Bitmap(imgData);
				img.alpha = 0;
				//当图片个数小于15时候，将位置靠左
				if(imageNumbers<=15){
					rx = Math.random()*(DataPool.WIDTH / 2 - imgData.width);
					ry = Math.random()*(DataPool.HEIGHT - imgData.height); 
				}else{
					rx = Math.random() * (DataPool.WIDTH - imgData.width);
					ry = Math.random() * (DataPool.HEIGHT - imgData.height); 
				}
				img.x = rx;
				img.y = ry;
				addChild(img);
				imgs.push(img);
			}
			
			var timer:Timer = new Timer(1000/30);
			timer.addEventListener(TimerEvent.TIMER,onStage);
			timer.start();
		}
		
		private function onStage(e:TimerEvent):void{
			for(var i:int = imgs.length-1;i>=0;i--){
				var img:Bitmap = imgs[i];
				if(img.alpha >= 1){
					imgs.splice(i,1);
					if(_moveOrNot){
						if(moveImgs.length < rosePoints.length)
						{
							moveImgs.push(img);
						}else{
//							removeChild(img);
							TweenMax.to(img,2,{autoAlpha:0});
							img = null;
						}
					}
				}else{
					img.alpha += Math.random()*0.2;
				}
			}
			
			if(imgs.length == 0){
				var timer:Timer = e.currentTarget as Timer;
				timer.removeEventListener(TimerEvent.TIMER,onStage);
				timer.stop();
				
				if(_moveOrNot){
					var moveTimer:Timer = new Timer(1000/30);
					moveTimer.addEventListener(TimerEvent.TIMER,onMove);
					moveTimer.start();
				}
			}
			
			e.updateAfterEvent();
		}
		
		private function onMove(e:TimerEvent):void{
			var doneCount:int = 0;
			var length:int = moveImgs.length < rosePoints.length ? moveImgs.length : rosePoints.length;
			for(var i:int = 0;i<length;i++){
				var img:Bitmap = moveImgs[i];
				var point:Point = rosePoints[i];
				TweenMax.to(img,4,{x:point.x,y:point.y});
			}
			var timer:Timer = e.currentTarget as Timer;
			timer.removeEventListener(TimerEvent.TIMER,onMove);
			timer.stop();
			e.updateAfterEvent();
		}
		
		private function generateRosePoint(points:Vector.<Point>):void{
			for(var j:int = 1;j < points.length;j++){
				var newPoint:Point = new Point();
				newPoint.x = points[j-1].x - (imgData.width>>1);
				newPoint.y = points[j-1].y - (imgData.height>>1);
				rosePoints.push(newPoint);
				var nextPoint:Point = points[j];
				var steps:int = calSteps(points[j-1],nextPoint,STEP);
				for(var i:int = 1;i<steps;i++){
					newPoint = new Point();
					newPoint.x = (getD(i,steps,points[j-1].x,nextPoint.x)) + points[j-1].x - (imgData.width>>1);
					newPoint.y = (getD(i,steps,points[j-1].y,nextPoint.y)) + points[j-1].y - (imgData.height>>1);
					rosePoints.push(newPoint);
				}
			}
		}
		
		private function getD(currStep:int,totalStep:Number,currValue:Number,nextValue:Number):Number{
			return currStep*(nextValue-currValue)/totalStep;
		}
		
		private function calSteps(point1:Point,point2:Point,step:Number):int{
			var dx:Number = point2.x - point1.x;
			var dy:Number = point2.y - point1.y;
			return Math.sqrt(dy*dy + dx*dx) / step;
		}
		
		private function calDegree(point1:Point,point2:Point):int{
			var dx:Number = point2.x - point1.x;
			var dy:Number = point2.y - point1.y;
			return Math.atan2(dy,dx) * 180 / Math.PI;
		}
		
		private function getNextPoint():Point{
			var point:Point = null;
			if(currIndex < rosePoints.length){
				point = rosePoints[currIndex];
				currIndex++;
			}
			return point;
		}
	}
}