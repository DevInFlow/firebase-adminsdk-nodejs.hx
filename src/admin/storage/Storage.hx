package admin.storage;
@:jsRequire("./storage.storage","Storage") extern class Storage{

    public var  app:Storage;
    public function bucket(?name:String):Dynamic;//need to implement Bucket object
}