package admin.messsaging;

/* Response payload from sending to a device group */
typedef MessagingDeviceGroupResponse = {
    successCount:Int,
    failureCount:Int,
    failedRegistrationTokens:Array<String>
    }
    