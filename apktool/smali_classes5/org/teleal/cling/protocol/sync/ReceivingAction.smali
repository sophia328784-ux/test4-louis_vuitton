.class public Lorg/teleal/cling/protocol/sync/ReceivingAction;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field protected static final extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/teleal/cling/model/message/UpnpHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;

.field protected static final requestThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-void
.end method

.method public static getExtraResponseHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;
    .locals 1

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    return-object v0
.end method

.method public static getRequestMessage()Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    .locals 1

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;

    return-object v0
.end method


# virtual methods
.method public executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 14

    const-string v0, "Merging extra headers into action response message: "

    const-string v1, "Returning finished response message: "

    const-string v2, "Error executing local action: "

    const-string v3, "Error reading action request XML body: "

    const-string v4, "Executing on local service: "

    const-string v5, "Created incoming action request message: "

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v6, v6, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v7, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v8, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v6, v7, v8}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v7, :cond_0

    check-cast v7, Lorg/teleal/common/util/MimeType;

    iget-object v7, v7, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    sget-object v8, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iget-object v9, v8, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v7, Lorg/teleal/common/util/MimeType;

    iget-object v7, v7, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    iget-object v8, v8, Lorg/teleal/common/util/MimeType;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received invalid Content-Type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0

    :cond_1
    :goto_0
    if-nez v6, :cond_2

    sget-object v6, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received without Content-Type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v6

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v7

    const-class v8, Lorg/teleal/cling/model/resource/ServiceControlResource;

    invoke-virtual {v6, v8, v7}, Lorg/teleal/cling/registry/RegistryImpl;->q(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/resource/ServiceControlResource;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v7

    :cond_3
    iget-object v6, v6, Lorg/teleal/cling/model/resource/Resource;->b:Ljava/lang/Object;

    sget-object v8, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found local action resource matching relative request URI: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-object v11, v6

    check-cast v11, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v9, v10, v11}, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V

    sget-object v10, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v10, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v11, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v12, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v12}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v5, Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object v12, v9, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->f:Lorg/teleal/cling/model/meta/Action;

    invoke-direct {v5, v12}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    iget-object v12, v5, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    const-string v13, "Reading body of request message"

    invoke-virtual {v8, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v13

    invoke-interface {v13}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v13

    invoke-interface {v13}, Lorg/teleal/cling/UpnpServiceConfiguration;->q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    move-result-object v13

    invoke-virtual {v13, v9, v5}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->c(Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v6, Lorg/teleal/cling/model/meta/LocalService;

    iget-object v4, v6, Lorg/teleal/cling/model/meta/LocalService;->f:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/action/ActionExecutor;

    invoke-interface {v4}, Lorg/teleal/cling/model/action/ActionExecutor;->execute()V

    iget-object v4, v5, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-nez v4, :cond_4

    new-instance v4, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    invoke-direct {v4, v12}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :cond_4
    new-instance v4, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v4, v6, v12}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object v0, v0, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, v4, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/teleal/common/http/Headers;->putAll(Ljava/util/Map;)V

    :cond_5
    invoke-virtual {v10, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v11, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_6

    :goto_2
    :try_start_1
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v3, Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-static {v2}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lorg/teleal/cling/model/action/ActionException;

    if-eqz v5, :cond_7

    invoke-static {v2}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/action/ActionException;

    goto :goto_3

    :cond_7
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    move-object v2, v5

    :goto_3
    invoke-direct {v3, v2}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/action/ActionException;)V

    new-instance v2, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v5}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v5, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object v0, v0, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lorg/teleal/common/http/Headers;->putAll(Ljava/util/Map;)V

    :cond_8
    move-object v4, v2

    move-object v2, v3

    goto :goto_5

    :goto_4
    :try_start_2
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    new-instance v2, Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/action/ActionException;)V

    new-instance v3, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v3, v5}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v5, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object v0, v0, Lorg/teleal/common/http/Headers;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, v3, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lorg/teleal/common/http/Headers;->putAll(Ljava/util/Map;)V

    :cond_9
    move-object v4, v3

    :goto_5
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v5, v2

    :goto_6
    :try_start_3
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v2, "Writing body of response message"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->k(Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v4

    :catch_2
    move-exception p0

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "Failure writing body of response message, sending \'500 Internal Server Error\' without body"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    const-string v2, "Exception root cause: "

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    return-object p0

    :goto_7
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method
