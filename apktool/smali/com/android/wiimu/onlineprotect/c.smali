.class public Lcom/android/wiimu/onlineprotect/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/onlineprotect/c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private final b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wiimu/onlineprotect/c;->b:I

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/c;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getWiimuUpnpTemplate()Lcom/android/wiimu/upnp/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getWiimuUpnpTemplate()Lcom/android/wiimu/upnp/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wiimu/upnp/e;->d()Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryImpl;->o()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-object v3, v2

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wiimu/onlineprotect/c;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/wiimu/onlineprotect/c$b;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/wiimu/onlineprotect/c$b;-><init>(Lcom/android/wiimu/onlineprotect/c;Ljava/lang/String;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/onlineprotect/c;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/c;->a()V

    return-void
.end method

.method private b()V
    .locals 9

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "startPingTimer ++"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/onlineprotect/c;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/wiimu/onlineprotect/c$a;

    invoke-direct {v3, p0}, Lcom/android/wiimu/onlineprotect/c$a;-><init>(Lcom/android/wiimu/onlineprotect/c;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/android/wiimu/onlineprotect/c;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wiimu/onlineprotect/c;->a:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/c;->b()V

    return-void
.end method
