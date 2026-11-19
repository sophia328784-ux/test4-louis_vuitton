.class public Lcom/networkbench/agent/impl/plugin/b/a;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/b/a$a;
    }
.end annotation


# static fields
.field private static s:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/networkbench/agent/impl/plugin/b/b;

.field private r:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/b/a;->s:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    const/4 p2, 0x5

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->d:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/f/i;->e()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/b/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/b/a;Lcom/networkbench/agent/impl/plugin/b/b;)Lcom/networkbench/agent/impl/plugin/b/b;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/b/a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/b/a;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/networkbench/agent/impl/plugin/b/a;->d:I

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/b/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    return-object p0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/b/a;)Lcom/networkbench/agent/impl/plugin/f/i;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    return-object p0
.end method

.method public static synthetic h()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/b/a$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/plugin/b/a$a;-><init>(Lcom/networkbench/agent/impl/plugin/b/a;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
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
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p1, p1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->b:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :goto_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->b:Lorg/json/JSONObject;

    const-string v0, "sizeLimit"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->b:Lorg/json/JSONObject;

    const-string v0, "rsHead"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->r:Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    const/4 p1, 0x0

    :try_start_4
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->r:Lorg/json/JSONArray;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    const/16 p1, 0x3c

    :try_start_5
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/b/a;->b:Lorg/json/JSONObject;

    const-string v1, "execFrequency"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    :try_start_6
    iput p1, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    :goto_2
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/b/a;->r:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a;->r:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/b/a;->r:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v4, v4, Lcom/networkbench/agent/impl/plugin/b/b;->j:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/b/a;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/b/b;->j:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v2, v2, Lcom/networkbench/agent/impl/plugin/b/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v2, v2, Lcom/networkbench/agent/impl/plugin/b/b;->d:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-object v2, v2, Lcom/networkbench/agent/impl/plugin/b/b;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "cname"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget-wide v4, v2, Lcom/networkbench/agent/impl/plugin/b/b;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "dns"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget v2, v2, Lcom/networkbench/agent/impl/plugin/b/b;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "connect"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    if-nez v2, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_4
    iget-wide v4, v2, Lcom/networkbench/agent/impl/plugin/b/b;->b:J

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    iget v2, v2, Lcom/networkbench/agent/impl/plugin/b/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/b/a;->e:Lcom/networkbench/agent/impl/plugin/b/b;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v2, Lcom/networkbench/agent/impl/plugin/b/b;->a:Ljava/lang/String;

    :goto_2
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "err"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/b/a;->a:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->d(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "rsHead"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

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

    sget-object p0, Lcom/networkbench/agent/impl/plugin/b/a;->s:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/plugin/b/a;->s:Lcom/networkbench/agent/impl/plugin/f/j;

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
