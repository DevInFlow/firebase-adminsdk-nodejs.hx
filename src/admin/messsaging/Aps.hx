package admin.messsaging;
import haxe.extern.EitherType;
typedef Aps = {
    ?alert:EitherType<String, ApsAlert>,
    ?badge:Int,
    ?sound:EitherType<String, CriticalSound>,
    ?contentAvailable:Bool,
    ?category:String,
    ?threadId:String,
    ?mutableContent:Bool
    //[customData: string]: any;
    }