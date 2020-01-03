package admin.messsaging;
import haxe.extern.EitherType;
typedef WebpushNotification = EitherType<{
    ?itle:String,
    ?actions:Array<{action:String, ?icon:String, title:String}>,
    ?badge:String,
    ?body:String,
    ?data:Dynamic,
    ?dir:Direction,
    ?icon:String,
    ?image:String,
    ?lang:String,
    ?renotify:Bool,
    ?requireInteraction:Bool,
    ?silent:Bool,
    ?tag:String,
    ?timestamp:Int,
    ?vibrate:EitherType<Int, Array<Int>>,
    }, {}>
    
    