.class public Lcom/networkbench/agent/impl/plugin/d/b;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/d/b$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/networkbench/agent/impl/c/e; = null

.field private static final d:I = 0x1e

.field private static t:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field b:Lorg/json/JSONObject;

.field c:Lcom/networkbench/agent/impl/plugin/d/c;

.field private e:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/d/b;->t:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    sget-object v0, Lcom/networkbench/agent/impl/plugin/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MTRPlugin init argumentsJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/b;->a(Ljava/util/Map;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/d/b;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/d/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/d/b;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I

    return p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to resolve host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is unreachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "No network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "unreachable to target host"

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "fail to resolve address"

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/d/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/d/b;)Lcom/networkbench/agent/impl/plugin/f/i;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/d/b$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/plugin/d/b$a;-><init>(Lcom/networkbench/agent/impl/plugin/d/b;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

    const-string v0, ""

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->b:Lorg/json/JSONObject;

    const-string v2, "host"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x1e

    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->b:Lorg/json/JSONObject;

    const-string v2, "count"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I

    if-gtz v1, :cond_1

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I

    :cond_1
    iget v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    iput v2, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->e:I

    :cond_2
    :goto_1
    const/16 v0, 0x3c

    :try_start_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->b:Lorg/json/JSONObject;

    const-string v2, "execFrequency"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I

    :goto_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    const-string v1, "$host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "hostName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    :cond_3
    :goto_3
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 9

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    const-string v2, "data"

    const-string v4, "dnsserver"

    const-string v5, "ip"

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/d/c$b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/d/c$b;->a:Ljava/lang/String;

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez v1, :cond_1

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/plugin/d/c$b;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c$b;->c:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/plugin/d/c$b;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/plugin/d/c$b;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c$b;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/plugin/d/c$a;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    iput-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    :cond_2
    new-instance v5, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v7, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v3

    :cond_3
    invoke-direct {v5, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->c:Lcom/networkbench/agent/impl/plugin/d/c;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c;->a:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/networkbench/agent/impl/plugin/d/c$b;

    iget-object v5, v5, Lcom/networkbench/agent/impl/plugin/d/c$b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/plugin/d/c$a;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/plugin/d/c$a;->a()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v6, v6, Lcom/networkbench/agent/impl/plugin/d/c$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2, v4}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v3, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v1, "unreachable to target host"

    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/d/b;->r:Ljava/lang/String;

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, v5

    :goto_2
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_3
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/d/b;->s:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public b()Z
    .locals 3

    .line 69
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 70
    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/b;->t:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 71
    sget-object p0, Lcom/networkbench/agent/impl/plugin/d/b;->t:Lcom/networkbench/agent/impl/plugin/f/j;

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
