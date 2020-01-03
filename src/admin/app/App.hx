package admin.app;

@:jsRequire("admin.app", "App") extern class App {
	public var name:String;
	@:isVar public var options(never, default):admin.AppOptions;
	public function storage():admin.storage.Storage;
	public function messaging():admin.messsaging.Messaging;
}
