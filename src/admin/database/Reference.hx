package admin.database;

import haxe.extern.EitherType;
import helper.CompatPromise;
import haxe.io.Error;
import helper.QueryValue;

typedef OnComplete = Null<Error>->Dynamic

@:jsRequire("admin.database", "Reference") extern class Reference extends Query {
	public var key:Null<String>;
	public var parent:Null<Reference>;
	public var path:String;
	public var root:Reference;

	public function child(path:String):Reference;
	public function onDisconnect():OnDisconnect;
	public function push(?value:Dynamic, ?onComplete:OnComplete):ThenableReference;
	public function remove(?onComplete:OnComplete):CompatPromise<Void>;
	public function set(value:Dynamic, ?onComplete:OnComplete):CompatPromise<Void>;
	public function setPriority(priority:Null<EitherType<String, Int>>, ?onComplete:OnComplete):CompatPromise<Void>;
	public function setWithPriority(newVal:Dynamic, newPriority:Null<EitherType<Int, String>>, ?onComplete:OnComplete):CompatPromise<Void>;
	public function transaction(transactionUpdate:Dynamic->Dynamic, ?onComplete:OnComplete, ?applyLocally:Bool):CompatPromise<Dynamic>;
	public function update(values:Dynamic, ?onComplete:OnComplete):CompatPromise<Void>;
}
