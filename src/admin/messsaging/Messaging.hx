package admin.messsaging;

#if haxe4
import js.lib.Promise;
#else
import js.Promise;
#end
import haxe.extern.EitherType;
@:jsRequire('messaging.messaging', 'Messaging')
extern class Messaging {
	public var app:FirebaseApp;
	public function new(app:FirebaseApp):Void;
	public function send(message:Message, ?dryRun:Bool):Promise<String>;
    public function sendAll(messages:Array<Message>, ?dryRun:Bool):Promise<BatchResponse>;
    public function sendMulticast(messages:MulticastMessage, ?dryRun:Bool):Promise<BatchResponse>;
	public function sendToCondition(condition:String, payload:MessagingPayload, ?options:MessagingOptions):Promise<MessagingConditionResponse>;
	public function sendToDevice(registrationTokenOrTokens:EitherType<String, Array<String>>, payload:MessagingPayload,
		?options:MessagingOptions):Promise<EitherType<MessagingDevicesResponse, MessagingDeviceGroupResponse>>;
	public function sendToDeviceGroup(notificationKey:String, payload:MessagingPayload,
		?options:MessagingOptions):Promise<EitherType<MessagingDeviceGroupResponse, MessagingDevicesResponse>>;
	public function sendToTopic(topic:String, payload:MessagingPayload, ?options:MessagingOptions):Promise<MessagingTopicResponse>;
	public function subscribeToTopic(registrationTokenOrTokens:EitherType<String, Array<String>>, topic:String):Promise<MessagingTopicManagementResponse>;
	public function unsubscribeFromTopic(registrationTokenOrTokens:EitherType<String, Array<String>>, topic:String):Promise<MessagingTopicManagementResponse>;
}
