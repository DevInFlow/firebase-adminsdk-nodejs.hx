package ;
import storage.Storage;
import messsaging.Messaging;
@:jsRequire("firebase-admin")
extern class FirebaseApp {
    @selfCall
    public function new():Void;
    public static var credential:Dynamic;
    public static function initializeApp(options:Dynamic):Void;
    public static function messaging():Messaging;
    public static function storage():Storage;
}
