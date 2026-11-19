.class public Lcom/networkbench/agent/impl/plugin/g/a;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/g/a$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x1

.field private static final r:Ljava/lang/String; = "80"

.field private static y:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field a:Lorg/json/JSONObject;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/g/a;->y:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->w:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/g/a;F)F
    .locals 0

    .line 128
    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->v:F

    return p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/g/a;I)I
    .locals 0

    .line 123
    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->t:I

    return p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/g/a;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/g/a;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 129
    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "getErrrData raw errorDesc:"

    .line 130
    invoke-static {v1, p0, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    .line 131
    const-string v0, ""

    if-eqz p0, :cond_5

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown host"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unable to resolve host"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is unreachable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "timeout"

    if-nez v1, :cond_3

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "failed to connect to"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    const-string v1, "No network"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_3
    :goto_0
    return-object v2

    .line 138
    :cond_4
    :goto_1
    const-string p0, "fail to resolve address"

    return-object p0

    :cond_5
    return-object v0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/g/a;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I

    return p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/g/a;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->u:I

    return p1
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->x:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/g/a;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->b:I

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/g/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/networkbench/agent/impl/plugin/g/a;)Lcom/networkbench/agent/impl/plugin/f/i;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->q:Lcom/networkbench/agent/impl/plugin/f/i;

    return-object p0
.end method

.method public static synthetic h()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static synthetic i()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static synthetic j()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static synthetic k()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/g/a$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/plugin/g/a$a;-><init>(Lcom/networkbench/agent/impl/plugin/g/a;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

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

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->a:Lorg/json/JSONObject;

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
    const/16 v0, 0x3c

    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->a:Lorg/json/JSONObject;

    const-string v2, "execFrequency"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I

    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->a:Lorg/json/JSONObject;

    const-string v2, "repeat"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->b:I

    :goto_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    const-string v1, "$host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hostName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->a:Lorg/json/JSONObject;

    const-string v1, "port"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$port"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->a:Lorg/json/JSONObject;

    const-string v0, "80"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    const/16 p1, 0x50

    iput p1, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I

    :cond_3
    :goto_3
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v2, "host"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v4, v5

    :cond_0
    :try_start_1
    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "port"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->s:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "ip"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v5

    :cond_1
    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "dnsserver"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->x:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v4, v5

    :cond_2
    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "cname"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->d:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v4

    :goto_0
    invoke-direct {v3, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "successCount"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "failCount"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "sumTm"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/plugin/g/a;->v:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "error"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a;->w:Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string p0, "result"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tcpPlugin asJsonObject error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-object v0
.end method

.method public b()Z
    .locals 3

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/h;->o:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/plugin/g/a;->y:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/plugin/g/a;->y:Lcom/networkbench/agent/impl/plugin/f/j;

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
