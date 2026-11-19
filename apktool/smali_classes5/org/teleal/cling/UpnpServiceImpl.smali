.class public Lorg/teleal/cling/UpnpServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/UpnpService;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/cling/UpnpServiceConfiguration;

.field public final b:Lorg/teleal/cling/controlpoint/ControlPointImpl;

.field public final c:Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

.field public final d:Lorg/teleal/cling/registry/RegistryImpl;

.field public final e:Lorg/teleal/cling/transport/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/UpnpServiceImpl;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    new-instance v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/teleal/cling/registry/RegistryListener;

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    const-string v0, ">>> Starting UPnP service..."

    sget-object v1, Lorg/teleal/cling/UpnpServiceImpl;->f:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Using configuration: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance p1, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    invoke-direct {p1, p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->c:Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    new-instance p1, Lorg/teleal/cling/registry/RegistryImpl;

    invoke-direct {p1, p0}, Lorg/teleal/cling/registry/RegistryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p2, v0

    iget-object v3, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/registry/RegistryImpl;->j(Lorg/teleal/cling/registry/RegistryListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "createRouter in UpnpServiceImpl "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->c:Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/UpnpServiceImpl;->d(Lorg/teleal/cling/protocol/ProtocolFactoryImpl;)Lorg/teleal/cling/transport/Router;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    iget-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->c:Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    iget-object p2, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    new-instance v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;

    iget-object v2, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-direct {v0, v2, p1, p2}, Lorg/teleal/cling/controlpoint/ControlPointImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)V

    iput-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->b:Lorg/teleal/cling/controlpoint/ControlPointImpl;

    const-string p0, "<<< UPnP service started successfully"

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 1

    .line 91
    new-instance v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/protocol/ProtocolFactoryImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->c:Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    return-object p0
.end method

.method public final b()Lorg/teleal/cling/registry/RegistryImpl;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->d:Lorg/teleal/cling/registry/RegistryImpl;

    return-object p0
.end method

.method public final c()Lorg/teleal/cling/transport/Router;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    return-object p0
.end method

.method public d(Lorg/teleal/cling/protocol/ProtocolFactoryImpl;)Lorg/teleal/cling/transport/Router;
    .locals 4

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    :try_start_0
    const-string v0, "UPNP-SEARCH"

    const-string v1, " createRouter for send msg"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/transport/RouterImpl;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/transport/RouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521b\u5efaRouter:error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lorg/teleal/cling/transport/RouterImpl;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/transport/RouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lk/a;->a:Ljava/util/HashMap;

    new-instance v0, Lorg/teleal/cling/UpnpServiceImpl$1;

    invoke-direct {v0, p0}, Lorg/teleal/cling/UpnpServiceImpl$1;-><init>(Lorg/teleal/cling/UpnpServiceImpl;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->e:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0}, Lorg/teleal/cling/transport/Router;->shutdown()V

    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/UpnpServiceImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object p0
.end method
