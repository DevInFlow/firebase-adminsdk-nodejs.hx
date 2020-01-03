package admin.messsaging;


import admin.FirebaseArrayIndexError;

/* Response payload from sending to a single registration token or array of registration tokens */
typedef MessagingTopicManagementResponse = {
    failureCount:Int,
    successCount:Int,
    errors:Array<FirebaseArrayIndexError>
    }
    
    