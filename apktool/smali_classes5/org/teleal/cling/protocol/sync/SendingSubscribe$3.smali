.class Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

.field final synthetic val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iget-object v0, v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast p0, Lorg/teleal/cling/model/message/UpnpResponse;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->i(Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
