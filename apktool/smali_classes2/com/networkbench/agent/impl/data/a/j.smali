.class public Lcom/networkbench/agent/impl/data/a/j;
.super Lcom/networkbench/agent/impl/data/a/c;
.source "SourceFile"


# instance fields
.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/networkbench/agent/impl/data/a/o;

.field public g:Ljava/lang/String;

.field h:J

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/j;->e:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/j;->i:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/j;->o:I

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/j;->p:I

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    int-to-long v5, p3

    iput-wide v5, p0, Lcom/networkbench/agent/impl/data/a/c;->c:J

    iput-object p4, p0, Lcom/networkbench/agent/impl/data/a/j;->g:Ljava/lang/String;

    new-instance v2, Lcom/networkbench/agent/impl/data/a/o;

    move-wide v3, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/data/a/o;-><init>(JJLjava/lang/String;)V

    iput-object v2, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/j;->l:I

    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {p1, p2, p3, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->q()Lcom/networkbench/agent/impl/k/b;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/c;->d:Lcom/networkbench/agent/impl/k/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/c;->b:Ljava/lang/String;

    iput-object p0, p1, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    return-void
.end method

.method private c(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private d(J)V
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slowUserAction threshold:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object p2, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    :cond_0
    return-void
.end method

.method private e()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    const-string v2, "mem"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "stacks"

    invoke-virtual {p0, p0}, Lcom/networkbench/agent/impl/data/a/j;->a(Lcom/networkbench/agent/impl/data/a/j;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private f()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/j;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    return-wide v0
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->m:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "countAvailability  ActionFailureThreshold: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getActionFailureThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->n:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/j;->m:I

    div-int/2addr v0, v1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getActionFailureThreshold()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/j;->q:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private j()Z
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v2, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v2, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget p0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private k()I
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->a:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    return v0

    :cond_1
    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    return v0

    :cond_2
    iget v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    return v0

    :cond_3
    iget p0, p0, Lcom/networkbench/agent/impl/data/a/j;->k:I

    return p0
.end method

.method private l()J
    .locals 6

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/o;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "contentTime:"

    const-string v4, ", endTime:"

    invoke-static {v0, v1, v3, v4}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/c;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", blockTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", startTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    return-wide v0
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    .line 130
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 131
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 132
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p1, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/a/j;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v2, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v3, p1, Lcom/networkbench/agent/impl/data/a/c;->c:J

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->f()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p1, p1, Lcom/networkbench/agent/impl/data/a/j;->g:Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p1, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    const-wide/16 v2, 0x2

    const-string p1, "main"

    invoke-virtual {p0, v2, v3, p1}, Lcom/networkbench/agent/impl/data/a/j;->a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/a/o;->a(Lcom/networkbench/agent/impl/data/a/m;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v1, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v1
.end method

.method public a(J)V
    .locals 2

    .line 125
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/c;->c:J

    .line 126
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/agent/impl/data/a/o;->a(J)V

    .line 127
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/j;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/o;->a()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->e()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/j;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    iget v2, v1, Lcom/networkbench/agent/impl/data/a/o;->e:I

    iput v2, p0, Lcom/networkbench/agent/impl/data/a/j;->m:I

    iget v2, v1, Lcom/networkbench/agent/impl/data/a/o;->c:I

    iput v2, p0, Lcom/networkbench/agent/impl/data/a/j;->n:I

    iget v2, v1, Lcom/networkbench/agent/impl/data/a/o;->d:I

    iput v2, p0, Lcom/networkbench/agent/impl/data/a/j;->o:I

    iget v1, v1, Lcom/networkbench/agent/impl/data/a/o;->b:I

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/j;->p:I

    :cond_0
    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/networkbench/agent/impl/data/a/j;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nbsSlowStartTraceString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/a/j;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->g()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->l()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/data/a/j;->d(J)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v4, p0, Lcom/networkbench/agent/impl/data/a/j;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/j;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/j;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/j;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/j;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/j;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    const-string v2, ""

    if-eqz v1, :cond_1

    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/a/j;->f:Lcom/networkbench/agent/impl/data/a/o;

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/a/o;->g:Lcom/networkbench/com/google/gson/JsonArray;

    const-string v4, "reqs"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/j;->g:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/networkbench/agent/impl/data/a/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/j;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v4, "tag"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/j;->e:Ljava/util/Map;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v4, "cust"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/c;->d:Lcom/networkbench/agent/impl/k/b;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "#"

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-ne v1, v0, :cond_1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public b(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/j;->h:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/j;->j:J

    return-wide v0
.end method
