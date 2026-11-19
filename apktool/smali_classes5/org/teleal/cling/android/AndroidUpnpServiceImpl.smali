.class public Lorg/teleal/cling/android/AndroidUpnpServiceImpl;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;
    }
.end annotation


# static fields
.field public static d:I = 0x3c


# instance fields
.field public b:Lorg/teleal/cling/UpnpService;

.field public final c:Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;

    invoke-direct {v0, p0}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;-><init>(Lorg/teleal/cling/android/AndroidUpnpServiceImpl;)V

    iput-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->c:Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->c:Lorg/teleal/cling/android/AndroidUpnpServiceImpl$Binder;

    return-object p0
.end method

.method public final onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "AndroidUpnpServiceImpl: UPnP Service Create ++++"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    new-instance v1, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;

    sget v0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->d:I

    new-instance v3, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    invoke-direct {v3, v5, v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;-><init>(Landroid/net/wifi/WifiManager;I)V

    const/4 v0, 0x0

    new-array v4, v0, [Lorg/teleal/cling/registry/RegistryListener;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;-><init>(Lorg/teleal/cling/android/AndroidUpnpServiceImpl;Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    iput-object v1, v2, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "AndroidUpnpServiceImpl:onDestroy: UpnpService onDestroy"

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AndroidUpnpServiceImpl:onDestroy: unregister network state receiver.."

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    check-cast v0, Lorg/teleal/cling/UpnpServiceImpl;

    iget-object v0, v0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    check-cast v0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->b:Lorg/teleal/cling/UpnpService;

    check-cast p0, Lorg/teleal/cling/UpnpServiceImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->e()V

    return-void
.end method
