.class public Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final activeRetrievals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private rd:Lorg/teleal/cling/model/meta/RemoteDevice;

.field private upnpHeaders:Lorg/teleal/cling/model/message/UpnpHeaders;

.field private final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/RemoteDevice;Lorg/teleal/cling/model/message/UpnpHeaders;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/teleal/cling/UpnpService;

    iput-object p2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    iput-object p3, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpHeaders:Lorg/teleal/cling/model/message/UpnpHeaders;

    return-void
.end method

.method private describeMediaServerService(Lorg/teleal/cling/model/meta/RemoteDevice;Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    iget-object p1, p2, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v0, p2, Lorg/teleal/cling/model/meta/RemoteService;->f:Ljava/net/URI;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/meta/RemoteDevice;->t(Ljava/net/URI;)Ljava/net/URL;

    move-result-object p1

    new-instance v0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending service descriptor retrieval message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/teleal/cling/transport/Router;->c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    const-string v2, "UPNP-SEARCH"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "RetrieveRemoteDescriptors Could not retrieve service descriptor: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Could not retrieve service descriptor: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_0
    iget-object v4, v0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v4, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "RetrieveRemoteDescriptors serviceDescMsg.getOperation().isFailed(): "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Service descriptor retrieval failed: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v5, v0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v7, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v5, v6, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-eqz v5, :cond_2

    iget-object v6, v5, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v6, :cond_2

    check-cast v6, Lorg/teleal/common/util/MimeType;

    iget-object v6, v6, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    sget-object v7, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iget-object v8, v7, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v5, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v5, Lorg/teleal/common/util/MimeType;

    iget-object v5, v5, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    iget-object v6, v7, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received service descriptor without or with invalid Content-Type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget p1, v4, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "describeMediaServerService statusCode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Received service descriptor, hydrating service model: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->g()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p0

    invoke-interface {p0, p2, v5}, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;->a(Lorg/teleal/cling/model/meta/RemoteService;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteService;

    return-object p0

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Received empty descriptor:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3
.end method

.method private isRemoteMediaServer(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediaserver"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public describe()V
    .locals 7

    .line 529
    new-instance v0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    iget-object v2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 530
    iget-object v2, v2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 531
    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 532
    iget-object v2, v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 533
    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending device descriptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPNP-SEARCH"

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending device descriptor retrieval message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/teleal/cling/transport/Router;->c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "describe Exception e = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 539
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "describe  deviceDescMsg: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "describe  descriptor retrieval failed, no response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 541
    iget-object v1, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 542
    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 543
    iget-object v1, v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v2, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device descriptor retrieval failed, no response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 547
    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 548
    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 549
    iget-object p0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 550
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_0
    iget-object v1, v0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    .line 553
    check-cast v1, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "describe  Device descriptor retrieval failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 555
    iget-object v3, v3, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 556
    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 557
    iget-object v3, v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 558
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v2, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Device descriptor retrieval failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 562
    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 563
    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 564
    iget-object p0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 565
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 567
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 568
    :cond_1
    iget-object v3, v0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 569
    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-eqz v3, :cond_2

    .line 570
    iget-object v4, v3, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 571
    check-cast v4, Lorg/teleal/common/util/MimeType;

    .line 572
    iget-object v4, v4, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    .line 573
    sget-object v5, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    .line 574
    iget-object v6, v5, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    .line 575
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    iget-object v3, v3, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    .line 577
    check-cast v3, Lorg/teleal/common/util/MimeType;

    .line 578
    iget-object v3, v3, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    .line 579
    iget-object v4, v5, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 581
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "describe  describe() !deviceDescMsg.isContentTypeTextUDA() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 582
    iget-object v4, v4, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 583
    check-cast v4, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 584
    iget-object v4, v4, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 585
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received device descriptor without or with invalid Content-Type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 587
    iget-object v5, v5, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 588
    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 589
    iget-object v5, v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 590
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 592
    :goto_1
    iget v3, v1, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "describeService statusCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 595
    :cond_3
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received root device descriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe(Ljava/lang/String;)V

    return-void
.end method

.method public describe(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Cause was: "

    const-string v3, ", ex = "

    const-string v4, "UPNP-SEARCH"

    const-string v0, "RetrieveRemoteDescriptors getRegistry addDevice: "

    const-string v5, "Adding fully hydrated remote device to registry: "

    const-string v6, "Device service description failed: "

    const-string v7, "RetrieveRemoteDescriptors describe(String descriptorXML) hydratedDevice == null: "

    const-string v8, "RetrieveRemoteDescriptors describe() describeServices: "

    const-string v9, "Hydrating described device\'s services: "

    const-string v10, "Remote device described (without services) notifying listeners: "

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v13

    invoke-interface {v13}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v13

    invoke-interface {v13}, Lorg/teleal/cling/UpnpServiceConfiguration;->t()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v13

    iget-object v14, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v15, v14, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v15, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v15, v15, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    move-object/from16 v11, p1

    invoke-interface {v13, v14, v11}, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;->b(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v11

    check-cast v11, Lorg/teleal/cling/model/meta/RemoteDevice;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/teleal/cling/registry/RegistrationException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    iget-object v12, v11, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v12, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iput-object v15, v12, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    sget-object v12, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v10

    invoke-interface {v10}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/teleal/cling/registry/RegistryImpl;->u(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    move-result v10
    :try_end_1
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/teleal/cling/registry/RegistrationException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v8

    if-nez v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    new-instance v5, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v5}, Lorg/teleal/cling/registry/RegistryImpl;->t(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    move-object v12, v11

    move v11, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v12, v11

    move v11, v10

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v12, v11

    move v11, v10

    goto/16 :goto_5

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/teleal/cling/registry/RegistryImpl;->i(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    :try_end_2
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/teleal/cling/registry/RegistrationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_3
    move-exception v0

    move-object v12, v11

    :goto_0
    const/4 v11, 0x0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v12, v11

    :goto_1
    const/4 v11, 0x0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v12, v11

    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_2

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RetrieveRemoteDescriptors Adding hydrated device to registry failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding hydrated device to registry failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/teleal/cling/registry/RegistryImpl;->t(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_7

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RetrieveRemoteDescriptors Could not hydrate device or its services from descriptor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not hydrate device or its services from descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/teleal/cling/registry/RegistryImpl;->t(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto :goto_7

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "RetrieveRemoteDescriptors Could not validate device model: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not validate device model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/teleal/cling/model/ValidationException;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/ValidationError;

    sget-object v4, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_6

    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {v1, v12, v0}, Lorg/teleal/cling/registry/RegistryImpl;->t(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    :cond_2
    :goto_7
    return-void
.end method

.method public describeService_loc_xml(Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    iget-object v0, p1, Lorg/teleal/cling/model/meta/Service;->b:Lorg/teleal/cling/model/types/ServiceId;

    iget-object v1, v0, Lorg/teleal/cling/model/types/ServiceId;->b:Ljava/lang/String;

    const-string v2, "AVTransport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n  <specVersion>\n    <major>1</major>\n    <minor>0</minor>\n  </specVersion>\n  <actionList>\n    <action>\n      <name>GetCurrentTransportActions</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Actions</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTransportActions</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetDeviceCapabilities</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayMedia</name>\n          <direction>out</direction>\n          <relatedStateVariable>PossiblePlaybackStorageMedia</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RecMedia</name>\n          <direction>out</direction>\n          <relatedStateVariable>PossibleRecordStorageMedia</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RecQualityModes</name>\n          <direction>out</direction>\n          <relatedStateVariable>PossibleRecordQualityModes</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetMediaInfo</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>NrTracks</name>\n          <direction>out</direction>\n          <relatedStateVariable>NumberOfTracks</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>MediaDuration</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentMediaDuration</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentURI</name>\n          <direction>out</direction>\n          <relatedStateVariable>AVTransportURI</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentURIMetaData</name>\n          <direction>out</direction>\n          <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>NextURI</name>\n          <direction>out</direction>\n          <relatedStateVariable>NextAVTransportURI</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>NextURIMetaData</name>\n          <direction>out</direction>\n          <relatedStateVariable>NextAVTransportURIMetaData</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackSource</name>\n          <direction>out</direction>\n          <relatedStateVariable>TrackSource</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayMedium</name>\n          <direction>out</direction>\n          <relatedStateVariable>PlaybackStorageMedium</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RecordMedium</name>\n          <direction>out</direction>\n          <relatedStateVariable>RecordStorageMedium</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>WriteStatus</name>\n          <direction>out</direction>\n          <relatedStateVariable>RecordMediumWriteStatus</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetPositionInfo</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Track</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrack</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackDuration</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackDuration</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackMetaData</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackMetaData</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackURI</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackURI</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RelTime</name>\n          <direction>out</direction>\n          <relatedStateVariable>RelativeTimePosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>AbsTime</name>\n          <direction>out</direction>\n          <relatedStateVariable>AbsoluteTimePosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RelCount</name>\n          <direction>out</direction>\n          <relatedStateVariable>RelativeCounterPosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>AbsCount</name>\n          <direction>out</direction>\n          <relatedStateVariable>AbsoluteCounterPosition</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetTransportInfo</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentTransportState</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportState</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentTransportStatus</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportStatus</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentSpeed</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetTransportSettings</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayMode</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentPlayMode</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RecQualityMode</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentRecordQualityMode</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Next</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Pause</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Play</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Speed</name>\n          <direction>in</direction>\n          <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Previous</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Seek</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Unit</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_SeekMode</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Target</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_SeekTarget</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>SetAVTransportURI</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentURI</name>\n          <direction>in</direction>\n          <relatedStateVariable>AVTransportURI</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentURIMetaData</name>\n          <direction>in</direction>\n          <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>Stop</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetPlayType</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayType</name>\n          <direction>out</direction>\n          <relatedStateVariable>PlayType</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetInfoEx</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentTransportState</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportState</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentTransportStatus</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportStatus</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentSpeed</name>\n          <direction>out</direction>\n          <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Track</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrack</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackDuration</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackDuration</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackMetaData</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackMetaData</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackURI</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentTrackURI</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RelTime</name>\n          <direction>out</direction>\n          <relatedStateVariable>RelativeTimePosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>AbsTime</name>\n          <direction>out</direction>\n          <relatedStateVariable>AbsoluteTimePosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>RelCount</name>\n          <direction>out</direction>\n          <relatedStateVariable>RelativeCounterPosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>AbsCount</name>\n          <direction>out</direction>\n          <relatedStateVariable>AbsoluteCounterPosition</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>LoopMode</name>\n          <direction>out</direction>\n          <relatedStateVariable>LoopMode</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayType</name>\n          <direction>out</direction>\n          <relatedStateVariable>PlayType</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentVolume</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentVolume</relatedStateVariable>\n        </argument>\n         <argument>\n          <name>CurrentMute</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentVolume</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentChannel</name>\n          <direction>out</direction>\n          <relatedStateVariable>CurrentVolume</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>SlaveFlag</name>\n          <direction>out</direction>\n          <relatedStateVariable>SlaveFlag</relatedStateVariable>\n        </argument>\n        <argument>\n            <name>PlayType</name>\n            <direction>out</direction>\n            <relatedStateVariable>PlayType</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>SlaveList</name>\n          <direction>out</direction>\n          <relatedStateVariable>SlaveList</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PlayMedium</name>\n          <direction>out</direction>\n          <relatedStateVariable>PlaybackStorageMedium</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TrackSource</name>\n          <direction>out</direction>\n          <relatedStateVariable>TrackSource</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>InternetAccess</name>\n          <direction>out</direction>\n          <relatedStateVariable>InternetAccess</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>VerUpdateFlag</name>\n          <direction>out</direction>\n          <relatedStateVariable>VerUpdateFlag</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>VerUpdateStatus</name>\n          <direction>out</direction>\n          <relatedStateVariable>VerUpdateStatus</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>BatteryFlag</name>\n          <direction>out</direction>\n          <relatedStateVariable>BatteryFlag</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>BatteryMains</name>\n          <direction>out</direction>\n          <relatedStateVariable>BatteryMains</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>BatteryPercent</name>\n          <direction>out</direction>\n          <relatedStateVariable>BatteryPercent</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>AlarmFlag</name>\n          <direction>out</direction>\n          <relatedStateVariable>AlarmFlag</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>TimeStamp</name>\n          <direction>out</direction>\n          <relatedStateVariable>TimeStamp</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>SubNum</name>\n          <direction>out</direction>\n          <relatedStateVariable>SubNum</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>SpotifyActive</name>\n          <direction>out</direction>\n          <relatedStateVariable>SpotifyActive</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>SetPlayMode</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>NewPlayMode</name>\n          <direction>in</direction>\n          <relatedStateVariable>CurrentPlayMode</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>SetPDAClientCfg</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>clientId</name>\n          <direction>in</direction>\n          <relatedStateVariable>ClientID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>hostId</name>\n          <direction>in</direction>\n          <relatedStateVariable>HostID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>linkplay_account_info</name>\n          <direction>in</direction>\n          <relatedStateVariable>Linkplay_account_info</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>certificateCrt</name>\n          <direction>in</direction>\n          <relatedStateVariable>CertificateCrt</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>privateKey</name>\n          <direction>in</direction>\n          <relatedStateVariable>PrivateKey</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>GetPDADeviceInfo</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>GetDeviceInfo</name>\n          <direction>out</direction>\n          <relatedStateVariable>GetDeviceInfo</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>UUID</name>\n          <direction>out</direction>\n          <relatedStateVariable>UUID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>MacAddress</name>\n          <direction>out</direction>\n          <relatedStateVariable>MacAddress</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>SeekForward</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n      <name>SeekBackward</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n  </actionList>\n  <serviceStateTable>\n    <stateVariable sendEvents=\"no\">\n      <name>TransportStatus</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>OK</allowedValue>\n        <allowedValue>ERROR_OCCURRED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentTrackMetaData</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>RelativeCounterPosition</name>\n      <dataType>i4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>A_ARG_TYPE_InstanceID</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>A_ARG_TYPE_SeekTarget</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PlaybackStorageMedium</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>UNKNOWN</allowedValue>\n        <allowedValue>CD-DA</allowedValue>\n        <allowedValue>DVD-VIDEO</allowedValue>\n        <allowedValue>HDD</allowedValue>\n        <allowedValue>NETWORK</allowedValue>\n        <allowedValue>NONE</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>RelativeTimePosition</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PossibleRecordStorageMedia</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentPlayMode</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NORMAL</allowedValue>\n        <allowedValue>REPEAT_TRACK</allowedValue>\n        <allowedValue>REPEAT_ALL</allowedValue>\n      </allowedValueList>\n      <defaultValue>NORMAL</defaultValue>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>TransportPlaySpeed</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>1</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PossiblePlaybackStorageMedia</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>UNKNOWN</allowedValue>\n        <allowedValue>CD-DA</allowedValue>\n        <allowedValue>DVD-VIDEO</allowedValue>\n        <allowedValue>HDD</allowedValue>\n        <allowedValue>NETWORK</allowedValue>\n        <allowedValue>NONE</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>AbsoluteTimePosition</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentTrack</name>\n      <dataType>ui4</dataType>\n      <allowedValueRange>\n        <minimum>0</minimum>\n        <maximum>65535</maximum>\n        <step>1</step>\n      </allowedValueRange>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentTrackURI</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentTransportActions</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>NumberOfTracks</name>\n      <dataType>ui4</dataType>\n      <allowedValueRange>\n        <minimum>0</minimum>\n        <maximum>65535</maximum>\n      </allowedValueRange>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>AVTransportURI</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>AbsoluteCounterPosition</name>\n      <dataType>i4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentRecordQualityMode</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentMediaDuration</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>A_ARG_TYPE_SeekMode</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>REL_TIME</allowedValue>\n        <allowedValue>TRACK_NR</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>AVTransportURIMetaData</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>RecordStorageMedium</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>RecordMediumWriteStatus</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"yes\">\n      <name>LastChange</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentTrackDuration</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>TransportState</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>STOPPED</allowedValue>\n        <allowedValue>PAUSED_PLAYBACK</allowedValue>\n        <allowedValue>PLAYING</allowedValue>\n        <allowedValue>TRANSITIONING</allowedValue>\n        <allowedValue>NO_MEDIA_PRESENT</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PossibleRecordQualityModes</name>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>NOT_IMPLEMENTED</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>TransportRemote</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PlayType</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>NextAVTransportURI</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>NextAVTransportURIMetaData</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>TrackSource</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>SlaveFlag</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PlayType</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>SlaveList</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CurrentVolume</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>LoopMode</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>InternetAccess</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>VerUpdateFlag</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>VerUpdateStatus</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>BatteryFlag</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>BatteryMains</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>BatteryPercent</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>AlarmFlag</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>TimeStamp</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>SubNum</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>SpotifyActive</name>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>ClientID</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>HostID</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>Linkplay_account_info</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>CertificateCrt</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>PrivateKey</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>GetDeviceInfo</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>UUID</name>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"no\">\n      <name>MacAddress</name>\n      <dataType>string</dataType>\n    </stateVariable>\n  </serviceStateTable>\n</scpd>"

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/teleal/cling/model/types/ServiceId;->b:Ljava/lang/String;

    iget-object v0, v0, Lorg/teleal/cling/model/types/ServiceId;->b:Ljava/lang/String;

    const-string v2, "ConnectionManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\n<?xml version=\"1.0\"?>\n<scpd\n    xmlns=\"urn:schemas-upnp-org:service-1-0\">\n    <specVersion>\n        <major>1</major>\n        <minor>0</minor>\n    </specVersion>\n    <actionList>\n        <action>\n            <name>GetCurrentConnectionIDs</name>\n            <argumentList>\n                <argument>\n                    <name>ConnectionIDs</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetCurrentConnectionInfo</name>\n            <argumentList>\n                <argument>\n                    <name>ConnectionID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>RcsID</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>AVTransportID</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>ProtocolInfo</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>PeerConnectionManager</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>PeerConnectionID</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Direction</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Status</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetProtocolInfo</name>\n            <argumentList>\n                <argument>\n                    <name>Source</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Sink</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n    </actionList>\n    <serviceStateTable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_ConnectionManager</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"yes\">\n            <name>SinkProtocolInfo</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_ConnectionStatus</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>OK</allowedValue>\n                <allowedValue>ContentFormatMismatch</allowedValue>\n                <allowedValue>InsufficientBandwidth</allowedValue>\n                <allowedValue>UnreliableChannel</allowedValue>\n                <allowedValue>Unknown</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_AVTransportID</name>\n            <dataType>i4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_Direction</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>Input</allowedValue>\n                <allowedValue>Output</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_RcsID</name>\n            <dataType>i4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_ProtocolInfo</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_ConnectionID</name>\n            <dataType>i4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"yes\">\n            <name>SourceProtocolInfo</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"yes\">\n            <name>CurrentConnectionIDs</name>\n            <dataType>string</dataType>\n        </stateVariable>\n    </serviceStateTable>\n</scpd>\n"

    goto :goto_0

    :cond_1
    const-string v1, "RenderingControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\n<?xml version=\"1.0\"?>\n<scpd\n    xmlns=\"urn:schemas-upnp-org:service-1-0\">\n    <specVersion>\n        <major>1</major>\n        <minor>0</minor>\n    </specVersion>\n    <actionList>\n        <action>\n            <name>GetMute</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentMute</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Mute</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>StreamServicesCapability</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>AppVersion</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AppVersion</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>StreamCapability</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>StreamCapability</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetVolume</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentVolume</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Volume</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetChannel</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentChannel</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Channel</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetEqualizer</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentEqualizer</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Equalizer</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>ListPresets</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentPresetNameList</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>PresetNameList</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SelectPreset</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>PresetName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_PresetName</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetMute</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>DesiredMute</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Mute</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetVolume</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>DesiredVolume</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Volume</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetChannel</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>DesiredChannel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Channel</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetEqualizer</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Channel</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>DesiredEqualizer</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Equalizer</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetSimpleDeviceInfo</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MultiType</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>MultiRoomType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SlaveMask</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SlaveMask</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Name</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>AlarmName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentVolume</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Volume</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentChannel</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SlaveList</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SlaveList</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetControlDeviceInfo</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MultiType</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>MultiRoomType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Router</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Router</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Ssid</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Ssid</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SlaveMask</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SlaveMask</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentVolume</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Volume</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentMute</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Mute</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentChannel</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Channel</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SlaveList</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>SlaveList</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Status</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Status</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>MultiPlaySlaveMask</name>\n            <argumentList>\n                <argument>\n                    <name>InstanceID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SlaveMask</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>SlaveMask</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetAlarmQueue</name>\n            <argumentList>\n                <argument>\n                    <name>AlarmContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AlarmContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetAlarmQueue</name>\n            <argumentList>\n                <argument>\n                    <name>AlarmName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AlarmName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>AlarmContext</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>AlarmContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>DeleteAlarmQueue</name>\n            <argumentList>\n                <argument>\n                    <name>AlarmName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AlarmName</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetDeviceName</name>\n            <argumentList>\n                <argument>\n                    <name>Name</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AlarmName</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>AirplayAutoSyncDelay</name>\n            <argumentList>\n                <argument>\n                    <name>Name</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>AirplayAutoSyncDelay</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n    </actionList>\n    <serviceStateTable>\n        <stateVariable sendEvents=\"no\">\n            <name>Volume</name>\n            <dataType>ui2</dataType>\n            <allowedValueRange>\n                <minimum>0</minimum>\n                <maximum>100</maximum>\n                <step>1</step>\n            </allowedValueRange>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_InstanceID</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>AppVersion</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>StreamCapability</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_PresetName</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>FactoryDefaults</allowedValue>\n                <allowedValue>InstallationDefaults</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Mute</name>\n            <dataType>boolean</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"yes\">\n            <name>LastChange</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_Channel</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>Master</allowedValue>\n                <allowedValue>Single</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>PresetNameList</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Channel</name>\n            <dataType>ui2</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Equalizer</name>\n            <dataType>ui2</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>SlaveList</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Status</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Router</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>SlaveMask</name>\n            <dataType>ui2</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>MultiRoomType</name>\n            <dataType>ui2</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Ssid</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>AlarmName</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>AlarmContext</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>TimeStamp</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>FixVolume</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>AirplayAutoSyncDelay</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>Start</allowedValue>\n                <allowedValue>Stop</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n    </serviceStateTable>\n</scpd>\n"

    goto :goto_0

    :cond_2
    const-string v1, "PlayQueue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "\n<?xml version=\"1.0\"?>\n<scpd\n    xmlns=\"urn:schemas-upnp-org:service-1-0\">\n    <specVersion>\n        <major>1</major>\n        <minor>0</minor>\n    </specVersion>\n    <actionList>\n        <action>\n            <name>CreateQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>ReplaceQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>DeleteQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>BackUpQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>AppendQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>BrowseQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetQueueLoopMode</name>\n            <argumentList>\n                <argument>\n                    <name>LoopMode</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>LoopMode</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetQueueLoopMode</name>\n            <argumentList>\n                <argument>\n                    <name>LoopMode</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>LoopMode</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetQueuePolicy</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>PlayQueueWithIndex</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Index</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>AppendTracksInQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>RemoveTracksInQueue</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>RangStart</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>RangEnd</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>StreamSetQuality</name>\n            <argumentList>\n                <argument>\n                    <name>source</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>source</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>quality</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>quality</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>StreamGetQuality</name>\n            <argumentList>\n                <argument>\n                    <name>source</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>source</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>quality</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>quality</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>AppendTracksInQueueEx</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Direction</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>StartIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetKeyMapping</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetKeyMapping</name>\n            <argumentList>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetQueueOnline</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueType</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Queuelimit</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueAutoInsert</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueAutoInsert</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SearchQueueOnline</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SearchKey</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Queuelimit</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueContext</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetQueueRecord</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Action</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetSongsRecord</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SongID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Action</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>UserRegister</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>UserName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>PassWord</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>UserLogin</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>UserName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>PassWord</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>SavePass</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueuePolicy</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Code</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Code</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Token</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Code</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Proxy</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Proxy</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>UserLogout</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetUserInfo</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Version</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>RefreshToken</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetUserAccountHistory</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Number</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetUserFavorites</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Action</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>Code</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MediaType</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MediaID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MediaContext</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueContext</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetUserFavorites</name>\n            <argumentList>\n                <argument>\n                    <name>AccountSource</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MediaType</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Filter</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueType</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetQueueIndex</name>\n            <argumentList>\n                <argument>\n                    <name>QueueName</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>QueueName</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentIndex</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CurrentPage</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>CurrentPage</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetSpotifyPreset</name>\n            <argumentList>\n                <argument>\n                    <name>KeyIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>CurrentIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Result</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>Result</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n           <name>BrowseSpotifyList</name>\n           <argumentList>\n               <argument>\n                   <name>Result</name>\n                   <direction>out</direction>\n                   <relatedStateVariable>Result</relatedStateVariable>\n               </argument>\n           </argumentList>\n       </action>\n       <action>\n           <name>AddSpotifyList</name>\n           <argumentList>\n               <argument>\n                   <name>Result</name>\n                   <direction>out</direction>\n                   <relatedStateVariable>Result</relatedStateVariable>\n               </argument>\n           </argumentList>\n       </action>       <action>\n           <name>DeleteActionQueue</name>\n           <argumentList>\n               <argument>\n                   <name>PressType</name>\n                   <direction>in</direction>\n                   <relatedStateVariable>CurrentIndex</relatedStateVariable>\n               </argument>\n           </argumentList>\n       </action>       <action>\n           <name>DeleteSpotifyList</name>\n           <argumentList>\n               <argument>\n                   <name>QueueName</name>\n                   <direction>in</direction>\n                   <relatedStateVariable>QueueName</relatedStateVariable>\n               </argument>\n               <argument>\n                   <name>Result</name>\n                   <direction>out</direction>\n                   <relatedStateVariable>Result</relatedStateVariable>\n               </argument>\n           </argumentList>\n       </action>    </actionList>\n    <serviceStateTable>\n        <stateVariable sendEvents=\"yes\">\n            <name>LastChange</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueueName</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueueContext</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>source</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>quality</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>CurrentIndex</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>CurrentPage</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueuePolicy</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>LoopMode</name>\n            <dataType>ui4</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueueID</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueueType</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>QueueAutoInsert</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Result</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Code</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>Proxy</name>\n            <dataType>string</dataType>\n        </stateVariable>\n    </serviceStateTable>\n</scpd>\n"

    goto :goto_0

    :cond_3
    const-string v1, "QPlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\n<?xml version=\"1.0\"?>\n<scpd\n    xmlns=\"urn:schemas-upnp-org:service-1-0\">\n    <specVersion>\n        <major>1</major>\n        <minor>0</minor>\n    </specVersion>\n    <actionList>\n        <action>\n            <name>InsertTracks</name>\n            <argumentList>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>StartingIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_StartingIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>TracksMetaData</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_TracksMetaData</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfSuccess</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>RemoveTracks</name>\n            <argumentList>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>StartingIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_StartingIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfTracks</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfSuccess</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>RemoveAllTracks</name>\n            <argumentList>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfSuccess</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetTracksInfo</name>\n            <argumentList>\n                <argument>\n                    <name>StartingIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_StartingIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfTracks</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>TracksMetaData</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetTracksInfo</name>\n            <argumentList>\n                <argument>\n                    <name>QueueID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_QueueID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>StartingIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_StartingIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NextIndex</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NextIndex</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>TracksMetaData</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>NumberOfTracks</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetTracksCount</name>\n            <argumentList>\n                <argument>\n                    <name>NrTracks</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>GetMaxTracks</name>\n            <argumentList>\n                <argument>\n                    <name>MaxTracks</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_NumberOfTracks</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>QPlayAuth</name>\n            <argumentList>\n                <argument>\n                    <name>Seed</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Seed</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Code</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Code</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>MID</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_MID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>DID</name>\n                    <direction>out</direction>\n                    <relatedStateVariable>A_ARG_TYPE_DID</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n        <action>\n            <name>SetNetwork</name>\n            <argumentList>\n                <argument>\n                    <name>SSID</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_SSID</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>Key</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_Key</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>AuthAlgo</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_AuthAlgo</relatedStateVariable>\n                </argument>\n                <argument>\n                    <name>CipherAlgo</name>\n                    <direction>in</direction>\n                    <relatedStateVariable>A_ARG_TYPE_CipherAlgo</relatedStateVariable>\n                </argument>\n            </argumentList>\n        </action>\n    </actionList>\n    <serviceStateTable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_SSID</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_Key</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_AuthAlgo</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>open</allowedValue>\n                <allowedValue>shared</allowedValue>\n                <allowedValue>WPA</allowedValue>\n                <allowedValue>WPAPSK</allowedValue>\n                <allowedValue>WPA2</allowedValue>\n                <allowedValue>WPA2PSK</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_CipherAlgo</name>\n            <dataType>string</dataType>\n            <allowedValueList>\n                <allowedValue>none</allowedValue>\n                <allowedValue>WEP</allowedValue>\n                <allowedValue>TKIP</allowedValue>\n                <allowedValue>AES</allowedValue>\n            </allowedValueList>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_Seed</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_Code</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_MID</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_DID</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_QueueID</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_StartingIndex</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_NextIndex</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_NumberOfTracks</name>\n            <dataType>string</dataType>\n        </stateVariable>\n        <stateVariable sendEvents=\"no\">\n            <name>A_ARG_TYPE_TracksMetaData</name>\n            <dataType>string</dataType>\n        </stateVariable>\n    </serviceStateTable>\n</scpd>\n"

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->g()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;->a(Lorg/teleal/cling/model/meta/RemoteService;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteService;

    return-object p0
.end method

.method public describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->l()Z

    move-result v1

    iget-object v2, p1, Lorg/teleal/cling/model/meta/Device;->e:[Lorg/teleal/cling/model/meta/Icon;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz v1, :cond_0

    check-cast v1, [Lorg/teleal/cling/model/meta/RemoteService;

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lorg/teleal/cling/model/meta/RemoteService;

    :goto_0
    invoke-virtual {p0, v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->filterExclusiveServices([Lorg/teleal/cling/model/meta/RemoteService;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->isRemoteMediaServer(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v5}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeMediaServerService(Lorg/teleal/cling/model/meta/RemoteDevice;Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v5

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeService_loc_xml(Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    if-eqz v1, :cond_4

    check-cast v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    goto :goto_3

    :cond_4
    new-array v1, v3, [Lorg/teleal/cling/model/meta/RemoteDevice;

    :goto_3
    array-length v4, v1

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_7

    aget-object v6, v1, v5

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v6}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v6

    if-nez v6, :cond_6

    const-string p0, "UPNP-SEARCH"

    const-string p1, "embadded device describe service NULLPointer."

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    array-length p0, v2

    new-array v11, p0, [Lorg/teleal/cling/model/meta/Icon;

    :goto_6
    array-length p0, v2

    if-ge v3, p0, :cond_8

    aget-object p0, v2, v3

    new-instance v4, Lorg/teleal/cling/model/meta/Icon;

    iget-object v5, p0, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    iget v6, p0, Lorg/teleal/cling/model/meta/Icon;->b:I

    iget v7, p0, Lorg/teleal/cling/model/meta/Icon;->c:I

    iget v8, p0, Lorg/teleal/cling/model/meta/Icon;->d:I

    iget-object v9, p0, Lorg/teleal/cling/model/meta/Icon;->e:Ljava/net/URI;

    iget-object v10, p0, Lorg/teleal/cling/model/meta/Icon;->f:[B

    invoke-direct/range {v4 .. v10}, Lorg/teleal/cling/model/meta/Icon;-><init>(Lorg/teleal/common/util/MimeType;IIILjava/net/URI;[B)V

    aput-object v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    iget-object p0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v7, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    iget-object v8, p1, Lorg/teleal/cling/model/meta/Device;->b:Lorg/teleal/cling/model/meta/UDAVersion;

    iget-object v9, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    iget-object v10, p1, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, [Lorg/teleal/cling/model/meta/RemoteService;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Lorg/teleal/cling/model/meta/RemoteDevice;->s(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object p0

    return-object p0
.end method

.method public describe_local_xml()V
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n<?xml version=\"1.0\"?>\n<root\n    xmlns=\"urn:schemas-upnp-org:device-1-0\"\n    xmlns:dlna=\"urn:schemas-dlna-org:device-1-0\">\n    <specVersion>\n        <major>1</major>\n        <minor>0</minor>\n    </specVersion>\n    <device>\n        <dlna:X_DLNADOC>DMR-1.50</dlna:X_DLNADOC>\n        <deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>\n        <friendlyName>LinkPlayA31_542C</friendlyName>\n        <manufacturer>Linkplay Technology Inc.</manufacturer>\n        <manufacturerURL>http://www.muzohifi.com</manufacturerURL>\n        <modelDescription>MUZO Cobblestone</modelDescription>\n        <modelName>MUZO Cobblestone</modelName>\n        <modelURL>http://www.muzohifi.com</modelURL>\n        <UDN>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</UDN>\n        <modelNumber>V01-Oct 17 2016\n</modelNumber>\n        <serialNumber>00001</serialNumber>\n        <ssidName>LinkPlayA31_542C</ssidName>\n        <uuid>FF310001BD4CE65900AF9543</uuid>\n        <qq:X_QPlay_SoftwareCapability\n            xmlns:qq=\"http://www.tencent.com\">QPlay:2\n        </qq:X_QPlay_SoftwareCapability>\n        <iconList>\n            <icon>\n                <mimetype>image/png</mimetype>\n                <width>48</width>\n                <height>48</height>\n                <depth>24</depth>\n                <url>/upnp/grender-48x48.png</url>\n            </icon>\n            <icon>\n                <mimetype>image/png</mimetype>\n                <width>120</width>\n                <height>120</height>\n                <depth>24</depth>\n                <url>/upnp/grender-120x120.png</url>\n            </icon>\n            <icon>\n                <mimetype>image/jpeg</mimetype>\n                <width>48</width>\n                <height>48</height>\n                <depth>24</depth>\n                <url>/upnp/grender-48x48.jpg</url>\n            </icon>\n            <icon>\n                <mimetype>image/jpeg</mimetype>\n                <width>120</width>\n                <height>120</height>\n                <depth>24</depth>\n                <url>/upnp/grender-120x120.jpg</url>\n            </icon>\n        </iconList>\n        <serviceList>\n            <service>\n                <serviceType>urn:schemas-upnp-org:service:AVTransport:1</serviceType>\n                <serviceId>urn:upnp-org:serviceId:AVTransport</serviceId>\n                <SCPDURL>/upnp/rendertransportSCPD.xml</SCPDURL>\n                <controlURL>/upnp/control/rendertransport1</controlURL>\n                <eventSubURL>/upnp/event/rendertransport1</eventSubURL>\n            </service>\n            <service>\n                <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n                <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n                <SCPDURL>/upnp/renderconnmgrSCPD.xml</SCPDURL>\n                <controlURL>/upnp/control/renderconnmgr1</controlURL>\n                <eventSubURL>/upnp/event/renderconnmgr1</eventSubURL>\n            </service>\n            <service>\n                <serviceType>urn:schemas-upnp-org:service:RenderingControl:1</serviceType>\n                <serviceId>urn:upnp-org:serviceId:RenderingControl</serviceId>\n                <SCPDURL>/upnp/rendercontrolSCPD.xml</SCPDURL>\n                <controlURL>/upnp/control/rendercontrol1</controlURL>\n                <eventSubURL>/upnp/event/rendercontrol1</eventSubURL>\n            </service>\n            <service>\n                <serviceType>urn:schemas-wiimu-com:service:PlayQueue:1</serviceType>\n                <serviceId>urn:wiimu-com:serviceId:PlayQueue</serviceId>\n                <SCPDURL>/upnp/PlayQueueSCPD.xml</SCPDURL>\n                <controlURL>/upnp/control/PlayQueue1</controlURL>\n                <eventSubURL>/upnp/event/PlayQueue1</eventSubURL>\n            </service>\n            <service>\n                <serviceType>urn:schemas-tencent-com:service:QPlay:1</serviceType>\n                <serviceId>urn:tencent-com:serviceId:QPlay</serviceId>\n                <SCPDURL>/upnp/QPlaySCPD.xml</SCPDURL>\n                <controlURL>/upnp/control/QPlay1</controlURL>\n                <eventSubURL>/upnp/event/QPlay1</eventSubURL>\n            </service>\n        </serviceList>\n    </device>\n</root>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe(Ljava/lang/String;)V

    return-void
.end method

.method public filterExclusiveServices([Lorg/teleal/cling/model/meta/RemoteService;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ")",
            "Ljava/util/List<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->f()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    iget-object v8, v4, Lorg/teleal/cling/model/meta/Service;->a:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/model/types/ServiceType;->a(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Including exlusive service: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget-object v8, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Excluding unwanted service: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object p0
.end method

.method public run()V
    .locals 5

    const-string v0, "St"

    iget-object v1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    sget-object v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exiting early, active retrieval for URL already in progress: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v3

    iget-object v4, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v4, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v4, v4, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/registry/RegistryImpl;->n(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Exiting early, already discovered: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "RetrieveRemoteDescriptors getRemoteDevice, already discovered: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UPNP-SEARCH"

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpHeaders:Lorg/teleal/cling/model/message/UpnpHeaders;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpHeaders:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v3, v0}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe_local_xml()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_1
    sget-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw p0
.end method
