package admin.messsaging;

@:enum abstract AndroidNotificationPriority(String) to String {
	var High = "high";
	var Min = "min";
	var Low = "low";
	var Default = "default";
	var Max = "max";
}

@:enum abstract AndroidNotificationVisibility(String) to String {
	var Private = "private";
	var Public = "public";
	var Secret = "secret";
}

typedef AndroidNotification = {
	?body:String,
	?bodyLocArgs:Array<String>,
	?bodyLocKey:String,
	?channelId:String,
	?clickAction:String,
	?color:String,
	?defaultLightSettings:Bool,
	?defaultSound:Bool,
	?defaultVibrateTimings:Bool,
	?eventTimestamp:Date,
	?icon:String,
	?imageUrl:String,
	?lightSettings:LightSettings,
	?localOnly:Bool,
	?notificationCount:Float,
	?priority:AndroidNotificationPriority,
	?sound:String,
	?sticky:Bool,
	?tag:String,
	?ticker:String,
	?title:String,
	?titleLocKey:String,
	?titleLocArgs:Array<String>,
	?vibrateTimingsMillis:Array<Float>,
	?visibility:AndroidNotificationVisibility
}
