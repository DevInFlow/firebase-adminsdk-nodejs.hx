package admin.messsaging;



import admin.FirebaseError;

/* Individual status response payload from single devices */
typedef MessagingDeviceResult = {
    ?error:FirebaseError,
    ?messageId:String,
    ?canonicalRegistrationToken:String
    }
    
    
    
    