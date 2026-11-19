.class public Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->c:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized g()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "unit"

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataPoints"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->g()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    const-string v0, "addDataPoint  : name "

    const-string v1, " "

    .line 37
    invoke-static {v0, p2, v1}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
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
