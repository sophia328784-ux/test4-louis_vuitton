.class public Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NSDMultiServiceTypeNotResolvedManager:"

.field private static instance:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;


# instance fields
.field nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$DiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

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

.field serviceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedInfoMap:Ljava/util/Map;

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$1;-><init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->initializeResolveListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->discoveryServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private confirmServices()V
    .locals 6

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    iget-object v3, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

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
    return-void
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->discoveryServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private discoveryServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NSDMultiServiceTypeNotResolvedManager:onServiceFound->NsdServiceInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private discoveryServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedNsdServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v4}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    const-string v0, "LINKPLAY_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NSDMultiServiceTypeNotResolvedManager:onServiceLost->NsdServiceInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveNextInQueue()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;
    .locals 1

    sget-object v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->instance:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    invoke-direct {v0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;-><init>()V

    sput-object v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->instance:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    :cond_0
    sget-object v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->instance:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;

    return-object v0
.end method

.method private initDiscoveryListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$2;

    invoke-direct {v1, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$2;-><init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeResolveListener()V
    .locals 1

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;

    invoke-direct {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$3;-><init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    return-void
.end method

.method private resolveNextInQueue()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->pendingNsdServices:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-virtual {v1, v0, p0}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolveListenerBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private runningWiFiAvailable()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->confirmServices()V

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->startNsdService()V

    return-void
.end method

.method private runningWiFiLost()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->stopNsdService()V

    return-void
.end method

.method private serviceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->resolvedInfoMap:Ljava/util/Map;

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

    new-instance v2, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager$4;-><init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;Lh/a;Landroid/net/nsd/NsdServiceInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onWiFiAvailable()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->runningWiFiAvailable()V

    return-void
.end method

.method public onWiFiLost()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->runningWiFiLost()V

    return-void
.end method

.method public runningBackGround()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->stopNsdService()V

    return-void
.end method

.method public runningForeGround()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->confirmServices()V

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->startNsdService()V

    return-void
.end method

.method public setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->serviceTypes:Ljava/util/List;

    return-object p0
.end method

.method public startNsdService()V
    .locals 5

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "NSDMultiServiceTypeNotResolvedManager:NsdService start"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->initDiscoveryListener()V

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopNsdService()V
    .locals 3

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "NSDMultiServiceTypeNotResolvedManager:NsdService stop"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v2, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdManager:Landroid/net/nsd/NsdManager;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeNotResolvedManager;->nsdDiscoveryListenerMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
