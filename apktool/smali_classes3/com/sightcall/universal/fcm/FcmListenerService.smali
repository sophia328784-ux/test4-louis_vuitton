.class public Lcom/sightcall/universal/fcm/FcmListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->fcm()Lcom/sightcall/universal/fcm/UniversalFcm;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/fcm/UniversalFcm;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/Universal;->fcm()Lcom/sightcall/universal/fcm/UniversalFcm;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/fcm/UniversalFcm;->onNewToken(Ljava/lang/String;)V

    return-void
.end method
