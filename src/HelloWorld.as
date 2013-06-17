package
{
	import flash.display.Sprite;
	
	public class HelloWorld extends Sprite
	{
		public function HelloWorld()
		{
			trace("HelloWorld");
			//声明变量
			var n:int = 100;
			
			var s:String = "ActionScript";  //AS的字符串也是基本类型
			trace(s + " " + typeof(s));
			
			//声明数组，下标从0开始
			var array:Array = new Array(1, 2, 3);
			var citys:Array = ["广州", "上海",  "北京"];
			var array3:Array = [[1, 2, 3],["广州", "上海",  "北京"]]  // 嵌套
			trace(array);
			trace(typeof(array)); //Array也是Object
			trace(citys[0]);
			trace(array3[0][1] + " " + array3[1][1]);
			
			
			//声明Object
			var foo:Object = new Object(); //使用构造函数
			var bar:Object = { }; // 使用空的花括号
			
			var student:Object = {name:"Tom", age:22, "tel":13926208944, id:11701233, hello:function(){trace("Hello, Object!");} };
			trace("name:" + student.name + " age:" + student.age + " " + student.tel + " id:" + student.id);
			trace(typeof(student) +　" " + typeof(student.tel));
			student.hello();
			for(var i in student){
				trace(typeof(i) + " : " + student[i]);
			}
			
			var kingda:Object = { };
			kingda.name = "zhangzhiyi";
			kingda.gender = 1;
			kingda.lover = function(){ return "wqq";};
			trace(kingda.lover());
			
			//当程序在运行时(Run times)时需要访问一个成员，而这个成员的名字到了运行时才会知道，那么就需要用到数据运算符" [] ";
			var kenny:Object = { };
			var now:Date = new Date();
			var property:String;
			if(now.getTime()%2 == 0){
				property = "名字";
			}else{
				property = "name";
			}
			kenny[property] = "kenny";
			trace(kenny.property);
		}
	}
}