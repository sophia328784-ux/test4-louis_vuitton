.class public Lcom/linkplay/core/app/LPDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;
.implements Ljava/io/Serializable;


# static fields
.field private static instance:Lcom/linkplay/core/app/LPDeviceManager;


# instance fields
.field private bInitLifecycleObserver:Z

.field bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

.field private devicelist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mContext:Landroid/app/Application;

.field private managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

.field private observer:Lcom/linkplay/core/app/LPDeviceManagerObserver;

.field private onlineDeviceManager:Lcom/android/wiimu/onlineprotect/a;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    const-string v0, "1.0.1"

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bInitLifecycleObserver:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/app/LPDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/app/LPDeviceManager;->runningForeground()V

    return-void
.end method

.method private filterUUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "uuid:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p0, "-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/linkplay/core/app/LPDeviceManager;
    .locals 3

    const-class v0, Lcom/linkplay/core/app/LPDeviceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/core/app/LPDeviceManager;->instance:Lcom/linkplay/core/app/LPDeviceManager;

    if-nez v1, :cond_1

    const-class v1, Lcom/linkplay/core/app/LPDeviceManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/linkplay/core/app/LPDeviceManager;->instance:Lcom/linkplay/core/app/LPDeviceManager;

    if-nez v2, :cond_0

    new-instance v2, Lcom/linkplay/core/app/LPDeviceManager;

    invoke-direct {v2}, Lcom/linkplay/core/app/LPDeviceManager;-><init>()V

    sput-object v2, Lcom/linkplay/core/app/LPDeviceManager;->instance:Lcom/linkplay/core/app/LPDeviceManager;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Lcom/linkplay/core/app/LPDeviceManager;->instance:Lcom/linkplay/core/app/LPDeviceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private initProcessLifecycleObserver(Lcom/linkplay/core/clingx/InitUpnpListener;)V
    .locals 2

    iget-boolean p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->bInitLifecycleObserver:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->bInitLifecycleObserver:Z

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/linkplay/core/app/LPDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/linkplay/core/app/LPDeviceManager$1;-><init>(Lcom/linkplay/core/app/LPDeviceManager;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->filterUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/linkplay/core/app/LPDeviceManager;->filterUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private runningBackground()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningBackGround()V

    return-void

    :cond_1
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->runningBackGround()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningBackGround()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPBonjourManager;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    :cond_4
    return-void
.end method

.method private runningForeground()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningForeGround()V

    return-void

    :cond_1
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->runningForeGround()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->runningForeGround()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/linkplay/core/app/LPBonjourManager;

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/linkplay/core/app/LPBonjourManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    :cond_4
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/app/LPBonjourManager;->setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/app/LPBonjourManager;->start(Ljava/lang/String;)V

    return-void
.end method

.method private setTimeZone(Lcom/linkplay/core/device/LPDevice;)V
    .locals 3

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getTz_info_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getTz()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/linkplay/core/utils/UTCTimeUtils;->getTimeZoneOffset()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v1, v0}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    const-string v0, "1.0"

    invoke-virtual {v1, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isAtLeast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/app/LPDeviceManager$2;

    invoke-direct {v1, p0}, Lcom/linkplay/core/app/LPDeviceManager$2;-><init>(Lcom/linkplay/core/app/LPDeviceManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/linkplay/request/LPRequestAction;->setTimezoneEx(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/LPNetworkListener;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/linkplay/core/utils/UTCTimeUtils;->getTimeZoneNum(Z)F

    move-result v0

    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {p1, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getSecurity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/linkplay/request/RequestItem$Builder;->security(Ljava/lang/String;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/request/RequestItem$Builder;->build()Lcom/linkplay/request/RequestItem;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/linkplay/request/LPRequestUrl;->getTimeZoneURL(Lcom/linkplay/request/RequestItem;F)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":0"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/linkplay/request/LPNetwork;->getInstance()Lcom/linkplay/request/LPNetwork;

    move-result-object v0

    new-instance v1, Lcom/linkplay/core/app/LPDeviceManager$3;

    invoke-direct {v1, p0}, Lcom/linkplay/core/app/LPDeviceManager$3;-><init>(Lcom/linkplay/core/app/LPDeviceManager;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/linkplay/request/LPNetwork;->get(Ljava/lang/String;Ljava/util/List;Lcom/linkplay/request/LPNetworkListener;)V

    return-void
.end method


# virtual methods
.method public addLPDevice(Lcom/linkplay/core/device/LPDevice;)V
    .locals 3

    const-string v0, "device added:"

    :try_start_0
    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "LINKPLAY_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/core/app/LPDeviceManagerUtil;->uuid2UpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/linkplay/core/app/LPDeviceManager;->setTimeZone(Lcom/linkplay/core/device/LPDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public addObserver(Lcom/linkplay/core/app/LPDeviceManagerObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->observer:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    return-void
.end method

.method public clear()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-virtual {p0}, Lcom/linkplay/core/app/LPDeviceManager;->getMasterDevices()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wiimu/upnp/c;->a()V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->clearMediaServers()V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->clearMediaRenderers()V

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public deleteLPDevice(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-static {p1}, Lcom/linkplay/core/app/LPDeviceManagerUtil;->uuid2UpnpUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/device/LPDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public deviceForID(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/linkplay/core/app/LPDeviceManager;->isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/core/device/LPDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public deviceForIP(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public deviceForMac(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;
    .locals 7

    const-string v0, ":"

    const-string v1, "-"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v3

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    return-object p0
.end method

.method public getDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getMasterDeviceWithSlaveDevice(Lcom/linkplay/core/device/LPDevice;)Lcom/linkplay/core/device/LPDevice;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getGroup()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public declared-synchronized getMasterDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getPendSlave()Lcom/linkplay/core/status/LPPendingSlave;

    move-result-object v3

    sget-object v4, Lcom/linkplay/core/status/LPPendingSlave;->LP_PENDING_MASTER:Lcom/linkplay/core/status/LPPendingSlave;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getSlaveDevices(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/linkplay/core/device/LPDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->devicelist:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getMaster_uuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/linkplay/core/app/LPDeviceManager;->isSameDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :goto_1
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->version:Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/linkplay/core/app/LPDeviceManagerParam;Lcom/linkplay/core/clingx/InitUpnpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p1, p1, Lcom/linkplay/core/app/LPDeviceManagerParam;->context:Landroid/app/Application;

    iput-object p1, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-direct {p0, p2}, Lcom/linkplay/core/app/LPDeviceManager;->initProcessLifecycleObserver(Lcom/linkplay/core/clingx/InitUpnpListener;)V

    return-void
.end method

.method public initUpnp(Landroid/app/Application;Lcom/linkplay/core/clingx/InitUpnpListener;)V
    .locals 1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->observer:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    invoke-virtual {v0, p1, p0, p2}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->initUpnp(Landroid/app/Application;Lcom/linkplay/core/app/LPDeviceManagerObserver;Lcom/linkplay/core/clingx/InitUpnpListener;)V

    return-void
.end method

.method public isAppOnForeground()Z
    .locals 4

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/linkplay/lpmdpkit/utils/LPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWifiReconnected()V
    .locals 0

    return-void
.end method

.method public removeObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->observer:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    return-void
.end method

.method public runWiFiConnect()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->onWiFiAvailable()V

    return-void

    :cond_1
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->onWiFiAvailable()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->onWiFiAvailable()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/linkplay/core/app/LPBonjourManager;

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/linkplay/core/app/LPBonjourManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    :cond_4
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/app/LPBonjourManager;->setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/app/LPBonjourManager;->start(Ljava/lang/String;)V

    return-void
.end method

.method public runWiFiDisconnect()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->onWiFiLost()V

    return-void

    :cond_1
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->onWiFiLost()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->onWiFiLost()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPBonjourManager;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    :cond_4
    return-void
.end method

.method public search([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->observer:Lcom/linkplay/core/app/LPDeviceManagerObserver;

    invoke-virtual {v0, v1, p1, p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->search(Lcom/linkplay/core/app/LPDeviceManagerParam;[Ljava/lang/String;Lcom/linkplay/core/app/LPDeviceManagerObserver;)V

    :cond_0
    return-void
.end method

.method public setLPConfiguration(Lcom/android/wiimu/config/LinkplayConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/wiimu/config/LinkplayConfiguration;->isUpnpService()Z

    move-result p0

    sput-boolean p0, Lj/a;->a:Z

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->destroy()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object v0, v0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->stopNsdService()V

    return-void

    :cond_2
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->managerParam:Lcom/linkplay/core/app/LPDeviceManagerParam;

    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManagerParam;->mdnsServiceTypes:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->setServiceTypes(Ljava/util/List;)Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->stopNsdService()V

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->getInstance()Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    sget-object v0, Lcom/linkplay/bonjour/model/LinkplayConstants;->regType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/service/nsd/NSDServiceManager;->stopNsdService()V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/linkplay/core/app/LPDeviceManager;->bonjourManager:Lcom/linkplay/core/app/LPBonjourManager;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/linkplay/core/app/LPBonjourManager;->stop()V

    :cond_5
    return-void
.end method
