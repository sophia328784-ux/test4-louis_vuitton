.class public Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/networkbench/com/google/gson/JsonArray;

.field private k:Lcom/networkbench/com/google/gson/JsonArray;

.field private l:Lcom/networkbench/com/google/gson/JsonArray;

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>(I[Ljava/lang/StackTraceElement;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->m:I

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->b:I

    const-string p1, "2"

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->f:Ljava/lang/String;

    new-instance p1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->j:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p0, p2}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->a([Ljava/lang/StackTraceElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->l:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->h:Ljava/lang/String;

    new-instance p1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->k:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->n:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->i:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->n:J

    const-string p0, ""

    .line 80
    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a([Ljava/lang/StackTraceElement;)V
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->m:I

    const/4 v3, 0x7

    invoke-static {v2, p1, v3}, Lcom/networkbench/agent/impl/util/ak;->a(I[Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->j:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public b()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->i:J

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "stack"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->j:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "image"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->k:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "bid"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "obv"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "meta"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->l:Lcom/networkbench/com/google/gson/JsonArray;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v2, "trail"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "addit"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "sruuid"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->i:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Ljava/lang/String;J)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "custom"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method
