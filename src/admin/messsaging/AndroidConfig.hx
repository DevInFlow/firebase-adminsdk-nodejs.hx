package admin.messsaging;
@:enum abstract AndroidConfigPriority(String) to String{
    var high = 'high';
    var normal = 'normal';
}

typedef AndroidConfig = {
    ?collapseKey:String,
    ?priority:AndroidConfigPriority,
    ?ttl:Int,
    ?restrictedPackageName:String,
    ?data:{},
    ?notification:AndroidNotification
    }
    
    