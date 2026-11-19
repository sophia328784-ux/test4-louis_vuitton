.class public Lcom/networkbench/agent/impl/plugin/j;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# static fields
.field private static d:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/j;->d:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f;

    iget-object p2, p2, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/plugin/f/i;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hostName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/networkbench/agent/impl/plugin/f;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->j:Lcom/networkbench/agent/impl/plugin/a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/f/i;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/j;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    const-string v1, "key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/j;->a:Ljava/lang/String;

    const-string v0, "responseHeader"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/j;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/j;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/j;->a:Ljava/lang/String;

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/j;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-direct {v2, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public b()Z
    .locals 3

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/plugin/j;->d:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/plugin/j;->d:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->b(J)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method
