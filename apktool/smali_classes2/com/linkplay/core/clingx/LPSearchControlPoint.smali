.class public Lcom/linkplay/core/clingx/LPSearchControlPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static backgroundSleep:Z = false

.field public static forceGround:Z = true

.field private static instance:Lcom/linkplay/core/clingx/LPSearchControlPoint;

.field public static upnpservice:Lorg/teleal/cling/android/AndroidUpnpService;


# instance fields
.field private final MAX_BACKGROUND_TIME:J

.field private forcegroundTimer:Ljava/util/Timer;

.field private mContext:Landroid/app/Application;

.field private maxMaintainAgeSeconds:I

.field private multiLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private openMulti:Z

.field private preTime:J

.field private registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

.field private searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

.field upnpSearchTimer:Ljava/util/Timer;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    const/16 v1, 0x3c

    iput v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->maxMaintainAgeSeconds:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->openMulti:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multiLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    const-wide/32 v0, 0xdac0

    iput-wide v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->MAX_BACKGROUND_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->preTime:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/clingx/LPSearchControlPoint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->openMulti:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/clingx/LPSearchControlPoint;)J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->preTime:J

    return-wide v0
.end method

.method private executeUpnpSearchByTimer([Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    :cond_1
    iget-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    new-instance v2, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;

    invoke-direct {v2, p0, p1}, Lcom/linkplay/core/clingx/LPSearchControlPoint$2;-><init>(Lcom/linkplay/core/clingx/LPSearchControlPoint;[Ljava/lang/String;)V

    const-wide/16 v3, 0x5dc

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;
    .locals 2

    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->instance:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/core/clingx/LPSearchControlPoint;->instance:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/core/clingx/LPSearchControlPoint;

    invoke-direct {v1}, Lcom/linkplay/core/clingx/LPSearchControlPoint;-><init>()V

    sput-object v1, Lcom/linkplay/core/clingx/LPSearchControlPoint;->instance:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->instance:Lcom/linkplay/core/clingx/LPSearchControlPoint;

    return-object v0
.end method

.method private startForcegroundTimer()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->forcegroundTimer:Ljava/util/Timer;

    new-instance v1, Lcom/linkplay/core/clingx/LPSearchControlPoint$1;

    invoke-direct {v1, p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint$1;-><init>(Lcom/linkplay/core/clingx/LPSearchControlPoint;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private upnpSearch([Ljava/lang/String;Lcom/linkplay/core/app/LPDeviceManagerObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->executeUpnpSearchByTimer([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->startForcegroundTimer()V

    return-void
.end method


# virtual methods
.method public closeMultiLock()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multiLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->openMulti:Z

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multiLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearchTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->forcegroundTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->forcegroundTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    return-object p0
.end method

.method public getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    return-object p0
.end method

.method public getRegisterItemMaintainMaxAgeSeconds()I
    .locals 0

    iget p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->maxMaintainAgeSeconds:I

    return p0
.end method

.method public getWiimuUpnpTemplate()Lcom/android/wiimu/upnp/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initUpnp(Landroid/app/Application;Lcom/linkplay/core/app/LPDeviceManagerObserver;Lcom/linkplay/core/clingx/InitUpnpListener;)V
    .locals 2

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->me()Lcom/linkplay/core/clingx/LPDlnaPlayerData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/clingx/LPDlnaPlayerData;->resetDlnaPlayerData(Landroid/app/Application;)V

    invoke-static {}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->me()Lcom/linkplay/core/clingx/LPDlnaMediaServerData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/linkplay/core/clingx/LPDlnaMediaServerData;->resetDlnaPlayerData(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    invoke-direct {v0, p2}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;-><init>(Lcom/linkplay/core/app/LPDeviceManagerObserver;)V

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    :cond_1
    iget-object p2, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->registryListener:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    invoke-virtual {p2, v0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->setRegistryListener(Lorg/teleal/cling/registry/RegistryListener;)V

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->searchTemplate:Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    invoke-virtual {p0, p1, p3}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->initUpnpSearch(Landroid/app/Application;Lcom/linkplay/core/clingx/InitUpnpListener;)Z

    return-void
.end method

.method public openMultiLock()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->preTime:J

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multiLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->openMulti:Z

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->multiLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public removeAndrefreshDevices()V
    .locals 4

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->getRegistryListener()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/teleal/cling/registry/Registry;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->getUpnpService()Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    instance-of v3, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v2

    check-cast v1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {v2, v1}, Lorg/teleal/cling/registry/RegistryImpl;->b(Lorg/teleal/cling/model/meta/LocalDevice;)Z

    goto :goto_0

    :cond_5
    instance-of v3, v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v2

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2, v1}, Lorg/teleal/cling/registry/RegistryImpl;->g(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public researchUpnpDevices()V
    .locals 0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->getRegistryListener()Lorg/teleal/cling/registry/Registry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/registry/Registry;->e()V

    invoke-interface {p0}, Lorg/teleal/cling/registry/Registry;->h()V

    :cond_0
    return-void
.end method

.method public search(Lcom/linkplay/core/app/LPDeviceManagerParam;[Ljava/lang/String;Lcom/linkplay/core/app/LPDeviceManagerObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/linkplay/core/app/LPDeviceManagerParam;->context:Landroid/app/Application;

    iput-object v0, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->mContext:Landroid/app/Application;

    iget p1, p1, Lcom/linkplay/core/app/LPDeviceManagerParam;->registerMaintainMaxAgeSeconds:I

    iput p1, p0, Lcom/linkplay/core/clingx/LPSearchControlPoint;->maxMaintainAgeSeconds:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->upnpSearch([Ljava/lang/String;Lcom/linkplay/core/app/LPDeviceManagerObserver;)V

    return-void
.end method
