.class public Lcom/networkbench/agent/impl/harvest/a/n;
.super Lcom/networkbench/agent/impl/harvest/a/h;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Date"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;-><init>(Ljava/lang/String;Z)V

    const-string p1, "RedirectUrl"

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redirect resp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/d/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x5265c00

    :try_start_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V

    return-void

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "disabledTimeout"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "init disabledTimeout error:"

    invoke-static {v3, p2, v2}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "setDisabledTime disabledTimeout error:"

    invoke-static {v1, p2, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/networkbench/com/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/GsonBuilder;->create()Lcom/networkbench/com/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/harvest/a/n$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/harvest/a/n$1;-><init>(Lcom/networkbench/agent/impl/harvest/a/n;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/networkbench/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/harvest/a/n;->c(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/a/n;->a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    const-string p2, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/harvest/a/n;->b(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "Failed to retrieve collector response: cause responseResult is null"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/harvest/d/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 159
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 161
    :goto_0
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/harvest/d/c;->b(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/harvest/a/n;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/m;->a(Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/harvest/d/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p0, "error"

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->c(Ljava/lang/String;)V

    const-string p0, "result"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p2, "errorCode"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/harvest/d/c;->b(I)V

    const-string p2, "errorMessage"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/d/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    const-string v0, "initresult"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/util/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 1

    .line 154
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/harvest/a/n;->a(Lcom/networkbench/agent/impl/harvest/d/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 155
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error redirect getHarvestResponse"

    invoke-interface {p0, v0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, "/getMobileRedirectHost"

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 50
    return-void
.end method

.method public c(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 25
    const-string p0, "Date"

    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/a/m;->a()Lcom/networkbench/agent/impl/harvest/a/m;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/a/m;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
