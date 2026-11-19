.class public Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
.super Lorg/teleal/cling/DefaultUpnpServiceConfiguration;
.source "SourceFile"


# static fields
.field public static final q:Ljava/util/logging/Logger;


# instance fields
.field public final j:Landroid/net/wifi/WifiManager;

.field public final k:I

.field public final l:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final n:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final o:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final p:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;-><init>(Landroid/net/wifi/WifiManager;II)V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->j:Landroid/net/wifi/WifiManager;

    iput p3, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->k:I

    const-string p1, "org.xml.sax.driver"

    const-string p2, "org.xmlpull.v1.sax2.Driver"

    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static y(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->q:Ljava/util/logging/Logger;

    const-string v1, "Shutting down thread pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()Lorg/teleal/cling/transport/spi/StreamClient;
    .locals 1

    new-instance p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;

    new-instance v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$1;

    invoke-direct {v0}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;-><init>()V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;)V

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->k:I

    if-gez p0, :cond_0

    const/16 p0, 0x3c

    :cond_0
    return p0
.end method

.method public final m()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public final n()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public final o()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public final p()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public final s(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;
    .locals 1

    new-instance p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;

    new-instance v0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->c()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;)V

    return-object p0
.end method

.method public final shutdown()V
    .locals 1

    invoke-super {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->shutdown()V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->y(Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->y(Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->y(Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->y(Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->p:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->y(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public final u()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$2;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method

.method public final v()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .locals 0

    new-instance p0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;-><init>()V

    return-object p0
.end method

.method public final w(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 0

    new-instance p1, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;

    iget-object p0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->j:Landroid/net/wifi/WifiManager;

    invoke-direct {p1, p0}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;-><init>(Landroid/net/wifi/WifiManager;)V

    return-object p1
.end method

.method public final x()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    .locals 0

    new-instance p0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;-><init>()V

    return-object p0
.end method
