.class public Lorg/teleal/cling/protocol/sync/ReceivingEvent;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 0

    .line 522
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    move-result-object p0

    return-object p0
.end method

.method public executeSync()Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;
    .locals 7

    const-string v0, "Invalid subscription ID, no active subscription: "

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v1, v1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v2, Lorg/teleal/common/util/MimeType;

    iget-object v2, v2, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    sget-object v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iget-object v4, v3, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v1, Lorg/teleal/common/util/MimeType;

    iget-object v1, v1, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    iget-object v2, v3, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received without or with invalid Content-Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v2

    const-class v3, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    invoke-virtual {v1, v3, v2}, Lorg/teleal/cling/registry/RegistryImpl;->q(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    if-nez v1, :cond_1

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_1
    new-instance v2, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v1, v1, Lorg/teleal/cling/model/resource/Resource;->b:Ljava/lang/Object;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-direct {v2, v3, v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/RemoteService;)V

    iget-object v1, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v4, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v1, v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v5

    :goto_1
    if-nez v1, :cond_3

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscription ID missing in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_3
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->i()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing NT and/or NTS headers in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_4
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->i()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid NT and/or NTS headers in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_5
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->h()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sequence missing in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->i()Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/teleal/cling/transport/impl/GENAEventProcessorImpl;->b(Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->s()V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    iget-object v6, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v6, v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    :cond_7
    invoke-virtual {v1, v5}, Lorg/teleal/cling/registry/RegistryImpl;->p(Ljava/lang/String;)Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->A()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;

    invoke-direct {v3, p0, v1, v2}, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;-><init>(Lorg/teleal/cling/protocol/sync/ReceivingEvent;Lorg/teleal/cling/model/gena/RemoteGENASubscription;Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->A()V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    invoke-direct {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>()V

    return-object p0

    :goto_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->A()V

    throw v0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t read request body, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0
.end method
