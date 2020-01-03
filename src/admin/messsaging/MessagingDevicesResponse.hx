package admin.messsaging;

/* Response payload from sending to a single device ID or array of device IDs */
typedef MessagingDevicesResponse = {
    canonicalRegistrationTokenCount:Int,
    failureCount:Int,
    multicastId:Int,
    results:Array<MessagingDeviceResult>,
    successCount:Int
    }
    
    
    
    