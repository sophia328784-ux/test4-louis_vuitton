.class Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/ScenarioNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Updater"
.end annotation


# instance fields
.field private refreshTimer:Ljava/util/Timer;

.field private refreshTimerTask:Ljava/util/TimerTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->stop()V

    return-void
.end method

.method private start(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;

    invoke-direct {p1, p0, v0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater$1;-><init>(Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimerTask:Ljava/util/TimerTask;

    new-instance v1, Ljava/util/Timer;

    const-string p1, "UniversalNotificationTimer"

    invoke-direct {v1, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1388

    move-wide v5, v3

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimerTask:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->refreshTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method


# virtual methods
.method public check(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/util/UniversalSettings;->networkTraffic()Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->start(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/ScenarioNotification$Updater;->stop()V

    return-void
.end method
