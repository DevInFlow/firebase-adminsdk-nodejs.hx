package admin.storage;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import admin.app.App;

@:jsRequire("storage.storage","Storage") extern class Storage{

    public var  app:App;
    public function bucket(?name:String):Bucket;//need to implement Bucket object
}

@:jsRequire("@google-cloud/storage","Budket") extern class Bucket{
    public function new(storage:Dynamic,name:String,?options:Dynamic);
    public function getFiles(?query:Dynamic,?callback:Dynamic):Promise<Dynamic>;
    
}