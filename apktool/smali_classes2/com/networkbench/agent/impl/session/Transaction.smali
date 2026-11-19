.class public Lcom/networkbench/agent/impl/session/Transaction;
.super Lcom/networkbench/agent/impl/session/Span;
.source "SourceFile"


# instance fields
.field protected subSpanList:Lcom/networkbench/com/google/gson/JsonArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/session/SpanType;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/networkbench/agent/impl/session/Span;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/session/Span;->setDescription(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->traceId:Ljava/lang/String;

    sget-object p1, Lcom/networkbench/agent/impl/session/SpanType;->TYPE_TRANSACTION:Lcom/networkbench/agent/impl/session/SpanType;

    if-ne p4, p1, :cond_0

    const-string p1, "transaction"

    goto :goto_0

    :cond_0
    const-string p1, "span"

    :goto_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span;->type:Ljava/lang/String;

    new-instance p1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Transaction;->subSpanList:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    invoke-super {p0}, Lcom/networkbench/agent/impl/session/Span;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "spans"

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Transaction;->subSpanList:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public processFinish()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/Span;->subSpan:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/networkbench/agent/impl/session/SessionMetrics;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    invoke-virtual {v3, v2}, Lcom/networkbench/agent/impl/session/SessionMetrics;->retriveSpan(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;

    move-result-object v3

    instance-of v4, v3, Lcom/networkbench/agent/impl/session/Span;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/networkbench/agent/impl/session/ISpan;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/session/Transaction;->subSpanList:Lcom/networkbench/com/google/gson/JsonArray;

    check-cast v3, Lcom/networkbench/agent/impl/session/Span;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/session/Span;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/session/Span;->log:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "span type is error, type:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/session/SpanDatas;->addTransactionSpan(Lcom/networkbench/agent/impl/session/Span;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/Span;->spanId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/session/SessionMetrics;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/session/SessionMetrics;->removeMetric(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
