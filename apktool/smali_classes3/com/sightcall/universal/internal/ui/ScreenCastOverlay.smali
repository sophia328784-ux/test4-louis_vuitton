.class public Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ScreenshareProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;,
        Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;
    }
.end annotation


# static fields
.field private static volatile singleton:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;


# instance fields
.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isStarted:Z

.field private final recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/di/SDKInjectorI;->inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V

    new-instance v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    return-void
.end method

.method private doStart()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->start()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;->SCREEN_CAST_STARTED:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->notifyScreenCastEvent(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;)V

    return-void
.end method

.method private doStop()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->stop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;->SCREEN_CAST_STOPPED:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->notifyScreenCastEvent(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;)V

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->singleton:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-nez v0, :cond_1

    const-class v0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->singleton:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->singleton:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->singleton:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    return-object p0
.end method

.method public static load(Landroid/content/Context;ILandroid/content/Intent;Lnet/rtccloud/sdk/ScreenshareModule;)V
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    move-result-object p0

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {v0, p1, p2}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->load(ILandroid/content/Intent;)V

    invoke-virtual {p3, p0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer(Lnet/rtccloud/sdk/ScreenshareProducer;)V

    return-void
.end method

.method public static unload(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    move-result-object p0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->unload()V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->isStarted:Z

    return p0
.end method

.method public notifyScreenCastEvent(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Status;)V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sightcall.SCREENCAST_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->onBind(Lnet/rtccloud/sdk/Sink$Screenshare;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call$Parameters;->shareProfile()Lnet/rtccloud/sdk/ScreenshareModule$Profile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->setProfile(Lnet/rtccloud/sdk/ScreenshareModule$Profile;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->isStarted:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateScreencast()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->doStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->doStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->isStarted:Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {p0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopScreencast()V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;->recorder:Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay$Recorder;->onUnbind()V

    return-void
.end method
