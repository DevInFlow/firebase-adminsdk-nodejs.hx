package admin.messsaging;

/* Options that can passed along with messages */
typedef MessagingOptions = {
    ?dryRun:Bool,
    ?priority:String,
    ?timeToLive:Int,
    ?collapseKey:String,
    ?mutableContent:Bool,
    ?contentAvailable:Bool,
    ?restrictedPackageName:String
    }