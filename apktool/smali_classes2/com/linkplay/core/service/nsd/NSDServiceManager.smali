.class public Lcom/linkplay/core/service/nsd/NSDServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_BACKGROUND:I = 0x0

.field private static final APP_FOREGROUND:I = 0x1

.field private static final WIFI_CONNECTED:I = 0x1

.field private static final WIFI_DISCONNECTED:I

.field private static instance:Lcom/linkplay/core/service/nsd/NSDServiceManager;


# instance fields
.field private APP_STATE:I

.field private WIFI_CONNECT_STATE:I

.field nsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field nsdManager:Landroid/net/nsd/NsdManager;

.field pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

.field resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resolvedInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh/a;",
            ">;"
        }
    .end annotation
.end field

.field final resolvedNsdServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private serviceHandler:Landroid/os/Handler;

.field serviceType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_linkplay._tcp"

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceType:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedNsdServices:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedInfoMap:Ljava/util/Map;

    iput v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    iput v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDServiceManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/linkplay/core/service/nsd/NSDServiceManager$1;-><init>(Lcom/linkplay/core/service/nsd/NSDServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->initializeResolveListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/service/nsd/NSDServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/service/nsd/NSDServiceManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/service/nsd/NSDServiceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private confirmServices()V
    .locals 6

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedNsdServices:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedNsdServices:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedNsdServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    iget-object v3, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    const-string p0, "LINKPLAY_SDK"

    const-string v0, "resolvedNSDServices is empty."

    invoke-static {p0, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app state & connect state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LINKPLAY_SDK"

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/service/nsd/NSDServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolveNextInQueue()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/service/nsd/NSDServiceManager;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;
    .locals 1

    sget-object v0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->instance:Lcom/linkplay/core/service/nsd/NSDServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDServiceManager;

    invoke-direct {v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;-><init>()V

    sput-object v0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->instance:Lcom/linkplay/core/service/nsd/NSDServiceManager;

    :cond_0
    sget-object v0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->instance:Lcom/linkplay/core/service/nsd/NSDServiceManager;

    return-object v0
.end method

.method private initDiscoveryListener()V
    .locals 1

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDServiceManager$2;

    invoke-direct {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager$2;-><init>(Lcom/linkplay/core/service/nsd/NSDServiceManager;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-void
.end method

.method private initializeResolveListener()V
    .locals 1

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDServiceManager$3;

    invoke-direct {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager$3;-><init>(Lcom/linkplay/core/service/nsd/NSDServiceManager;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    return-void
.end method

.method private resolveNextInQueue()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-virtual {v1, v0, p0}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private runningWiFiAvailable()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->confirmServices()V

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->startNsdService()V

    return-void
.end method

.method private runningWiFiLost()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->stopNsdService()V

    return-void
.end method

.method private serviceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->resolvedInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/linkplay/core/service/nsd/NSDServiceManager$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/linkplay/core/service/nsd/NSDServiceManager$4;-><init>(Lcom/linkplay/core/service/nsd/NSDServiceManager;Lh/a;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onWiFiAvailable()V
    .locals 2

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningWiFiAvailable()V

    return-void
.end method

.method public onWiFiLost()V
    .locals 1

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningWiFiLost()V

    return-void
.end method

.method public runningBackGround()V
    .locals 1

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    iput v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->stopNsdService()V

    return-void
.end method

.method public runningForeGround()V
    .locals 2

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    iput v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->confirmServices()V

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->startNsdService()V

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceType:Ljava/lang/String;

    return-object p0
.end method

.method public startNsdService()V
    .locals 3

    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->APP_STATE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->WIFI_CONNECT_STATE:I

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "LINKPLAY_SDK"

    const-string v2, "NsdService start"

    invoke-static {v0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->initDiscoveryListener()V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "servicediscovery"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdManager:Landroid/net/nsd/NsdManager;

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->serviceType:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v2, v1, p0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method public stopNsdService()V
    .locals 2

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "NsdService stop"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdManager:Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDServiceManager;->nsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-void
.end method
