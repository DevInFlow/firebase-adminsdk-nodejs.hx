package ;
import admin.database.Database;
import admin.AppOptions;
import admin.storage.Storage;
import admin.messsaging.Messaging;
@:jsRequire("firebase-admin")
extern class Admin {
    @selfCall
    public function new():Void;
    public static var credential:Dynamic;
    public static function initializeApp(options:AppOptions):Void;
    public static function messaging():Messaging;
    public static function storage():Storage;
    public static function database():Database;
}