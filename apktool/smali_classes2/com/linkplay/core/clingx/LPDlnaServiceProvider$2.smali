.class Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->initViewTimerTask()V
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

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->b(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {v1}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getMediaInfo()Lcom/linkplay/mediainfo/LPMediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTickTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTotalTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceInfo;->getPlayStatus()Lcom/linkplay/core/status/LPPlayStatus;

    move-result-object v0

    sget-object v2, Lcom/linkplay/core/status/LPPlayStatus;->LP_PLAY_STATUS_PLAYING:Lcom/linkplay/core/status/LPPlayStatus;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/linkplay/mediainfo/LPMediaInfo;->getTickTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/linkplay/mediainfo/LPMediaInfo;->setTickTime(J)V

    new-instance v0, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;-><init>()V

    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPNotificationType;->REAL_TIME_CHANGED:Lcom/linkplay/lpmdpkit/observer/LPNotificationType;

    invoke-virtual {v0, v1}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setType(Lcom/linkplay/lpmdpkit/observer/LPNotificationType;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPDlnaServiceProvider$2;->this$0:Lcom/linkplay/core/clingx/LPDlnaServiceProvider;

    invoke-static {p0}, Lcom/linkplay/core/clingx/LPDlnaServiceProvider;->a(Lcom/linkplay/core/clingx/LPDlnaServiceProvider;)Lcom/linkplay/core/device/LPDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setUuid(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->setPayload(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/lpmdpkit/observer/LPNotification$NotifiyBuilder;->build()Lcom/linkplay/lpmdpkit/observer/LPNotification;

    move-result-object p0

    invoke-static {}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    :cond_1
    :goto_0
    return-void
.end method
