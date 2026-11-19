.class public Lcom/networkbench/agent/impl/data/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/d/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/f;->a:Ljava/util/List;

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    return-void
.end method

.method private b(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    .line 492
    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private c(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private c(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/a/f;->b(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/networkbench/agent/impl/d/b/a;)J
    .locals 2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private d()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/f;->e()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0
.end method

.method private e()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 7

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/d/b/a;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/networkbench/agent/impl/data/a/f;->g:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/data/a/f;->c(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    return-wide v0
.end method

.method public a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p1, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/f;->g:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/f;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 491
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/f;->g:J

    return-wide v0
.end method

.method public b(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    const/16 v2, 0x258

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->u()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/f;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/f;->d:I

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/f;->c:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p0, Lcom/networkbench/agent/impl/data/a/f;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/f;->b:I

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/f;->c:I

    :cond_3
    :goto_1
    iget v1, p0, Lcom/networkbench/agent/impl/data/a/f;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/f;->e:I

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/a/a/b;->B()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/f;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p0, "offset"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "param"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->q()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "hc"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "ec"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "du"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "dns"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "tcp"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "ssl"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "fp"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "rp"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "lq"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "bs"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->x()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "br"

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object p0, v1

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_3
    const-string v2, "tx"

    invoke-virtual {v0, v2, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_4
    const-string p0, "txn"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public c()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v1, "reqs"

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/f;->d()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method
