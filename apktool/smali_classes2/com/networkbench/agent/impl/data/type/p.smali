.class public Lcom/networkbench/agent/impl/data/type/p;
.super Lcom/networkbench/agent/impl/asyncaction/s;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "PageLoadingTraceMetrics"


# instance fields
.field public h:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/networkbench/agent/impl/i/e;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/p;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/p;->j:Z

    sget-object v0, Lcom/networkbench/agent/impl/i/e;->b:Lcom/networkbench/agent/impl/i/e;

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/p;->k:Lcom/networkbench/agent/impl/i/e;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PageLoadingTraceMetrics rootTrace: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", myuuid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PageLoadingTraceMetrics"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;I)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    sget-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->SYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    iget-object v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/16 v1, 0xa

    if-lt p2, v1, :cond_1

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/p;->d(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/networkbench/agent/impl/data/type/p;->a(Ljava/util/List;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_1
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/data/type/r;)Z
    .locals 0

    .line 182
    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->l:Lcom/networkbench/agent/impl/data/type/r;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ")",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/type/p;->c(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;I)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;I)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v1, :cond_0

    .line 177
    instance-of v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-nez v2, :cond_1

    .line 178
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "child is not instance of NBSTraceUnit"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object v0

    .line 179
    :cond_1
    iget-object v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    iget-object v3, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, v1, p2}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a(JLjava/lang/String;Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;)V
    .locals 6

    .line 183
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v2

    .line 184
    invoke-virtual {p4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->getValue()I

    move-result v3

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(Ljava/lang/String;IIJ)V

    .line 185
    iput-wide p1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    .line 186
    invoke-virtual {p0, v0, p4}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/i/e;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/p;->k:Lcom/networkbench/agent/impl/i/e;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-object v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    iput-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    .line 188
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "traces size is over max capacity, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->addChild(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    .line 192
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->SYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    .line 193
    iget-wide v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    if-ne p2, v0, :cond_1

    .line 194
    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->c(J)V

    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->d(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/p;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/p;->j:Z

    return-void
.end method

.method public c(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ")",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    return-void
.end method

.method public f(J)J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    return-wide v0
.end method

.method public v()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const-string v2, "mem"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;I)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "stacks"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public w()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/networkbench/agent/impl/data/type/r;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/data/type/p;->a(Lcom/networkbench/agent/impl/data/type/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/p;->j:Z

    return p0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/p;->j:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/p;->k:Lcom/networkbench/agent/impl/i/e;

    sget-object v0, Lcom/networkbench/agent/impl/i/e;->b:Lcom/networkbench/agent/impl/i/e;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public z()Lcom/networkbench/agent/impl/i/e;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/p;->k:Lcom/networkbench/agent/impl/i/e;

    return-object p0
.end method
