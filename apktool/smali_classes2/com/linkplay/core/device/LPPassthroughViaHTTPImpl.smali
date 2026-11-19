.class public Lcom/linkplay/core/device/LPPassthroughViaHTTPImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/device/LPPassthroughViaHTTP;


# instance fields
.field private upnpUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linkplay/core/device/LPPassthroughViaHTTPImpl;->upnpUUID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public passthroughViaHTTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/request/LPNetworkListener;)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "command="

    const-string v0, ":"

    invoke-static {p0, p2, v0, p3}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/request/LPNetwork;->getInstance()Lcom/linkplay/request/LPNetwork;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0, p4}, Lcom/linkplay/request/LPNetwork;->post(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/linkplay/request/LPNetworkListener;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "parameter cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lcom/linkplay/request/LPNetworkListener;->onFailure(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public passthroughViaHTTPNotify(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->PASSTHROUGH_MESSAGE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/device/LPPassthroughViaHTTPImpl;->upnpUUID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyPassthroughObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void
.end method
