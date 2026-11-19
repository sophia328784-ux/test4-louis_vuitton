.class public final Lcom/sightcall/universal/util/ScreenShareServiceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u001a(\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "stopScreenCast",
        "",
        "context",
        "Landroid/content/Context;",
        "call",
        "Lnet/rtccloud/sdk/Call;",
        "session",
        "Lcom/sightcall/universal/model/Session;",
        "dc",
        "Lnet/rtccloud/sdk/DataChannelModule;",
        "listener",
        "Lkotlin/Function0;",
        "resumePendingScreenShareOrStop",
        "sdk_installedRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/rtccloud/sdk/Call;",
            "Lcom/sightcall/universal/model/Session;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v1, v1, Lcom/sightcall/universal/model/CallParameters;->screenshareWebUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    if-nez v1, :cond_0

    sget-object p0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->WEB:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iput-object p0, v2, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    iget-boolean v1, v2, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/sightcall/universal/model/CallParameters;->restartVideoAfterPicture:Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;-><init>(Lnet/rtccloud/sdk/Call;)V

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->releaseProducer()V

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->stop()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onScreencastStopped(Lcom/sightcall/universal/model/Session;)V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic resumePendingScreenShareOrStop$default(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final stopScreenCast(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/rtccloud/sdk/Call;",
            "Lcom/sightcall/universal/model/Session;",
            "Lnet/rtccloud/sdk/DataChannelModule;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result v0

    iget-object v2, p2, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v2, v2, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;->SCREEN:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    if-ne v2, v0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->unload(Landroid/content/Context;)V

    iget-object p0, p2, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/sightcall/universal/model/CallParameters;->screenshareProducerMode:Lcom/sightcall/universal/internal/ui/ScreenshareProducerMode;

    invoke-static {p1, p2, p4}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->resumePendingScreenShareOrStop(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    sget-object p0, Lcom/sightcall/common/DataChannelAction;->STOPPED_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {p0, p3}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return-void
.end method

.method public static synthetic stopScreenCast$default(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->stopScreenCast(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
