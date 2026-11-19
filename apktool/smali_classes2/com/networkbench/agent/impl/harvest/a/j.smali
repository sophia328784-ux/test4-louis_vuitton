.class public Lcom/networkbench/agent/impl/harvest/a/j;
.super Lcom/networkbench/agent/impl/harvest/a/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;-><init>(Ljava/lang/String;Z)V

    const-string p1, "ExtensionUrl"

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)V
    .locals 3

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->d(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "result"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/data/c/a;->a()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/c/a;->a(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/data/c/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Lcom/networkbench/agent/impl/data/c/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/networkbench/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;->create()Lcom/networkbench/com/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/a/j$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/a/j$1;-><init>(Lcom/networkbench/agent/impl/harvest/a/j;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "error"

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v0, "result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "errorCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V

    const-string v0, "errorMessage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    :try_start_5
    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_2

    :goto_0
    iget-object p2, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Error while unpacking ExtensionUrl response during connect"

    invoke-interface {p2, v0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_3
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/getTaskDefs?version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getTaskDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/j;->b(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/a/j;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 162
    return-void
.end method
