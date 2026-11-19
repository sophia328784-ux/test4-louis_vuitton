.class public Lorg/teleal/cling/transport/SwitchableRouterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/SwitchableRouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;,
        Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/cling/UpnpServiceConfiguration;

.field public final b:Lorg/teleal/cling/protocol/ProtocolFactory;

.field public c:Lorg/teleal/cling/transport/RouterImpl;

.field public final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    iput-object p1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iput-object p2, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-void
.end method

.method public static i(Ljava/util/concurrent/locks/Lock;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing router lock: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/transport/SwitchableRouterImpl;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object p0
.end method

.method public final b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/RouterImpl;->b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/RouterImpl;->c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final d(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/RouterImpl;->d(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final e()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final f(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;)V
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/RouterImpl;->f(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/teleal/cling/transport/SwitchableRouterImpl;->e:Ljava/util/logging/Logger;

    const-string v2, "Disabling network transport router"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/transport/RouterImpl;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public h()Z
    .locals 5

    sget-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->e:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "Enabling network transport router"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v2, Lorg/teleal/cling/transport/RouterImpl;

    iget-object v3, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v4, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/transport/RouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    iput-object v2, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;
    :try_end_1
    .catch Lorg/teleal/cling/transport/spi/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to initialize network router: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    invoke-static {v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->c:Lorg/teleal/cling/transport/RouterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/RouterImpl;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->i(Ljava/util/concurrent/locks/Lock;)V

    throw p0
.end method

.method public final shutdown()V
    .locals 0

    invoke-virtual {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->g()Z

    return-void
.end method
