.class public Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private unregister()V
    .locals 1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;->unregister()V

    :cond_0
    return-void
.end method

.method public onScreenshareEvent(Lnet/rtccloud/sdk/event/call/ScreenshareEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;->unregister()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/internal/util/DelayedStopShareRestartVideo;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p0

    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ScreenshareEvent;->isSending()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "DelayedStopShareRestartVideo restarting video"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->start()V

    :cond_0
    return-void
.end method
