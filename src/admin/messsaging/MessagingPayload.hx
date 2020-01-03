package admin.messsaging;

/* Composite messaging payload (data and notification payloads are both optional) */
typedef MessagingPayload = {
    ?data:DataMessagePayload,
    ?notification:NotificationMessagePayload
    }
    
    
    