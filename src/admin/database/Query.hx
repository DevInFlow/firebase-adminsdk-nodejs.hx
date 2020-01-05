package admin.database;

import js.lib.Promise;
import helper.CompatPromise;
import helper.QueryValue;

@:jsRequire("admin.database", "Query") extern class Query {
	public var ref:Reference;

	public function endAt(value:QueryValue, ?key:String):Query;
	public function equalTo(value:QueryValue, ?key:String):Query;
	public function isEqual(other:Null<Query>):Bool;
	public function limitToFirst(limit:Int):Query;
	public function limitToLast(limit:Int):Query;
	public function off(?eventType:EventType, ?callback:DataSnapshot->?Null<String>->Dynamic, ?context:Null<Dynamic>):Query;
	public function on(?eventType:EventType, ?callback:Null<DataSnapshot>->?String->Dynamic, ?cancelCallbackOrContext:Null<Dynamic>,
		?context:Null<Dynamic>):Null<DataSnapshot>->?String->Dynamic;
	public function once(?eventType:EventType, ?successCallback:DataSnapshot->?String->Dynamic, ?failureCallbackOrContext:Null<Dynamic>,
		?context:Null<Dynamic>):CompatPromise<DataSnapshot>;

	public function orderByChild(path:String):Query;
	public function orderByKey():Query;
	public function orderByPriority():Query;
	public function orderByValue():Query;
	public function startAt(value:QueryValue):Query;
	public function toJSON():Dynamic;
	public function toString():String;
}
