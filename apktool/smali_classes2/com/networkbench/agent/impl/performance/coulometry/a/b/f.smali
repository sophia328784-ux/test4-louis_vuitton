.class public Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    new-instance v2, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_process"

    invoke-direct {v2, v3, v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-direct {v1, v3, v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bname"

    invoke-direct {v0, v2, v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 74
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/g;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/f;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
