.class public Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;
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

    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    return-void
.end method


# virtual methods
.method public executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 8

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v1

    const-class v2, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    invoke-virtual {v0, v2, v1}, Lorg/teleal/cling/registry/RegistryImpl;->q(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No local resource found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found local event subscription matching relative request URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/StreamRequestMessage;->g()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v3, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/StreamRequestMessage;

    iget-object v0, v0, Lorg/teleal/cling/model/resource/Resource;->b:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V

    iget-object v0, v3, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v0, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v3, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v7, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-virtual {v0, v6, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v3, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v6, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v7, Lorg/teleal/cling/model/message/header/CallbackHeader;

    invoke-virtual {v0, v6, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscription ID and NT or Callback in unsubcribe request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    iget-object v3, v3, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lorg/teleal/cling/registry/RegistryImpl;->m(Ljava/lang/String;)Lorg/teleal/cling/model/gena/LocalGENASubscription;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid subscription ID for unsubscribe request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    return-object p0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unregistering subscription: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object p0

    invoke-interface {p0}, Lorg/teleal/cling/UpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryImpl;->f(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->f(Lorg/teleal/cling/model/gena/CancelReason;)V

    goto :goto_3

    :cond_6
    const-string p0, "Subscription was already removed from registry"

    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_3
    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    return-object p0
.end method
