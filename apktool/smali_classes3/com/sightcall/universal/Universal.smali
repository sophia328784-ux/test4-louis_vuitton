.class public final Lcom/sightcall/universal/Universal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UI_HANDLER:Landroid/os/Handler;

.field private static instance:Lcom/sightcall/universal/Universal;

.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final agent:Lcom/sightcall/universal/agent/UniversalAgent;

.field private final ar:Lcom/sightcall/universal/ar/UniversalAr;

.field private final context:Landroid/content/Context;

.field private final fcm:Lcom/sightcall/universal/fcm/UniversalFcm;

.field private final guest:Lcom/sightcall/universal/guest/UniversalGuest;

.field private final media:Lcom/sightcall/universal/media/UniversalMedia;

.field private final scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

.field private final settings:Lcom/sightcall/universal/util/UniversalSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "UNIVERSAL"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const v1, 0x2fb0e079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "84e19ba2"

    const-string v3, "release"

    const-string v4, "7.10.2 Build 800120953 (120952)"

    const-string v5, "2026-09-07 08:49:28 UTC"

    filled-new-array {v4, v1, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Version:%s, Code:%d, Date:%s, Git:#%s, Type:%s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sightcall/universal/Universal;->UI_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb21;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lb21;-><init>(I)V

    sput-object v0, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->a:Lb21;

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/Universal;->context:Landroid/content/Context;

    new-instance v0, Lcom/sightcall/universal/util/UniversalSettings;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/util/UniversalSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->settings:Lcom/sightcall/universal/util/UniversalSettings;

    new-instance v0, Lcom/sightcall/universal/fcm/UniversalFcm;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/fcm/UniversalFcm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->fcm:Lcom/sightcall/universal/fcm/UniversalFcm;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->agent:Lcom/sightcall/universal/agent/UniversalAgent;

    new-instance v0, Lcom/sightcall/universal/guest/UniversalGuest;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/guest/UniversalGuest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->guest:Lcom/sightcall/universal/guest/UniversalGuest;

    new-instance v0, Lcom/sightcall/universal/media/UniversalMedia;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/media/UniversalMedia;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->media:Lcom/sightcall/universal/media/UniversalMedia;

    new-instance v0, Lcom/sightcall/universal/scenario/UniversalScenario;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/scenario/UniversalScenario;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

    new-instance v0, Lcom/sightcall/universal/ar/UniversalAr;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/ar/UniversalAr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sightcall/universal/Universal;->ar:Lcom/sightcall/universal/ar/UniversalAr;

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/CallOverlay;

    return-void
.end method

.method private static abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "[%s] must not be null"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static agent()Lcom/sightcall/universal/agent/UniversalAgent;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->agent:Lcom/sightcall/universal/agent/UniversalAgent;

    return-object v0
.end method

.method public static ar()Lcom/sightcall/universal/ar/UniversalAr;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->ar:Lcom/sightcall/universal/ar/UniversalAr;

    return-object v0
.end method

.method public static context()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static fcm()Lcom/sightcall/universal/fcm/UniversalFcm;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->fcm:Lcom/sightcall/universal/fcm/UniversalFcm;

    return-object v0
.end method

.method public static guest()Lcom/sightcall/universal/guest/UniversalGuest;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->guest:Lcom/sightcall/universal/guest/UniversalGuest;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    if-nez v0, :cond_1

    const-class v0, Lcom/sightcall/universal/Universal;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/universal/Universal;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/Universal;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static instance()Lcom/sightcall/universal/Universal;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    return-object v0
.end method

.method public static logger()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method public static media()Lcom/sightcall/universal/media/UniversalMedia;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->media:Lcom/sightcall/universal/media/UniversalMedia;

    return-object v0
.end method

.method public static register(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static scenario()Lcom/sightcall/universal/scenario/UniversalScenario;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

    return-object v0
.end method

.method public static settings()Lcom/sightcall/universal/util/UniversalSettings;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->settings:Lcom/sightcall/universal/util/UniversalSettings;

    return-object v0
.end method

.method public static start(Landroid/content/Intent;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Universal.start(intent=%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    .line 61
    const-string v0, "intent"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parse(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static start(Landroid/net/Uri;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Universal.start(uri=%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    .line 65
    const-string v0, "uri"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parse(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 67
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static start(Lcom/sightcall/universal/model/Config;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Universal.start(config=%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    .line 72
    const-string v0, "config"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->next(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    .line 74
    const-string v0, "step"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/Scenario;->with(Lcom/sightcall/universal/scenario/Step;)Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public static start(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Universal.start(scenario=%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    .line 69
    const-string v0, "scenario"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Universal.start(url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/sightcall/universal/Universal;->abortIfNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parse(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Universal.stop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sightcall/universal/Universal;->instance:Lcom/sightcall/universal/Universal;

    iget-object v0, v0, Lcom/sightcall/universal/Universal;->scenario:Lcom/sightcall/universal/scenario/UniversalScenario;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->interrupt()V

    return-void
.end method

.method public static uiHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/Universal;->UI_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lnet/rtccloud/sdk/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public moveCallActivityToBackground()V
    .locals 4

    invoke-static {}, Lcom/sightcall/universal/internal/ui/CallActivity;->getInstance()Lcom/sightcall/universal/internal/ui/CallActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    iget-object p0, p0, Lcom/sightcall/universal/Universal;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->instance(Landroid/content/Context;)Lcom/sightcall/universal/internal/ui/CallOverlay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallOverlay;->disable()V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk34()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "activity"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object p0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "CallActivity instance is null. Cannot move to background."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Universal"

    invoke-virtual {p0, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDeadEvent(Lnet/rtccloud/sdk/event/util/DeadEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/rtccloud/sdk/event/util/DeadEvent<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/util/DeadEvent;->event()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/sightcall/universal/consent/ConsentRequestEvent;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "Consent requested but there is currently no listener!"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPermissionsEvent(Lcom/sightcall/universal/permission/PermissionsEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lcom/sightcall/universal/permission/PermissionsEvent;->granted()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/Universal;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lcom/sightcall/universal/permission/PermissionsEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPing(Lcom/sightcall/universal/fcm/messages/Ping;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->PING:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object p0, p0, Lcom/sightcall/universal/Universal;->context:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->show(Landroid/content/Context;[Ljava/lang/Object;)V

    return-void
.end method
