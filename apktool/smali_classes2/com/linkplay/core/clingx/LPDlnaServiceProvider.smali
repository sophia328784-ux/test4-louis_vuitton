.class public Lcom/linkplay/core/clingx/LPDlnaServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final MinSubscriptTime:I

.field private final NET_DELAY_TIME:J

.field avtransportSubscriptTime:I

.field private deviceItem:Lcom/linkplay/core/device/LPDevice;

.field dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

.field private dlnatimer:Ljava/util/Timer;

.field private firstLoad:Z

.field private isStop:Z

.field mediaRender:Lorg/teleal/cling/model/meta/Device;

.field renderingControlSubscriptTime:I

.field private seekbarTimer:Ljava/util/Timer;

.field private showNetDelayTime:J

.field viewTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->isStop:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->showNetDelayTime:J

    const-wide/16 v1, 0x2328

    iput-wide v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->NET_DELAY_TIME:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->firstLoad:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->viewTimerTask:Ljava/util/TimerTask;

    iput v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->avtransportSubscriptTime:I

    iput v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->renderingControlSubscriptTime:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->MinSubscriptTime:I

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->showNetDelayTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->isStop:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionRenderingControl()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->parseAVTransport(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->parseRenderingControl(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->praseInfoEx(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->prasePlayQueue(Ljava/util/Map;)V

    return-void
.end method

.method private initGetInfoExTimerTask()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

    :cond_0
    new-instance v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$1;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private initServiceProvider()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionAll()V

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaMediaInfo()V

    return-void
.end method

.method private initViewTimerTask()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->viewTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->viewTimerTask:Ljava/util/TimerTask;

    :cond_0
    new-instance v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;

    invoke-direct {v0, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->viewTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private makeDlnaSubscriptionRenderingControl()V
    .locals 3

    iget v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->renderingControlSubscriptTime:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->renderingControlSubscriptTime:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->reloadMediaRender()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_1

    const-string p0, "LINKPLAY_SDK"

    const-string v0, "mediaRender is null makeDlnaSubscriptionRenderingControl"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$7;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$7;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventRenderingControl(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private parseAVTransport(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CurrentTrackDuration"

    const-string v1, "TransportState"

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "CurrentTrackMetaData"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "A_ARG_TYPE_SeekTarget"

    if-eqz v2, :cond_8

    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, ""

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v0, :cond_a

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0, v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

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

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_a

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

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

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

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

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_5
    move-object p1, v4

    :goto_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v1, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTrackSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Prime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v5, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, v5, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    invoke-virtual {v0, v5, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    :cond_7
    :goto_1
    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

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

    :cond_8
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    return-void

    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->parseMediaInfo(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_a
    return-void
.end method

.method private parseMediaInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CurrentTrack"

    const-string v1, "TrackSource"

    const-string v2, "TransportState"

    :try_start_0
    iget-object v3, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const-string v5, "PlaybackStorageMedium"

    if-nez v3, :cond_1

    :try_start_1
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMedium(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    :cond_3
    new-instance v2, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v2

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "CurrentTrackDuration"

    const-string v5, "CurrentTrackMetaData"

    if-nez v2, :cond_5

    :try_start_2
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackMetaData(Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {v3}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    :cond_8
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

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

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->CURRENT_QUEUE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_a
    :goto_0
    return-void
.end method

.method private parseRenderingControl(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "LOGINSUCCESS"

    const-string v3, "PassThrough"

    const-string v4, "BtPairState"

    const-string v5, "GroupName"

    const-string v6, "channelchange"

    const-string v7, "volumechange"

    const-string v8, "slaveUUID"

    const-string v9, "Channel"

    const-string v10, "SlaveMask"

    const-string v11, "slave_add"

    const-string v12, "slave_rm"

    const-string v13, "TimeStamp"

    const-string v14, "Volume"

    const-string v15, "NextInvalid"

    move-object/from16 v16, v2

    const-string v2, "PDALoginStatus"

    move-object/from16 v17, v2

    const-string v2, "DeviceName"

    :try_start_0
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v18, v3

    new-instance v3, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    move-object/from16 v19, v4

    sget-object v4, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->ALEXA_PANDORA_SKIP_LIMIT_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v3, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v3

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :goto_0
    const-string v3, "Mute"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_1

    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setCurrentVolume(I)V

    goto :goto_1

    :cond_1
    if-lt v3, v5, :cond_3

    const-string v3, "0"

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setCurrentVolume(ILjava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->VOLUME_CHANED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_4
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-void

    :cond_5
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-void

    :cond_6
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v2

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-static {v1}, Lcom/linkplay/core/status/LPPendingMask;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPendingMask;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendMask(Lcom/linkplay/core/status/LPPendingMask;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_PENDING_MASK_UNMASK:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_7
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayChannel;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->CHANNEL_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_8
    const-string v3, "Slave"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "volumechangeTimeStamp"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setCurrentVolume(ILjava/lang/String;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->VOLUME_CHANED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_9
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "channelchangeTimeStamp"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/linkplay/core/status/LPPlayChannel;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;Ljava/lang/String;)V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->CHANNEL_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_a
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setFriendlyName(Ljava/lang/String;)V

    :cond_b
    new-instance v2, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_NAME_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v2

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_c
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroupName(Ljava/lang/String;)V

    :cond_d
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->GROUP_NAME_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_e
    move-object/from16 v2, v19

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "BtPairDevAddr"

    if-nez v3, :cond_12

    :try_start_2
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_2

    :cond_f
    move-object/from16 v3, v18

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getPassthroughViaHTTP()Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getPassthroughViaHTTP()Lcom/linkplay/core/device/LPPassthroughViaHTTP;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/linkplay/core/device/LPPassthroughViaHTTP;->passthroughViaHTTPNotify(Ljava/lang/String;)V

    return-void

    :cond_10
    move-object/from16 v2, v17

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->PASSTHROUGH_MESSAGE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDataObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_11
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void

    :cond_12
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/linkplay/core/utils/ToolsUtil;->isNumDigits(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "btPairState"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->PASSTHROUGH_MESSAGE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyPassthroughObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_14
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private praseInfoEx(Ljava/util/Map;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "VerUpdateFlag"

    const-string v3, "BatteryPercent"

    const-string v4, "BatteryFlag"

    const-string v5, "InternetAccess"

    const-string v6, "PlayMedium"

    const-string v7, "TrackSource"

    const-string v8, "PlayType"

    const-string v9, "SlaveFlag"

    const-string v10, "SlaveList"

    const-string v11, "CurrentChannel"

    const-string v12, "SubNum"

    const-string v13, "TimeStamp"

    const-string v14, "CurrentVolume"

    const-string v15, "LoopMode"

    move-object/from16 v16, v2

    const-string v2, "RelTime"

    move-object/from16 v17, v3

    const-string v3, "TrackURI"

    move-object/from16 v18, v4

    const-string v4, "TrackMetaData"

    move-object/from16 v19, v5

    const-string v5, "TrackDuration"

    move-object/from16 v20, v6

    const-string v6, "CurrentTransportState"

    move-object/from16 v21, v7

    const-string v7, "1"

    :try_start_0
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v7

    const-string v7, ""

    if-eqz v22, :cond_0

    :try_start_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v7

    :goto_2
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v7

    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v7

    :goto_4
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_5
    move-object v15, v7

    :goto_5
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_6
    move-object v14, v7

    :goto_6
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v24, v2

    const-string v2, "0"

    if-eqz v22, :cond_7

    :try_start_2
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_7
    move-object v13, v2

    :goto_7
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v22, v5

    const/4 v5, 0x2

    if-ge v12, v5, :cond_9

    iget-object v5, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object v5

    iget-object v12, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v12}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->getDlanHelper(Ljava/lang/String;)Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v5, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    iget-object v12, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {v5, v12}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;-><init>(Lcom/linkplay/core/device/LPDevice;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->me()Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;

    move-result-object v12

    move-object/from16 v25, v6

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6, v5}, Lcom/linkplay/core/clingx/LPDlnaServiceProviderPool;->addDlnaHelper(Ljava/lang/String;Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    goto :goto_8

    :cond_8
    move-object/from16 v25, v6

    :goto_8
    invoke-virtual {v5}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionAll()V

    iget-object v5, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setTimeStamp(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    :goto_9
    move-object/from16 v25, v6

    goto :goto_a

    :cond_a
    move-object/from16 v22, v5

    goto :goto_9

    :goto_a
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_b
    move-object v5, v7

    :goto_b
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_c
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_d
    move-object v6, v2

    :goto_c
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_d
    move-object/from16 v9, v23

    goto :goto_e

    :cond_e
    move-object v8, v7

    goto :goto_d

    :goto_e
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_10

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v6

    if-nez v6, :cond_f

    new-instance v6, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v6}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v10, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v10}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v6

    iget-object v10, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v10}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v10

    invoke-virtual {v10}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object v6

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v10

    new-instance v12, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;

    invoke-direct {v12, v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$3;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {v10, v6, v12}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    :cond_f
    :goto_f
    move-object/from16 v6, v21

    goto :goto_10

    :cond_10
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v6

    if-ne v6, v11, :cond_f

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    sget-object v10, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v6, v10}, Lcom/linkplay/core/model/LPDeviceStatus;->setPendSlave(Lcom/linkplay/core/status/LPPendingSlave;)V

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/linkplay/core/model/LPDeviceStatus;->setGroup(I)V

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setMaster_uuid(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/linkplay/core/model/LPDeviceStatus;->setRouter(Ljava/lang/String;)V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v6

    iget-object v10, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v6, v10}, Lcom/linkplay/core/app/LPDeviceManager;->addLPDevice(Lcom/linkplay/core/device/LPDevice;)V

    goto :goto_f

    :goto_10
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_11
    move-object/from16 v10, v20

    goto :goto_12

    :cond_11
    move-object v6, v7

    goto :goto_11

    :goto_12
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_13
    move-object/from16 v12, v19

    goto :goto_14

    :cond_12
    move-object v10, v7

    goto :goto_13

    :goto_14
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_15
    move-object/from16 v11, v18

    goto :goto_16

    :cond_13
    move-object v12, v9

    goto :goto_15

    :goto_16
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v26

    goto :goto_17

    :cond_14
    move-object/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v11

    move-object v11, v2

    :goto_17
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v26

    goto :goto_18

    :cond_15
    move-object/from16 v5, v16

    move-object/from16 v16, v2

    :goto_18
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_16
    move-object v1, v2

    :goto_19
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 p1, v5

    iget-object v5, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz p1, :cond_17

    :try_start_3
    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    move-object/from16 v19, v11

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/linkplay/core/model/LPDeviceStatus;->setVerUpdateFlag(I)V

    goto :goto_1a

    :cond_17
    move-object/from16 v19, v11

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/linkplay/core/model/LPDeviceStatus;->setVerUpdateFlag(I)V

    :goto_1a
    iget-object v5, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/linkplay/core/model/LPDeviceStatus;->setVersionUpdate(I)V

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getNewVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getNewVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/request/RequestItem$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    :cond_19
    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v2

    iget-object v5, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v5}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide/from16 v20, v11

    iget-wide v11, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->showNetDelayTime:J

    sub-long v11, v20, v11

    const-wide/16 v20, 0x2328

    cmp-long v11, v11, v20

    if-lez v11, :cond_1a

    invoke-virtual {v5, v9}, Lcom/linkplay/core/model/LPDeviceStatus;->setInternet(I)V

    :cond_1a
    invoke-virtual {v2, v8}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayType(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getUpnpVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x3e8

    if-ge v8, v9, :cond_1d

    invoke-virtual {v1, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMedium(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;->byOrdinal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setMediaType(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setPlayUri(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/linkplay/core/model/LPDeviceStatus;->setCurrentVolume(I)V

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v3}, Lcom/linkplay/core/utils/ToolsUtil;->isSpotifyTrackSource(Lcom/linkplay/core/device/LPDevice;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/linkplay/core/status/LPSpotifyPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPSpotifyPlayMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;)V

    goto :goto_1b

    :cond_1b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/linkplay/core/status/LPPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMode(Lcom/linkplay/core/status/LPPlayMode;)V

    :goto_1b
    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceInfo;->getPlayStatus()Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

    if-ne v3, v6, :cond_1c

    move-object/from16 v22, v7

    move-object/from16 v24, v22

    :cond_1c
    invoke-static/range {v24 .. v24}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    invoke-static/range {v22 .. v22}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    invoke-virtual {v1, v4}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackMetaData(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayChannel;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lcom/linkplay/core/model/LPDeviceStatus;->setBatteryPercent(II)V

    goto/16 :goto_1e

    :cond_1d
    if-lt v8, v9, :cond_21

    invoke-virtual {v1, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setPlayUri(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackSource(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/linkplay/lpmdpkit/bean/LPPlayHeader$LPPlayMediaType;->byOrdinal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setMediaType(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMedium(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/linkplay/core/status/LPPlayStatus;->byOrdinal(Ljava/lang/String;)Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayStatus(Lcom/linkplay/core/status/LPPlayStatus;)V

    iget-object v3, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v3}, Lcom/linkplay/core/utils/ToolsUtil;->isSpotifyTrackSource(Lcom/linkplay/core/device/LPDevice;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/linkplay/core/status/LPSpotifyPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPSpotifyPlayMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;)V

    goto :goto_1c

    :cond_1e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/linkplay/core/status/LPPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMode(Lcom/linkplay/core/status/LPPlayMode;)V

    :goto_1c
    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceInfo;->getPlayStatus()Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v3

    sget-object v6, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_STOPPED:Lcom/linkplay/core/status/LPPlayStatus;

    if-ne v3, v6, :cond_1f

    move-object/from16 v22, v7

    move-object/from16 v24, v22

    :cond_1f
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/linkplay/core/model/LPDeviceStatus;->setBatteryPercent(II)V

    invoke-static/range {v24 .. v24}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    invoke-static/range {v22 .. v22}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTotalTime(J)V

    invoke-virtual {v1, v4}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTrackMetaData(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1, v13}, Lcom/linkplay/core/model/LPDeviceStatus;->setCurrentVolume(ILjava/lang/String;)V

    iget-boolean v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->firstLoad:Z

    if-eqz v1, :cond_21

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->firstLoad:Z

    iget-object v1, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v1}, Lcom/linkplay/core/utils/ToolsUtil;->isSpotifyTrackSource(Lcom/linkplay/core/device/LPDevice;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPSpotifyPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPSpotifyPlayMode;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;)V

    goto :goto_1d

    :cond_20
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMode(Lcom/linkplay/core/status/LPPlayMode;)V

    :goto_1d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayChannel;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;)V

    :cond_21
    :goto_1e
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->META_DATA_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->DEVICE_INFO_CHANGE:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private prasePlayQueue(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CurretPlayListName"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "CurrentIndex"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v3, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->CURRENT_QUEUE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDataObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_3
    const-string v1, "LoopMpde"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/linkplay/core/utils/ToolsUtil;->isSpotifyTrackSource(Lcom/linkplay/core/device/LPDevice;)Z

    move-result v2

    iget-object v4, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPSpotifyPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPSpotifyPlayMode;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setSpotifyPlayMode(Lcom/linkplay/core/status/LPSpotifyPlayMode;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/linkplay/core/status/LPPlayMode;->byOrdinal(I)Lcom/linkplay/core/status/LPPlayMode;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayMode(Lcom/linkplay/core/status/LPPlayMode;)V

    :goto_0
    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v2, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->PLAYMODE_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v1, "online"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "userinfo"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "deezer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "primemusic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/LPXmlUtil;->Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-instance p1, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->USER_ACCOUNT_STATUS_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {p1, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyAccountStatusObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    return-void
.end method

.method private reloadMediaRender()Lorg/teleal/cling/model/meta/Device;
    .locals 2

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->getMediaRenderByuuid(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 7

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->stop()V

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->initServiceProvider()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->isStop:Z

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnatimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnatimer:Ljava/util/Timer;

    :cond_0
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->initGetInfoExTimerTask()V

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnatimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnaGetInfoExTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->seekbarTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->seekbarTimer:Ljava/util/Timer;

    :cond_1
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->initViewTimerTask()V

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->seekbarTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->viewTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public getDeviceItem()Lcom/linkplay/core/device/LPDevice;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    return-object p0
.end method

.method public makeDlnaGetInfoEx()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->reloadMediaRender()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$4;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$4;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getInfoEx(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public makeDlnaMediaInfo()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/impl/h;->a()Lcom/android/wiimu/upnp/IWiimuAVTransport;

    move-result-object v0

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->reloadMediaRender()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    new-instance v2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$5;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wiimu/upnp/IWiimuAVTransport;->getMediaInfo(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/IWiimuActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public makeDlnaSubscriptionAVTransport()V
    .locals 3

    iget v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->avtransportSubscriptTime:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->avtransportSubscriptTime:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->reloadMediaRender()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_1

    const-string p0, "LINKPLAY_SDK"

    const-string v0, "mediaRender == null makeDlnaSubscriptionAVTransport"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$6;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$6;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventAVTransport(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public makeDlnaSubscriptionAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionAVTransport()V

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionRenderingControl()V

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->makeDlnaSubscriptionPlayQueue()V

    return-void
.end method

.method public makeDlnaSubscriptionPlayQueue()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->reloadMediaRender()Lorg/teleal/cling/model/meta/Device;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    if-nez v0, :cond_0

    const-string p0, "LINKPLAY_SDK"

    const-string v0, "mediaRender is null makeDlnaSubscriptionPlayQueue"

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/wiimu/upnp/sucription/c;->a()Lcom/android/wiimu/upnp/sucription/c;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->mediaRender:Lorg/teleal/cling/model/meta/Device;

    new-instance v2, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$8;

    invoke-direct {v2, p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$8;-><init>(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wiimu/upnp/sucription/c;->subscriptEventPlayQueue(Lorg/teleal/cling/model/meta/Device;Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->isStop:Z

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnatimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->dlnatimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->seekbarTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->seekbarTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method
