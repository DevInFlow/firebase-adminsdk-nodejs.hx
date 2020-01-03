package messsaging;
import utils.Error.FirebaseError;
import utils.Error.FirebaseArrayIndexError;
import haxe.extern.EitherType;
#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
@:jsRequire('./messaging/messaging', 'Messaging')
extern class Messaging {
    public var app:FirebaseApp;
    public function new(app:FirebaseApp):Void;
    public function send(message:Message, ?dryRun:Bool):Promise<String>;
    public function sendToCondition( condition:String, payload:MessagingPayload, ?options:MessagingOptions ):Promise<MessagingConditionResponse>;
    public function sendToDevice(registrationTokenOrTokens:EitherType<String, Array<String>>, payload:MessagingPayload, ?options:MessagingOptions):Promise<EitherType<MessagingDevicesResponse, MessagingDeviceGroupResponse>>;
    public function sendToDeviceGroup( notificationKey:String, payload:MessagingPayload, ?options:MessagingOptions ):Promise<EitherType<MessagingDeviceGroupResponse, MessagingDevicesResponse>>;
    public function sendToTopic(topic:String, payload:MessagingPayload, ?options:MessagingOptions ):Promise<MessagingTopicResponse>;
    public function subscribeToTopic( registrationTokenOrTokens:EitherType<String, Array<String>>, topic:String ):Promise<MessagingTopicManagementResponse>;
    public function unsubscribeFromTopic(registrationTokenOrTokens:EitherType<String, Array<String>>, topic:String ):Promise<MessagingTopicManagementResponse>;
}

typedef BaseMessage = {
?data:{},
?notification:Notification,
?android:AndroidConfig,
?webpush:WebpushConfig,
?apns:ApnsConfig
}

typedef Notification = {
?title:String,
?body:String
}
typedef Message = EitherType<EitherType<TokenMessage, TopicMessage>, ConditionMessage>;

typedef TokenMessage = {
>BaseMessage,
token:String
}

typedef TopicMessage = {
>BaseMessage,
topic:String
}

typedef ConditionMessage = {
>BaseMessage,
condition:String
}

typedef AndroidConfig = {
?collapseKey:String,
?priority:Priority,
?ttl:Int,
?restrictedPackageName:String,
?data:{},
?notification:AndroidNotification
}

@:enum abstract Priority(String) to String{
    var high = 'high';
    var normal = 'normal';
}

typedef AndroidNotification = {
?title:String,
?body:String,
?icon:String,
?color:String,
?sound:String,
?tag:String,
?clickAction:String,
?bodyLocKey:String,
?bodyLocArgs:Array<String>,
?titleLocKey:String,
?titleLocArgs:Array<String>,
?channelId:String
}

typedef WebpushConfig = {
?headers:{},
?data:{},
?notification:WebpushNotification,
?fcmOptions:WebpushFcmOptions
}

typedef WebpushFcmOptions = {
?link:String
}

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

@:enum abstract Direction(String) to String{
    var auto = 'auto';
    var ltr = 'ltr';
    var rtl = 'rtl';
}


typedef ApnsConfig = {
?headers:Dynamic,
?payload:ApnsPayload
}

typedef ApnsPayload = {

aps:Aps

}

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

typedef CriticalSound = {
?critical:Bool,
name:String,
?volume:Int
}

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


/* Payload for data messages */
typedef DataMessagePayload = {}

/* Payload for notification messages */
typedef NotificationMessagePayload = {
?tag:String,
?body:String,
?icon:String,
?badge:String,
?color:String,
?sound:String,
?title:String,
?bodyLocKey:String,
?bodyLocArgs:String,
?clickAction:String,
?titleLocKey:String,
?titleLocArgs:String
//[other: string]: string;
}

/* Composite messaging payload (data and notification payloads are both optional) */
typedef MessagingPayload = {
?data:DataMessagePayload,
?notification:NotificationMessagePayload
}

/* Options that can passed along with messages */
typedef MessagingOptions = {
?dryRun:Bool,
?priority:String,
?timeToLive:Int,
?collapseKey:String,
?mutableContent:Bool,
?contentAvailable:Bool,
?restrictedPackageName:String
//[other: string]: any;
}

/* Individual status response payload from single devices */
typedef MessagingDeviceResult = {
?error:FirebaseError,
?messageId:String,
?canonicalRegistrationToken:String
}

/* Response payload from sending to a single device ID or array of device IDs */
typedef MessagingDevicesResponse = {
canonicalRegistrationTokenCount:Int,
failureCount:Int,
multicastId:Int,
results:Array<MessagingDeviceResult>,
successCount:Int
}

/* Response payload from sending to a device group */
typedef MessagingDeviceGroupResponse = {
successCount:Int,
failureCount:Int,
failedRegistrationTokens:Array<String>
}

/* Response payload from sending to a topic */
typedef MessagingTopicResponse = {
messageId:Int
}

/* Response payload from sending to a condition */
typedef MessagingConditionResponse = {
messageId:Int
}


/* Response payload from sending to a single registration token or array of registration tokens */
typedef MessagingTopicManagementResponse = {
failureCount:Int,
successCount:Int,
errors:Array<FirebaseArrayIndexError>
}

