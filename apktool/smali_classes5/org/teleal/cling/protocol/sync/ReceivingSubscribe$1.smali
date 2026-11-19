.class Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;
.super Lorg/teleal/cling/model/gena/LocalGENASubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;->j:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/model/gena/LocalGENASubscription;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;->j:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->o()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->a()Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/teleal/cling/protocol/sync/SendingEvent;

    iget-object v0, v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->a:Lorg/teleal/cling/UpnpService;

    invoke-direct {v2, v0, p0}, Lorg/teleal/cling/protocol/sync/SendingEvent;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 0

    return-void
.end method
