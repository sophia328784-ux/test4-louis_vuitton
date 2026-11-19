.class public final Lcom/networkbench/agent/impl/performance/a/c/b;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDDDLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/a/c/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->b:D

    iput-wide p3, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->c:D

    iput-wide p5, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->d:D

    iput-wide p7, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->e:D

    iput-object p10, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->j:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->k:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->a:J

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 1

    .line 29
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 30
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "value"

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private c()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.4f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "avg_process_cpu_usage_speed"

    invoke-direct {p0, v3, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "max_process_cpu_usage_speed"

    invoke-direct {p0, v3, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "avg_process_cpu_usage_rate"

    invoke-direct {p0, v3, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_process_cpu_usage_rate"

    invoke-direct {p0, v2, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "page.name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->j:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "mem_total"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "mem_used"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "mem_free"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->h:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "sp_free"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bname"

    invoke-direct {p0, v2, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    invoke-direct {p0, v2, v1}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "stacks"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/a/c/g;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "name"

    iget-object v4, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stack"

    iget-object v4, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nice"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "weight"

    invoke-virtual {v2, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v3, v1, Lcom/networkbench/agent/impl/performance/a/c/g;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.4f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "cpu_usage_rate"

    invoke-virtual {v2, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->c:D

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/c/b;->b()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    :try_start_0
    const-string v1, "timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/networkbench/agent/impl/util/r;->f(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    const-string v2, "cpu_exception"

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attributes"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/c/b;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "cpu exception data: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->i:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/b;->h:Ljava/lang/String;

    return-void
.end method
