package admin.database;

import haxe.extern.EitherType;

@:jsRequire("admin.database", "DataSnapshot") extern class DataSnapshot {
	public var key:Null<String>;
	public var ref:Reference;

	public function child(path:String):DataSnapshot;
	public function exists():Bool;
	public function exportVal():Dynamic;
	public function forEach(action:DataSnapshot->Void):Bool;
	public function getPriority():Null<EitherType<String, Int>>;
	public function hasChild(path:String):Bool;
	public function hasChildren():Bool;
	public function numChildren():Int;
	public function toJSON():Null<Dynamic>;
	public function val():Dynamic;
}
