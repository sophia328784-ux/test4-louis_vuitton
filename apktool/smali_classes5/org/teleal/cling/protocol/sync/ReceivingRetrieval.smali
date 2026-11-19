.class public Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;
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
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-void
.end method


# virtual methods
.method public createControlPointInfo()Lorg/teleal/cling/model/profile/ControlPointInfo;
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/profile/ControlPointInfo;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0, p0}, Lorg/teleal/cling/model/profile/ControlPointInfo;-><init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-object v0
.end method

.method public createResponse(Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 7

    const-string v0, "Ignoring GET for found local resource: "

    const-string v1, "Found local icon matching relative request URI: "

    const-string v2, "Found local service matching relative request URI: "

    const-string v3, "Found local device matching relative request URI: "

    :try_start_0
    const-class v4, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p2, Lorg/teleal/cling/model/resource/Resource;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p2, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v6, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p1

    invoke-interface {p1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/teleal/cling/UpnpServiceConfiguration;->t()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->createControlPointInfo()Lorg/teleal/cling/model/profile/ControlPointInfo;

    move-result-object p2

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object p0

    invoke-interface {p1, v6, p2, p0}, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;->a(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance p2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    invoke-direct {p2, v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p1, p0, p2}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V

    goto/16 :goto_0

    :cond_0
    const-class v3, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p2, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v6, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpServiceConfiguration;->g()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object p0

    invoke-interface {p0, v6}, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;->b(Lorg/teleal/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance p2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    invoke-direct {p2, v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p1, p0, p2}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V

    goto :goto_0

    :cond_1
    const-class p0, Lorg/teleal/cling/model/resource/IconResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast v6, Lorg/teleal/cling/model/meta/Icon;

    new-instance p1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    iget-object p0, v6, Lorg/teleal/cling/model/meta/Icon;->f:[B

    iget-object p2, v6, Lorg/teleal/cling/model/meta/Icon;->a:Lorg/teleal/common/util/MimeType;

    invoke-direct {p1, p0, p2}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>([BLorg/teleal/common/util/MimeType;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error generating requested device/service descriptor: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "Exception root cause: "

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p1, p0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    :goto_0
    iget-object p0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p0, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    return-object p1
.end method

.method public executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 4

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->j(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/teleal/cling/registry/RegistryImpl;->r(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->createResponse(Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring message, missing HOST header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-object p0
.end method
