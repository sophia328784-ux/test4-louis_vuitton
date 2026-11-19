.class public Lcom/android/wiimu/upnp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final e:Ljava/lang/String; = "UpnpLog"


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lorg/teleal/cling/registry/RegistryListener;

.field private c:Lorg/teleal/cling/android/AndroidUpnpService;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Lcom/android/wiimu/upnp/e$a;

    invoke-direct {p1, p0}, Lcom/android/wiimu/upnp/e$a;-><init>(Lcom/android/wiimu/upnp/e;)V

    iput-object p1, p0, Lcom/android/wiimu/upnp/e;->a:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/wiimu/upnp/e;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/wiimu/upnp/e$a;

    invoke-direct {p1, p0}, Lcom/android/wiimu/upnp/e$a;-><init>(Lcom/android/wiimu/upnp/e;)V

    iput-object p1, p0, Lcom/android/wiimu/upnp/e;->a:Landroid/content/ServiceConnection;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wiimu/upnp/e;->d:Z

    iput-object p2, p0, Lcom/android/wiimu/upnp/e;->b:Lorg/teleal/cling/registry/RegistryListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/registry/RegistryListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->b:Lorg/teleal/cling/registry/RegistryListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/wiimu/upnp/e;)Lorg/teleal/cling/android/AndroidUpnpService;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/wiimu/upnp/e;Lorg/teleal/cling/android/AndroidUpnpService;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    return-void
.end method

.method public static bridge synthetic d(Lcom/android/wiimu/upnp/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wiimu/upnp/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    .line 14
    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/wiimu/upnp/e;->b:Lorg/teleal/cling/registry/RegistryListener;

    return-void
.end method

.method public b()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->a()Lorg/teleal/cling/controlpoint/ControlPointImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c()Lorg/teleal/cling/registry/Registry;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Lorg/teleal/cling/android/AndroidUpnpService;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/wiimu/upnp/e;->c:Lorg/teleal/cling/android/AndroidUpnpService;

    return-object p0
.end method

.method public declared-synchronized e()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getRegisterItemMaintainMaxAgeSeconds()I

    move-result v0

    sput v0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->d:I

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/wiimu/upnp/e;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/wiimu/upnp/e;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wiimu/upnp/e;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wiimu/upnp/e;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wiimu/upnp/e;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "UPNP-SEARCH"

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
