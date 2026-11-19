.class public Lcom/networkbench/agent/impl/data/c/c;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/networkbench/agent/impl/crash/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    return-void
.end method

.method private d()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private e()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/c/c;->f()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/c/c;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/crash/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/c/c;->a(Ljava/util/List;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string v0, "not exist store crash task"

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/c/c;->b:Lcom/networkbench/agent/impl/crash/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/crash/j;

    const-string v2, "crashSceneInfo"

    invoke-direct {v1, v0, v2}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/c/c;->b:Lcom/networkbench/agent/impl/crash/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/com/google/gson/JsonArray;"
        }
    .end annotation

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashTask in sp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->addAll(Lcom/networkbench/com/google/gson/JsonArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error when get crash task in sp:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 75
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, "taskData"

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 76
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/DeviceData;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 77
    const-string v1, "data"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/c/c;->e()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "task"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/c/b;)V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/c/b;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TingyunSDK_task"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addPlugindata debuglog has error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    const-string v0, "NBSPluginDatas : "

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v2, "type"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v4, "taskData"

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "dev"

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/DeviceData;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "data"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/c/c;->d()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/c/c;->f()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->b:Lcom/networkbench/agent/impl/crash/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/j;->d()V

    return-void
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public checkData()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/c;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/c;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
