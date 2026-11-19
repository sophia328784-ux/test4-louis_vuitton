.class public Lorg/teleal/cling/transport/RouterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/Router;


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/cling/UpnpServiceConfiguration;

.field public final b:Lorg/teleal/cling/protocol/ProtocolFactory;

.field public final c:Lorg/teleal/cling/transport/spi/StreamClient;

.field public final d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-> MulticastReceivers put normal , 229 mDNS reveivers. "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPNP-SEARCH"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iput-object p2, p0, Lorg/teleal/cling/transport/RouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    const-string p2, "Starting networking services going..."

    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/teleal/cling/UpnpServiceConfiguration;->h()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object p2

    iput-object p2, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    const-string v1, "Starting networking services successfully..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/teleal/cling/UpnpServiceConfiguration;->e()Lorg/teleal/cling/transport/spi/StreamClient;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->c:Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-interface {p2}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->e()[Ljava/net/NetworkInterface;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v4, v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->r(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    move v2, p2

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v4, v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->l(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    array-length v1, p1

    move v2, p2

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v4, v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->c(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->b()[Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    :goto_3
    if-ge p2, v1, :cond_4

    aget-object v2, p1, p2

    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->j()Lorg/teleal/cling/transport/impl/DatagramIOImpl;

    move-result-object v3

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v3, v4}, Lorg/teleal/cling/UpnpServiceConfiguration;->s(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting stream server on address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-interface {v1, v2, p0}, Lorg/teleal/cling/transport/spi/StreamServer;->init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;)V

    iget-object v1, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->n()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {v1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting multicast receiver on interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->b()Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Lorg/teleal/cling/transport/spi/MulticastReceiver;->init(Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V

    iget-object v1, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {v1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting datagram I/O on address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->b()Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Lorg/teleal/cling/transport/spi/DatagramIO;->init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V

    iget-object v1, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->p()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {v1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method public static g(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_6

    const-string v0, "St"

    invoke-virtual {p0, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "MediaServer"

    return-object p0

    :cond_3
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "MediaRenderer"

    return-object p0

    :cond_4
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->GETWAYDEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "InternetGatewayDevice"

    return-object p0

    :cond_5
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->WFADEVICE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "WFADevice"

    return-object p0

    :cond_6
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object p0
.end method

.method public final b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 10

    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    const-string v1, "Received asynchronous message: "

    const-string v2, "No protocol, ignoring received message: "

    :try_start_0
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-interface {v3, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->c(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;

    move-result-object v3

    iget-object v4, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v6, v5

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-object v5, v6

    :catchall_1
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    iget-object v5, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {v5}, Lorg/teleal/cling/transport/RouterImpl;->g(Lorg/teleal/cling/model/message/UpnpHeaders;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lk/a;->a(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_5
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v8, "UPNP-SEARCH"

    const-string v9, "Router received info: "

    if-eqz v7, :cond_1

    if-eqz v6, :cond_5

    :try_start_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mediaType is empty, return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_3

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->m()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Handling received datagram failed - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->c:Lorg/teleal/cling/transport/spi/StreamClient;

    if-nez p0, :cond_0

    const-string p0, "UPNP-SEARCH"

    const-string v2, "No StreamClient available"

    invoke-static {p0, v2}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "No StreamClient available, ignoring: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending via TCP unicast stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, p1}, Lorg/teleal/cling/transport/spi/StreamClient;->a(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public final declared-synchronized d(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/StreamServer;

    if-eqz v1, :cond_1

    new-instance v2, Lorg/teleal/cling/model/NetworkAddress;

    invoke-interface {v1}, Lorg/teleal/cling/transport/spi/StreamServer;->getPort()I

    move-result v1

    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v3, p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->i(Ljava/net/InetAddress;)[B

    move-result-object v3

    invoke-direct {v2, p1, v1, v3}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-interface {v2, v3}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->i(Ljava/net/InetAddress;)[B

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/model/NetworkAddress;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {v1}, Lorg/teleal/cling/transport/spi/StreamServer;->getPort()I

    move-result v1

    invoke-direct {v3, v4, v1, v2}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final e()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->d:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    return-object p0
.end method

.method public final f(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received synchronous stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->o()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 1

    iget-object p0, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/spi/DatagramIO;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized shutdown()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    const-string v1, "Shutting down network services"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/transport/RouterImpl;->c:Lorg/teleal/cling/transport/spi/StreamClient;

    if-eqz v1, :cond_0

    const-string v1, "Stopping stream client connection management/pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->c:Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-interface {v0}, Lorg/teleal/cling/transport/spi/StreamClient;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping stream server on address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {v1}, Lorg/teleal/cling/transport/spi/StreamServer;->stop()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping multicast receiver on interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-interface {v1}, Lorg/teleal/cling/transport/spi/MulticastReceiver;->stop()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->h:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping datagram I/O on address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {v1}, Lorg/teleal/cling/transport/spi/DatagramIO;->stop()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
