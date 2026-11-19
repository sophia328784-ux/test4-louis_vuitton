.class Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$requestMessage:Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

.field final synthetic val$subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/protocol/sync/ReceivingEvent;Lorg/teleal/cling/model/gena/RemoteGENASubscription;Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;->val$subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iput-object p3, p0, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;->val$requestMessage:Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Calling active subscription with event state variable values"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;->val$subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;->val$requestMessage:Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->h()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    iget-object p0, p0, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;->val$requestMessage:Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    iget-object p0, p0, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lorg/teleal/cling/model/gena/GENASubscription;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lorg/teleal/cling/model/gena/GENASubscription;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: HANDLE ROLLOVER"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, v0, Lorg/teleal/cling/model/gena/GENASubscription;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    iget-wide v5, v2, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    add-long/2addr v5, v3

    iget-wide v2, v1, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    sub-long/2addr v2, v5

    long-to-int v2, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->h(I)V

    :cond_1
    iput-object v1, v0, Lorg/teleal/cling/model/gena/GENASubscription;->e:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/state/StateVariableValue;

    iget-object v2, v0, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lorg/teleal/cling/model/state/StateVariableValue;->c:Lorg/teleal/cling/model/meta/StateVariable;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/StateVariable;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/teleal/cling/model/gena/GENASubscription;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
