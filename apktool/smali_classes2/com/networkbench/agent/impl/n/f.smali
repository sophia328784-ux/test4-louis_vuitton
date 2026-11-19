.class public final Lcom/networkbench/agent/impl/n/f;
.super Lcom/networkbench/agent/impl/n/d;
.source "SourceFile"


# static fields
.field private static h:Lcom/networkbench/agent/impl/n/e;

.field private static i:Lcom/networkbench/agent/impl/n/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/n/d;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NBSUserProfile"

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/d;->d:Ljava/lang/String;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/a/r;->i:Lcom/networkbench/agent/impl/harvest/a/r;

    iput-object v0, p0, Lcom/networkbench/agent/impl/n/d;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/n/f;
    .locals 1

    .line 112
    sget-object v0, Lcom/networkbench/agent/impl/n/f;->i:Lcom/networkbench/agent/impl/n/f;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/networkbench/agent/impl/n/f;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/n/f;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/n/f;->i:Lcom/networkbench/agent/impl/n/f;

    .line 114
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/n/f;->i:Lcom/networkbench/agent/impl/n/f;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/networkbench/agent/impl/n/d;->a(Lcom/networkbench/agent/impl/harvest/HarvestConnection;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/n/d;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "add user profile error!the userId is illegal!"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_5

    :try_start_2
    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "add user profile error!the user properties is illegal!"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-interface {p6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p1, Lcom/networkbench/agent/impl/n/d;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "add user profile error!the user properties is illegal!"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    new-instance v0, Lcom/networkbench/agent/impl/n/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/networkbench/agent/impl/n/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v1, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v1, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v1, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/e;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "signupTime"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v1, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "province"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v1, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "city"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    sget-object v0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/e;->f()Ljava/util/Map;

    move-result-object v0

    const-string v1, "properties"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/f;->e()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/d;->d()V

    return-void
.end method

.method public c()Z
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()V
    .locals 7

    new-instance v0, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PROFILE_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/m/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "checkDataSp : ///////////////////"

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->v(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object v5

    iget-object v6, p0, Lcom/networkbench/agent/impl/n/d;->g:Lcom/networkbench/agent/impl/harvest/a/r;

    invoke-virtual {v5, v4, v6}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getResponse(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/r;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/d/c;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v5

    iget v5, v5, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v6, 0x1d0

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v5

    iget v5, v5, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v5

    iget v5, v5, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v6, 0x1cc

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/harvest/d/c;->j()Lcom/networkbench/agent/impl/harvest/d/c$a;

    move-result-object v4

    iget v4, v4, Lcom/networkbench/agent/impl/harvest/d/c$a;->s:I

    const/16 v5, 0x1ce

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public h()V
    .locals 6

    sget-object v0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/f;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/networkbench/agent/impl/m/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->PROFILE_DATA_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/m/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1, v2}, Lcom/networkbench/agent/impl/m/a;->a(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/f;->reset()V

    :cond_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/networkbench/agent/impl/n/f;->h:Lcom/networkbench/agent/impl/n/e;
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
