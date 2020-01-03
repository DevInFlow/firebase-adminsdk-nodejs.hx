package admin.credential;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end

@:jsRequire("admin.credential","Credential") extern class Credential{
    public function getAccessToken():Promise<GoogleOAuthAccessToken> //need 
}