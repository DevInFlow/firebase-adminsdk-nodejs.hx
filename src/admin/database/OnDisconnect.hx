package admin.database;

import haxe.extern.EitherType;
import helper.CompatPromise;
import haxe.io.Error;

@:jsRequire("admin.database", "OnDisconnect") extern class OnDisconnect {
	public function cancel(?onComplete:Null<Error>->Dynamic):CompatPromise<Void>;
	public function remove(?onComplete:Null<Error>->Dynamic):CompatPromise<Void>;
	public function set(value:Dynamic, ?onComplete:Null<Error>->Dynamic):CompatPromise<Void>;
	public function setWithPriority(value:Dynamic, priority:Null<EitherType<Int, String>>, ?onComplete:Null<Error>->Dynamic):CompatPromise<Void>;
	public function update(values:Dynamic, ?onComplete:Null<Error>->Dynamic):CompatPromise<Void>;
}
