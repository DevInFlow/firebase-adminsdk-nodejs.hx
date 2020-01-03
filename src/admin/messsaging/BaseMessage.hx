package admin.messsaging;

typedef BaseMessage = {
    ?data:{},
    ?fcmOptions:FcmOptions,
    ?notification:Notification,
    ?android:AndroidConfig,
    ?webpush:WebpushConfig,
    ?apns:ApnsConfig
    }
    
    