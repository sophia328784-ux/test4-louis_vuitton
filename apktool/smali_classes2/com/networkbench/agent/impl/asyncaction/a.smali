.class public Lcom/networkbench/agent/impl/asyncaction/a;
.super Lcom/networkbench/agent/impl/asyncaction/s;
.source "SourceFile"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/a;->i:Ljava/util/Map;

    iput-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/a;->i:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/a;->i:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getAttachedUnit()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getAttachedUnit()Ljava/util/UUID;

    move-result-object v1

    iget-wide v2, p0, Lcom/networkbench/agent/impl/asyncaction/s;->f:J

    invoke-virtual {p1, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->networkForActionTrace(J)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
