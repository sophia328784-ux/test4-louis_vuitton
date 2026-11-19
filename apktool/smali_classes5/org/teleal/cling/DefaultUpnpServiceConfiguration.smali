.class public Lorg/teleal/cling/DefaultUpnpServiceConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/UpnpServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor;,
        Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

.field public final d:Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

.field public final e:Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;

.field public final f:Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

.field public final g:Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

.field public final h:Lorg/teleal/cling/model/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    sget-boolean p2, Lorg/teleal/cling/model/ModelUtil;->a:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Unsupported runtime environment, use org.teleal.cling.android.AndroidUpnpServiceConfiguration"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->a:I

    invoke-virtual {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->u()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    invoke-direct {p1}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->c:Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    new-instance p1, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    invoke-direct {p1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->d:Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    new-instance p1, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;

    invoke-direct {p1}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->e:Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->v()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->f:Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->x()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->g:Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    new-instance p1, Lorg/teleal/cling/model/Namespace;

    invoke-direct {p1}, Lorg/teleal/cling/model/Namespace;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->h:Lorg/teleal/cling/model/Namespace;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final b()Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->c:Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    return-object p0
.end method

.method public final c(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;
    .locals 2

    new-instance p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    new-instance v0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->j()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->f()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    return-object p0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public e()Lorg/teleal/cling/transport/spi/StreamClient;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()[Lorg/teleal/cling/model/types/ServiceType;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/teleal/cling/model/types/ServiceType;

    return-object p0
.end method

.method public final g()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->g:Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    return-object p0
.end method

.method public final getNamespace()Lorg/teleal/cling/model/Namespace;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->h:Lorg/teleal/cling/model/Namespace;

    return-object p0
.end method

.method public final h()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    iget v0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->a:I

    invoke-virtual {p0, v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->w(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->e:Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;

    return-object p0
.end method

.method public final j()Lorg/teleal/cling/transport/impl/DatagramIOImpl;
    .locals 1

    new-instance p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;

    new-instance v0, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    invoke-direct {v0}, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;-><init>()V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/DatagramIOImpl;-><init>(Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;)V

    return-object p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method

.method public final l(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;
    .locals 2

    new-instance p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    new-instance v0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->a()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->g()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    return-object p0
.end method

.method public m()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public n()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public o()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public p()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->d:Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    return-object p0
.end method

.method public final r(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;
    .locals 2

    new-instance p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    new-instance v0, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->h()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->g()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;-><init>(Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;)V

    return-object p0
.end method

.method public s(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public shutdown()V
    .locals 2

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->b:Ljava/util/concurrent/Executor;

    instance-of v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->i:Ljava/util/logging/Logger;

    const-string v1, "Shutting down thread pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method

.method public final t()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->f:Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    return-object p0
.end method

.method public u()Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor;

    invoke-direct {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor;-><init>()V

    return-object p0
.end method

.method public v()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .locals 0

    new-instance p0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-object p0
.end method

.method public w(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 0

    new-instance p0, Lorg/teleal/cling/transport/impl/NetworkAddressFactoryImpl;

    invoke-direct {p0, p1}, Lorg/teleal/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-object p0
.end method

.method public x()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    .locals 0

    new-instance p0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;

    invoke-direct {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    return-object p0
.end method
