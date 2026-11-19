.class Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaMediaInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v1

    const-string v2, "TrackSource"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    :cond_1
    const-string v2, "CurrentURI"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setPlayUri(Ljava/lang/String;)V

    :cond_2
    const-string v2, "PlayMedium"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMedium(Ljava/lang/String;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v2}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_3
    const-string v1, "CurrentURIMetaData"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackMetaData(Ljava/lang/String;)V

    :cond_4
    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void
.end method
