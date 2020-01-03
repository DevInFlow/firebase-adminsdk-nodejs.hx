package admin.messsaging;

typedef ApsAlert = {
    ?title:String,
    ?subtitle:String,
    ?body:String,
    ?locKey:String,
    ?locArgs:Array<String>,
    ?titleLocKey:String,
    ?titleLocArgs:Array<String>,
    ?subtitleLocKey:String,
    ?subtitleLocArgs:Array<String>,
    ?actionLocKey:String,
    ?launchImage:String
    }
    