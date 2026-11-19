.class Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;
.super Lorg/teleal/cling/model/gena/LocalGENASubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/teleal/cling/model/meta/LocalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/controlpoint/SubscriptionCallback;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 2

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-direct {p0, p2, v0, v1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->established(Lorg/teleal/cling/model/gena/GENASubscription;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 4

    const-string v0, "Local service state updated, notifying callback, sequence is: "

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->c()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->h()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 3

    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->j:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v1, p0, p1, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
