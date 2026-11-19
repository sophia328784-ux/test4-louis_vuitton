.class public Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final UpnpLog:Ljava/lang/String; = "UpnpLog"


# instance fields
.field private mInitUpnpListener:Lcom/linkplay/core/clingx/InitUpnpListener;

.field private registryListener:Lorg/teleal/cling/registry/RegistryListener;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceIsBinded:Z

.field private upnpService:Lorg/teleal/cling/android/AndroidUpnpService;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;

    invoke-direct {p1, p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;-><init>(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)V

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceIsBinded:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;

    invoke-direct {p1, p0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate$1;-><init>(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)V

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceIsBinded:Z

    iput-object p2, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->registryListener:Lorg/teleal/cling/registry/RegistryListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lcom/linkplay/core/clingx/InitUpnpListener;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->mInitUpnpListener:Lcom/linkplay/core/clingx/InitUpnpListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/registry/RegistryListener;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->registryListener:Lorg/teleal/cling/registry/RegistryListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;)Lorg/teleal/cling/android/AndroidUpnpService;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceIsBinded:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;Lorg/teleal/cling/android/AndroidUpnpService;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    return-void
.end method


# virtual methods
.method public executeUpnpSearch()V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->c()V

    :cond_0
    return-void
.end method

.method public executeUpnpSearchX(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistryListener()Lorg/teleal/cling/registry/Registry;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpnpService()Lorg/teleal/cling/android/AndroidUpnpService;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->upnpService:Lorg/teleal/cling/android/AndroidUpnpService;

    return-object p0
.end method

.method public declared-synchronized initUpnpSearch(Landroid/app/Application;Lcom/linkplay/core/clingx/InitUpnpListener;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->mInitUpnpListener:Lcom/linkplay/core/clingx/InitUpnpListener;

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getRegisterItemMaintainMaxAgeSeconds()I

    move-result p2

    sput p2, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->d:I

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRegistryListener(Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->registryListener:Lorg/teleal/cling/registry/RegistryListener;

    return-void
.end method

.method public declared-synchronized stopUpnpSearch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceIsBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->serviceIsBinded:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "LINKPLAY_SDK"

    const-string v1, "\u505c\u6b62\u53d1\u9001UpnpSearch\u641c\u7d22\u8bf7\u6c42."

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
