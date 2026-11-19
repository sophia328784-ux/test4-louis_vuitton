.class Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;
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


# direct methods
.method public constructor <init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->i(Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
