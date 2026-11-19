.class Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;
.super Lorg/teleal/cling/UpnpServiceImpl;
.source "SourceFile"


# instance fields
.field public final synthetic g:Landroid/net/wifi/WifiManager;

.field public final synthetic h:Landroid/net/ConnectivityManager;


# direct methods
.method public varargs constructor <init>(Lorg/teleal/cling/android/AndroidUpnpServiceImpl;Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p4, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;->g:Landroid/net/wifi/WifiManager;

    iput-object p5, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;->h:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2, p3}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    return-void
.end method


# virtual methods
.method public final d(Lorg/teleal/cling/protocol/ProtocolFactoryImpl;)Lorg/teleal/cling/transport/Router;
    .locals 3

    const-string v0, "LINKPLAY_SDK"

    const-string v1, "AndroidUpnpServiceImpl: createRouter"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    iget-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v2, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;->g:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl$1;->h:Landroid/net/ConnectivityManager;

    invoke-direct {v0, v1, p1, v2, p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-object v0
.end method
