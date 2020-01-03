package admin.messsaging;
import admin.FirebaseError;

typedef SendResponse = {
	?error:FirebaseError,
	?messageId:String,
	success:Bool
}
