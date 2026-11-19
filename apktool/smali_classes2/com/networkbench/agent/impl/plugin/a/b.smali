.class public Lcom/networkbench/agent/impl/plugin/a/b;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# static fields
.field private static e:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field a:Lorg/json/JSONObject;

.field private b:I

.field private c:Lorg/json/JSONArray;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/plugin/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/a/b;->e:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/a/b;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/f/i;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/a/b;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/a/c;->a()Lcom/networkbench/agent/impl/plugin/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/a/b;->c:Lorg/json/JSONArray;

    iget v2, p0, Lcom/networkbench/agent/impl/plugin/a/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lorg/json/JSONArray;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/a/b;->d:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/a/b;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "CellInfoPlugin error: "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p1, p1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/a/b;->a:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    return-void

    .line 71
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/a/b;->c:Lorg/json/JSONArray;

    .line 72
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/a/b;->a:Lorg/json/JSONObject;

    const-string v0, "limit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/a/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/a/b;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/a/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "cellInfos"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()Z
    .locals 3

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/plugin/a/b;->e:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/plugin/a/b;->e:Lcom/networkbench/agent/impl/plugin/f/j;

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

.method public f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
