.class public Lcom/networkbench/agent/impl/session/Span;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/ISpan;
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# static fields
.field protected static log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field datas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field description:Ljava/lang/String;

.field endTimestamp:J

.field isFinished:Z

.field metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field operation:Ljava/lang/String;

.field parentSpanId:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

.field spanId:Ljava/lang/String;

.field startTimestamp:J

.field status:Lcom/networkbench/agent/impl/session/SpanStatus;

.field statusCode:I

.field protected subSpan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field traceId:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/session/Span;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->datas:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->tags:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/session/Span;->statusCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/session/Span;->startTimestamp:J

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanStatus;->SPAN_STATUS_OK:Lcom/networkbench/agent/impl/session/SpanStatus;

    iput-object v1, p0, Lcom/networkbench/agent/impl/session/Span;->status:Lcom/networkbench/agent/impl/session/SpanStatus;

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/Span;->operation:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->name:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->constructSpanId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->traceId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/Span;->isFinished:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->subSpan:Ljava/util/List;

    const-string p1, "span"

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->type:Ljava/lang/String;

    sget-object p1, Lcom/networkbench/agent/impl/session/SessionMetrics;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/session/SessionMetrics;->addMetric(Lcom/networkbench/agent/impl/session/ISpan;)V

    const-string p1, "status_code"

    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/session/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->sessionId:Ljava/lang/String;

    return-void
.end method

.method private constructSpanId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cutString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private isTransactionFinished()Z
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->getTransaction()Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/session/Span;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTransactionFinished return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/networkbench/agent/impl/session/ISpan;->isFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/networkbench/agent/impl/session/ISpan;->isFinished()Z

    move-result p0

    return p0
.end method

.method private mapToJsonObject(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/networkbench/agent/impl/session/Span$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/session/Span$1;-><init>(Lcom/networkbench/agent/impl/session/Span;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/networkbench/com/google/gson/JsonObject;

    return-object p0
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->operation:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/session/Span;->cutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "op"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->type:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->name:Ljava/lang/String;

    const/16 v3, 0x400

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/session/Span;->cutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->description:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/session/Span;->cutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-wide v3, p0, Lcom/networkbench/agent/impl/session/Span;->startTimestamp:J

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "start_timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-wide v3, p0, Lcom/networkbench/agent/impl/session/Span;->endTimestamp:J

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "end_timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->traceId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "trace_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "span_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "parent_span_id"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->status:Lcom/networkbench/agent/impl/session/SpanStatus;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/SpanStatus;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/session/Span;->mapToJsonObject(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "metrics"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Span;->tags:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/session/Span;->mapToJsonObject(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Span;->datas:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/session/Span;->mapToJsonObject(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public checkData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/Span;->endTimestamp:J

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/session/Span;->isFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->processFinish()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/session/Span;->isFinished:Z

    return-void
.end method

.method public finish(Lcom/networkbench/agent/impl/session/SpanStatus;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->status:Lcom/networkbench/agent/impl/session/SpanStatus;

    .line 26
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->finish()V

    return-void
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transaction"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->datas:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getMetric(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->operation:Ljava/lang/String;

    return-object p0
.end method

.method public getParentSpan()Lcom/networkbench/agent/impl/session/ISpan;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/SessionMetrics;->retriveSpan(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public getSpanId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Lcom/networkbench/agent/impl/session/SpanStatus;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->status:Lcom/networkbench/agent/impl/session/SpanStatus;

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->tags:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "empty throwable"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->getTransaction()Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    invoke-interface {p0}, Lcom/networkbench/agent/impl/session/ISpan;->getSpanId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTransaction()Lcom/networkbench/agent/impl/session/ISpan;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/session/Span;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->traceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/session/SessionMetrics;->retriveSpan(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/session/Span;->isFinished:Z

    return p0
.end method

.method public isTransaction()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public processFinish()V
    .locals 0

    return-void
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->datas:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMetric(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->tags:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->datas:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ms"

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/session/Span;->setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v1, "unit"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "unit"

    if-eqz v1, :cond_0

    const-string p3, "ms"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p3, "data"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->operation:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/networkbench/agent/impl/session/SpanStatus;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->status:Lcom/networkbench/agent/impl/session/SpanStatus;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "status_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/session/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->tags:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/Span;->isTransactionFinished()Z

    return-void
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 1

    .line 93
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/networkbench/agent/impl/session/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 3

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/session/Span;

    const-string v1, ""

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v1

    :cond_2
    iget-object v2, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    invoke-direct {v0, p1, p2, v2}, Lcom/networkbench/agent/impl/session/Span;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_4

    move-object p3, v1

    :cond_4
    iput-object p3, v0, Lcom/networkbench/agent/impl/session/Span;->description:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/Span;->getTraceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/networkbench/agent/impl/session/Span;->traceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->subSpan:Ljava/util/List;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/Span;->getSpanId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    sget-object p1, Lcom/networkbench/agent/impl/session/SessionMetrics;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->parentSpanId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/session/SessionMetrics;->retriveSpan(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/session/Span;

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->subSpan:Ljava/util/List;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/Span;->getSpanId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_6
    :goto_0
    sget-object p0, Lcom/networkbench/agent/impl/session/Span;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "startChild name or operation is empty, please check"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0
.end method
