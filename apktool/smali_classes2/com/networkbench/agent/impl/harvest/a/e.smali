.class public Lcom/networkbench/agent/impl/harvest/a/e;
.super Lcom/networkbench/agent/impl/harvest/a/h;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SymmetryKey"

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""


# instance fields
.field private final f:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/a/e;->f:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "ConnectionUrl"

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 0

    .line 247
    invoke-virtual {p0, p2, p1}, Lcom/networkbench/agent/impl/harvest/a/e;->a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/lang/String;)V

    return-object p2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/initMobileApp?version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getHttpDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(J)V
    .locals 4

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 249
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v2, 0x4e20

    cmp-long p0, p0, v2

    if-ltz p0, :cond_0

    .line 250
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/util/r;->h(J)V

    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/util/r;->h(J)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Error while unpacking JSON response during connect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initMobileApp resp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x5265c00

    :try_start_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1, v2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V

    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "disabledTimeout"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/a/e;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "init disabledTimeout error:"

    invoke-static {v4, p2, v3}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    invoke-virtual {p1, v1, v2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V

    :cond_1
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->d(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p2, "result"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v1, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;-><init>()V

    invoke-virtual {v1, p2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->parseHarvestConfigFromResult(Lorg/json/JSONObject;)Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/c/a;->a()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Lcom/networkbench/agent/impl/data/c/a;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_3
    const-string v1, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/networkbench/com/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/GsonBuilder;->create()Lcom/networkbench/com/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/networkbench/agent/impl/harvest/a/e$1;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/harvest/a/e$1;-><init>(Lcom/networkbench/agent/impl/harvest/a/e;)V

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "error"

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_4

    const-string v1, "result"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "errorCode"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V

    const-string v1, "errorMessage"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/networkbench/agent/impl/harvest/a/e;->f:Lcom/networkbench/agent/impl/c/e;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/networkbench/agent/impl/harvest/a/e;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_5
    :goto_1
    monitor-exit p0

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
