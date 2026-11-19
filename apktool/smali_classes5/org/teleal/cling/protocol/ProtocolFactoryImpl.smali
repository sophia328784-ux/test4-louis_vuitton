.class public Lorg/teleal/cling/protocol/ProtocolFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/protocol/ProtocolFactory;


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lorg/teleal/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating ProtocolFactory: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;
    .locals 1

    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingAction;

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/protocol/sync/SendingAction;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    return-object v0
.end method

.method public final b(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingSubscribe;
    .locals 1

    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public final c(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;
    .locals 10

    const-string v0, "UPNP-SEARCH"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "Response Message NULL."

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v2, p1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    if-nez v2, :cond_1

    const-string p0, "Response Message Operation NULL."

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v3, v2, Lorg/teleal/cling/model/message/UpnpRequest;

    if-eqz v3, :cond_3

    sget-object p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl$1;->a:[I

    check-cast v2, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v0, v2, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_a

    :cond_2
    return-object v1

    :cond_3
    instance-of v2, v2, Lorg/teleal/cling/model/message/UpnpResponse;

    if-eqz v2, :cond_a

    sget-object v2, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->b:Ljava/util/logging/Logger;

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->f()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v5, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    invoke-static {v5}, Lorg/teleal/common/http/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v6, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-string v7, "Easylink"

    invoke-virtual {v6, v7}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    :try_start_0
    invoke-static {v4}, Lorg/teleal/cling/model/types/NamedServiceType;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/NamedServiceType;

    move-result-object v6

    array-length v7, v3

    :goto_1
    if-ge v5, v7, :cond_9

    aget-object v8, v3, v5

    iget-object v9, v6, Lorg/teleal/cling/model/types/NamedServiceType;->b:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v9, v8}, Lorg/teleal/cling/model/types/ServiceType;->a(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result v8
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_8

    :goto_2
    new-instance v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    return-object v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    const-string p0, "Not a named service type header value: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_9
    const-string p0, "Service advertisement not supported, dropping it: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_3
    const-string p0, "Is not support Service Advertisement."

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_a
    new-instance p0, Lorg/teleal/cling/protocol/ProtocolCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Protocol for incoming datagram message not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;
    .locals 1

    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public final e(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/protocol/ReceivingSync;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating protocol for incoming synchronous: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    move-object v1, v0

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v1, v1, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/ReceivingAction;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v1, v0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-object v0

    :cond_2
    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-object v0

    :cond_3
    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/cb.xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-object v0

    :cond_4
    new-instance p0, Lorg/teleal/cling/protocol/ProtocolCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Protocol for message type not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lorg/teleal/cling/model/message/header/UpnpHeader;)Lorg/teleal/cling/protocol/async/SendingSearch;
    .locals 2

    new-instance v0, Lorg/teleal/cling/protocol/async/SendingSearch;

    iget-object p0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method
