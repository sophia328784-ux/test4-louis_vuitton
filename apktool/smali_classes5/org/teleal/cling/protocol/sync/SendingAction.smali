.class public Lorg/teleal/cling/protocol/sync/SendingAction;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync<",
        "Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;",
        "Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/sync/SendingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-direct {v0, p2, p3}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    return-void
.end method


# virtual methods
.method public bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->executeSync()Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object p0

    return-object p0
.end method

.method public executeSync()Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .locals 1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingSync;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/sync/SendingAction;->invokeRemote(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object p0

    return-object p0
.end method

.method public handleResponse(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    const-string v0, "Received response for outgoing call, reading SOAP response body: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    move-result-object v0

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v0, p1, p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->d(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reading SOAP body: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget-object p1, Lk/a;->a:Ljava/util/HashMap;

    new-instance p1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading response message. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public handleResponseFailure(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "Received response with Internal Server Error, reading SOAP failure message"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    move-result-object v0

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v0, p1, p0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->d(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reading SOAP body: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Exception root cause: "

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading response failure message. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public invokeRemote(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .locals 6

    const-string v0, "Non-recoverable remote execution failure: "

    const-string v1, "Response was a non-recoverable failure: "

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object v2, v2, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    iget-object v2, v2, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    sget-object v3, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending outgoing action call \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object v5, v5, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to remote service of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/protocol/sync/SendingAction;->sendRemoteRequest(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "No connection or no no response received, returning null"

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object p1, Lk/a;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    new-instance v0, Lorg/teleal/cling/model/action/ActionException;

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v3, "Connection error or no response received"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    iput-object v0, p1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    return-object v2

    :cond_0
    new-instance v4, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    invoke-direct {v4, p1}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    iget-object p1, v4, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;
    :try_end_0
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v2, p1

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    iget v2, v2, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    move-object v5, p1

    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->a()I

    move-result v5

    if-eq v2, v5, :cond_2

    sget-object v5, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->a()I

    move-result v5

    if-ne v2, v5, :cond_1

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lk/a;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    check-cast p1, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/teleal/cling/model/message/UpnpResponse;

    iget p1, p1, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->a()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v4}, Lorg/teleal/cling/protocol/sync/SendingAction;->handleResponseFailure(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V

    return-object v4

    :cond_3
    invoke-virtual {p0, v4}, Lorg/teleal/cling/protocol/sync/SendingAction;->handleResponse(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    :try_end_1
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :goto_1
    move-object v2, v4

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    sget-object v0, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Remote action invocation failed, returning Internal Server Error message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-eqz v2, :cond_5

    iget-object p0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast p0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lk/a;->a:Ljava/util/HashMap;

    return-object v2

    :cond_5
    :goto_3
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, Lk/a;->a:Ljava/util/HashMap;

    new-instance p0, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    new-instance p1, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p1, v0}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0
.end method

.method public sendRemoteRequest(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    const-string v0, "Writing SOAP request body of: "

    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->q()Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;

    move-result-object v0

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v0, p1, v2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->j(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    const-string v0, "Sending SOAP body of message as stream to remote device"

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/teleal/cling/transport/Router;->c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p0
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error writing SOAP body: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Exception root cause: "

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error writing request message. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method
