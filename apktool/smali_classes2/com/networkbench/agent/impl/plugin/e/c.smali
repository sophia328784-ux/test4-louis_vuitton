.class public Lcom/networkbench/agent/impl/plugin/e/c;
.super Lcom/networkbench/agent/impl/plugin/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/e/c$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x3

.field private static u:Lcom/networkbench/agent/impl/plugin/f/j;


# instance fields
.field a:Lorg/json/JSONObject;

.field private b:I

.field private c:Lcom/networkbench/agent/impl/plugin/e/b;

.field private d:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/f/j;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/e/c;->u:Lcom/networkbench/agent/impl/plugin/f/j;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 3

    sget-object v0, Lcom/networkbench/agent/impl/harvest/type/HarvestableType;->OBJECT:Lcom/networkbench/agent/impl/harvest/type/HarvestableType;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/plugin/h;-><init>(Lcom/networkbench/agent/impl/harvest/type/HarvestableType;Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    const-string v0, "PingPlugin \u6ce8\u518cping\u76d1\u542c :"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/plugin/e/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/e/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->d:Ljava/lang/String;

    const/16 v0, 0x38

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

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

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/e/c;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/e/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->t:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to resolve host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is unreachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string p0, "timeout"

    return-object p0

    .line 145
    :cond_1
    const-string v0, "No network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object p0

    .line 146
    :cond_2
    :goto_0
    const-string p0, "fail to resolve address"

    return-object p0

    .line 147
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/e/c;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

    return p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/e/c;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/plugin/e/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/e/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    return-object p0
.end method

.method public static synthetic e(Lcom/networkbench/agent/impl/plugin/e/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/networkbench/agent/impl/plugin/e/c;)Lcom/networkbench/agent/impl/plugin/f/i;
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

.method public static synthetic l()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static synthetic m()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method private n()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->g()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error getPingData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    return-object p0
.end method

.method private o()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->d()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private p()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->c()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private q()F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private r()F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private s()F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private t()D
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->m()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "0"

    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0

    :catchall_0
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private u()F
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->c:Lcom/networkbench/agent/impl/plugin/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/e/b;->h()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/e/c$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/plugin/e/c$a;-><init>(Lcom/networkbench/agent/impl/plugin/e/c;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
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

    sget-object v1, Lcom/networkbench/agent/impl/plugin/h;->f:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action.argumentsJson"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->a:Lorg/json/JSONObject;

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
    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->a:Lorg/json/JSONObject;

    const-string v2, "count"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    iput v2, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

    :cond_1
    iget v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

    if-gtz v1, :cond_2

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->b:I

    :cond_2
    :goto_1
    const/16 v0, 0x38

    :try_start_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->a:Lorg/json/JSONObject;

    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    :cond_3
    iget v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    const v2, 0xffe3

    if-le v1, v2, :cond_4

    iput v2, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/e/c;->r:I

    :cond_4
    :goto_2
    const/16 v0, 0x3c

    :try_start_3
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/e/c;->a:Lorg/json/JSONObject;

    const-string v2, "execFrequency"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    iput v0, p0, Lcom/networkbench/agent/impl/plugin/h;->p:I

    :goto_3
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    const-string v1, "$host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "hostName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    :cond_5
    :goto_4
    return-void
.end method

.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 4

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

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/e/c;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "ip"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/e/c;->s:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "dnsserver"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "successCount"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->p()I

    move-result v2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->o()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "failCount"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->u()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "sumTm"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->s()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->q()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "avg"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->r()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->t()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "stddev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/e/c;->t:Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/plugin/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "data"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/e/c;->n()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

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

    sget-object p0, Lcom/networkbench/agent/impl/plugin/e/c;->u:Lcom/networkbench/agent/impl/plugin/f/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/plugin/f/j;->a(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/plugin/e/c;->u:Lcom/networkbench/agent/impl/plugin/f/j;

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
