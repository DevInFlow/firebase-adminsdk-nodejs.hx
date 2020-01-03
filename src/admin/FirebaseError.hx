package admin;

@:jsRequire("admin", "FirebaseError") extern class FirebaseError {
	public var code:String;
	public var message:String;
	public var stack:String;

	public function toJSON():Dynamic;
}
