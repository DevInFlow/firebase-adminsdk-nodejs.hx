package admin.database;

import helper.CompatPromise;
import haxe.extern.EitherType;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import admin.app.App;

@:jsRequire("admin.database", "Database") extern class Database {
	public var app:App;
	public function getRules():Promise<String>;
	public function getRulesJSON():Promise<Dynamic>;
	public function goOffline():Void;
	public function goOnline():Void;
	public function ref(?path:String):Reference;
	public function refFromURL(url:String):Reference;
	public function setRules(source:Dynamic):CompatPromise<Void>;
}

@:jsRequire("firebase-admin", "database")
extern class DatabaseLogging {
	@:native("enableLogging")
	public static function enable(?logger:EitherType<Bool, Void->Void>, ?presistent:Bool):Dynamic;
}
