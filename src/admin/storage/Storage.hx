package admin.storage;
import google.cloud.storage.Bucket;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import admin.app.App;

@:jsRequire("admin.storage","Storage") extern class Storage{

    public var  app:App;
    public function bucket(?name:String):Bucket;//need to implement Bucket object
}
