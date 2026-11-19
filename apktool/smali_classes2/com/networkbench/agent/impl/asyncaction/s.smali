.class public abstract Lcom/networkbench/agent/impl/asyncaction/s;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/e;


# static fields
.field protected static final a:I = 0xc8

.field protected static final b:Lcom/networkbench/agent/impl/c/e;

.field private static final h:Ljava/lang/String; = "TraceMetrics"


# instance fields
.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

.field protected f:J

.field protected g:J

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lcom/networkbench/agent/impl/asyncaction/c;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->i:Ljava/util/Set;

    iget-wide v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->f:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->p:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->j:Z

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->n:Ljava/lang/String;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->o:Lcom/networkbench/agent/impl/asyncaction/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a()J
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->f()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;
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

    sget-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;->appstart:Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

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

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Ljava/util/List;Z)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/o;",
            ">;I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStartTime()J

    move-result-wide v2

    .line 249
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getEndTime()J

    move-result-wide v4

    .line 250
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->a()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 251
    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/o;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 252
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 255
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_2

    .line 256
    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v2, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v4, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    .line 257
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->e(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 258
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    .line 259
    invoke-direct {p0, v0, p2, p3}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :try_start_0
    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    sget-object v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->SYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    iget-object v4, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Ljava/util/List;Z)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "traceToTreeOfAppStart error:"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Ljava/util/List;)V

    return-object p1
.end method

.method private b(I)V
    .locals 2

    .line 193
    iget v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->k:I

    const/16 v0, 0x190

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x258

    if-gt p1, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 194
    :cond_2
    iget p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->l:I

    return-void

    .line 195
    :cond_3
    :goto_1
    iget p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->m:I

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    .line 192
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :try_start_0
    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v1

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    sget-object v4, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->SYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadId:J

    iget-object v4, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->threadName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/networkbench/agent/impl/asyncaction/s;->a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Ljava/util/List;Z)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->nodeType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "traceToTree error:"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private d(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->k:Lcom/networkbench/agent/impl/data/type/r;

    if-eq v0, v1, :cond_0

    iget-wide v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    .line 38
    const-string p0, "TraceMetrics"

    const-string p1, "nor network unit entry time is over root trace exit time, skip"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(J)Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->a()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 38
    instance-of v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public a(I)J
    .locals 9

    .line 238
    new-instance v0, Lcom/networkbench/agent/impl/util/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/o;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;

    move-result-object v1

    .line 240
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    .line 242
    new-instance v3, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v4, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v6, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->e(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 243
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-direct {p0, v2, v0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/asyncaction/n;->b(Ljava/util/List;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 246
    sget-object v3, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "operation time is < 0, please check"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_1
    if-gez v2, :cond_2

    return-wide v0

    :cond_2
    return-wide p0
.end method

.method public a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    .line 166
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 167
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 168
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p1, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public a(Ljava/util/List;Z)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;Z)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    .line 182
    const-string v0, "childUnitJson has error : "

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const/4 v2, 0x0

    .line 183
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v2, v3, :cond_3

    .line 184
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-nez v3, :cond_0

    .line 186
    sget-object v3, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "child is not instance of NBSTraceUnit"

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 187
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v3

    if-eqz p2, :cond_1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x3

    .line 189
    invoke-virtual {v3, v4}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setPageLoadingEndTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    invoke-virtual {v1, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_2

    .line 191
    :cond_1
    invoke-virtual {v1, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 192
    :goto_1
    :try_start_2
    invoke-static {v0, v3}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 193
    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-object v1
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 172
    iget-object v2, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v1, :cond_0

    .line 173
    iget-boolean v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isRootUnit:Z

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 175
    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(J)V
    .locals 1

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->j:Z

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->c(J)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    .line 165
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "missingChildren size is over max capacity, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    instance-of v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    .line 198
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "missingNetworkChildren size is over max capacity, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->i:Ljava/util/Set;

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->p:Ljava/util/Map;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "attachedNetworks contains network, uuid is:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    const-string v1, "TraceMetrics"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->o:Lcom/networkbench/agent/impl/asyncaction/c;

    iget-object v2, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-interface {v0, p1, v2}, Lcom/networkbench/agent/impl/asyncaction/c;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string p0, "addCompleteNetwork network should clip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1
    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->e(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string p0, "unit entry time is over max exit time, not process complete network"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_2
    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string p0, "transactionState code is 504 , responseBody is Unsatisfiable . "

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    .line 212
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->p:Ljava/util/Map;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p2, p0, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setAttachedTrace(Lcom/networkbench/agent/impl/asyncaction/e;Ljava/util/UUID;)V

    .line 214
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->b(I)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/o;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStartTime()J

    move-result-wide v2

    .line 226
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getEndTime()J

    move-result-wide v4

    .line 227
    invoke-direct {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->a()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 228
    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/o;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 229
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 232
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_1

    .line 233
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    const-string v2, "pageLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v5, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    .line 235
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->e(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 236
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0, v0, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    move v1, v0

    .line 177
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 178
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v2, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-wide v4, v4, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 179
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, p0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p0, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/util/UUID;)V
    .locals 2

    .line 216
    const-string v0, "TraceMetrics"

    if-nez p1, :cond_0

    .line 217
    const-string p0, "refleshOperationTime uuid is null, skip"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-nez p1, :cond_1

    .line 219
    const-string p0, "attachUnit is null, please check"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->complete()V

    .line 221
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xc8

    .line 260
    invoke-virtual {p1, p2, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->isUnitCanAdd(II)Z

    move-result p0

    return p0
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
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

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "stacks"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    .line 173
    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->f:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    instance-of v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget v0, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->segmentType:I

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    .line 176
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->i:Ljava/util/Set;

    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    const-string v1, "TraceMetrics"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->o:Lcom/networkbench/agent/impl/asyncaction/c;

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/c;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string p0, "addCompleteNetwork network should clip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_1
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->d(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-wide v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/s;->e(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string p0, "unit entry time is over max exit time, drop"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_3
    iget-wide v0, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->e(J)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    .line 184
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "unit exit time is over time, set unit exitTime to -1"

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 185
    iput-wide v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    .line 186
    sget-object v0, Lcom/networkbench/agent/impl/data/type/r;->a:Lcom/networkbench/agent/impl/data/type/r;

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 188
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "traces size is over max capacity, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-wide v3, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    .line 191
    iput-wide v3, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    :cond_6
    :goto_0
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/o;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getChildren()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 200
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-eqz v0, :cond_0

    .line 201
    instance-of v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget v1, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 203
    iget-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    const-string v2, "pageLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v2, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v3, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v5, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    .line 205
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0, v0, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    const-string v1, "Unsatisfiable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error  504 ,  message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getErrorData()Lcom/networkbench/agent/impl/a/a/a;

    move-result-object p1

    iget-object p1, p1, Lcom/networkbench/agent/impl/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public b(Ljava/util/UUID;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public c(Ljava/util/UUID;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->p:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-object p0
.end method

.method public c(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    .line 169
    const-string v0, "find network action:"

    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    if-eqz p1, :cond_2

    .line 170
    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    .line 172
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/v;->a(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    .line 174
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setStatusCode(I)V

    .line 175
    invoke-virtual {p1, v3, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getStatusCode()I

    move-result v0

    const/16 v4, 0x258

    if-ge v0, v4, :cond_1

    .line 178
    invoke-virtual {p1, v3, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setErrorCode(ILjava/lang/String;)V

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->networkForTrace()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    .line 180
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 181
    :goto_1
    const-string p1, "networkToJsonObj has error : "

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
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

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v1, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    if-eqz v1, :cond_1

    .line 188
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

    .line 189
    iget-object v2, p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->myUUID:Ljava/util/UUID;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    iget-object v3, v3, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->parentUUID:Ljava/util/UUID;

    if-ne v2, v3, :cond_0

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c(J)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    .line 183
    const-string p0, "TraceMetrics"

    const-string p1, "exit time is small than rootTrace.exitTimestamp"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    iput-wide p1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/s;->d(J)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result p0

    return p0
.end method

.method public d()Lcom/networkbench/com/google/gson/JsonObject;
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

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "stacks"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public d(J)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 40
    const-string p0, "TraceMetrics"

    const-string p1, "exit time is small than operationEndTimeStamp"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_0
    iput-wide p1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    return-void
.end method

.method public e()Lcom/networkbench/com/google/gson/JsonObject;
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

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    const-string v1, "stacks"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x1b58

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->f:J

    return-wide v0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->k:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->l:I

    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->m:I

    return p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->i:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public l()J
    .locals 6

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "block time is < 0, please check"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public m()J
    .locals 6

    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->g:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/asyncaction/s;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "operation time is < 0, please check"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public n()J
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/util/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/o;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/asyncaction/n;->a(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "block time is < 0, please check"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public o()J
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/util/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/o;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/asyncaction/s;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Ljava/util/List;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/asyncaction/n;->b(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object v4, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "operation time is < 0, please check"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_0
    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->j:Z

    return p0
.end method

.method public q()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->n:Ljava/lang/String;

    return-object p0
.end method

.method public s()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/s;->p:Ljava/util/Map;

    return-object p0
.end method

.method public t()J
    .locals 10

    new-instance v0, Lcom/networkbench/agent/impl/util/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/o;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/asyncaction/s;->e:Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/asyncaction/s;->c(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    instance-of v2, v1, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    iget v2, v2, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;->callType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v4, Lcom/networkbench/agent/impl/asyncaction/o;

    iget-wide v5, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->entryTimestamp:J

    iget-wide v7, v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->exitTimestamp:J

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/networkbench/agent/impl/asyncaction/o;-><init>(JJZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/networkbench/agent/impl/asyncaction/n;->a(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    sget-object v4, Lcom/networkbench/agent/impl/asyncaction/s;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "block time is < 0, please check"

    invoke-interface {v4, v5}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_2
    if-gez p0, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method
