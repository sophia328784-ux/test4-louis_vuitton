.class public Lcom/networkbench/agent/impl/data/a/o;
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

.field f:J

.field public g:Lcom/networkbench/com/google/gson/JsonArray;

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/Vector;

    invoke-direct {p5}, Ljava/util/Vector;-><init>()V

    iput-object p5, p0, Lcom/networkbench/agent/impl/data/a/o;->a:Ljava/util/List;

    new-instance p5, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p5}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object p5, p0, Lcom/networkbench/agent/impl/data/a/o;->g:Lcom/networkbench/com/google/gson/JsonArray;

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    iput-wide p3, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    return-void
.end method

.method private b(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    .line 812
    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private c(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p1

    .line 158
    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private c(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/data/a/o;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/data/a/o;->b(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/a/o;->d(Lcom/networkbench/agent/impl/d/b/a;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/data/a/o;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p1, Lcom/networkbench/agent/impl/d/b/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->NETWORK:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->ASYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-wide v1, p1, Lcom/networkbench/agent/impl/d/b/a;->c:J

    iget-object v3, p1, Lcom/networkbench/agent/impl/d/b/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/networkbench/agent/impl/data/a/o;->a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/a/o;->b(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method private d(Lcom/networkbench/agent/impl/d/b/a;)J
    .locals 4

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/a/a/b;->e()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 1

    .line 66
    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 67
    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 68
    new-instance p1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p1, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/data/a/m;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 6

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p1}, Lcom/networkbench/agent/impl/data/a/m;->c(Lcom/networkbench/agent/impl/data/a/m;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :cond_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/data/a/o;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/d/b/a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/data/a/o;->c(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/o;->e:I

    .line 70
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/o;->c:I

    .line 71
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/o;->d:I

    .line 72
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/o;->b:I

    .line 73
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/a/o;->g:Lcom/networkbench/com/google/gson/JsonArray;

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/o;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 811
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    return-wide v0
.end method

.method public b(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 13

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/v;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/a/a/b;->f(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/d/b/a;->a(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    const/16 v2, 0x258

    if-gt v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->u()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/o;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/o;->d:I

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/o;->c:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, p0, Lcom/networkbench/agent/impl/data/a/o;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/o;->b:I

    iget v1, p0, Lcom/networkbench/agent/impl/data/a/o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/o;->c:I

    :cond_4
    :goto_1
    iget v1, p0, Lcom/networkbench/agent/impl/data/a/o;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/a/o;->e:I

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/a/a/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "httpStatus"

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "errorCode"

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->w()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "bytesSent"

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->x()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "bytesReceived"

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "dns"

    invoke-virtual {v0, v3, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "conn"

    invoke-virtual {v0, v4, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v4, "fp"

    invoke-virtual {v0, v4, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/networkbench/agent/impl/a/a/b;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v5, "ssl"

    invoke-virtual {v0, v5, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    if-nez v1, :cond_5

    move-object v1, v6

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v7, "txData"

    invoke-virtual {v0, v7, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    const-string v7, "offset"

    new-instance v8, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/networkbench/agent/impl/a/a/b;->B()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v7, v8}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ""

    if-nez v8, :cond_6

    move-object v8, v9

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "param"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v7, v9}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_7
    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "method"

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/a/a/b;->q()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "hc"

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "ec"

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/a/a/b;->u()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "du"

    new-instance v7, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/a/a/b;->C()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v7}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/a/a/b;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v3, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "tcp"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/networkbench/agent/impl/a/a/b;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v5, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v4, v2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "rp"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "lq"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "bs"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->w()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "br"

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->x()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "tx"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v3, v6

    goto :goto_5

    :cond_8
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->y()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "txDataNew"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v3, v6

    goto :goto_6

    :cond_9
    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v2, "txn"

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/a;->c()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->z()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v1, v2, v6}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/o;->g:Lcom/networkbench/com/google/gson/JsonArray;

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_8
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "completeSegmentParams has an error "

    invoke-interface {p1, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public c()J
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/d/b/a;

    .line 152
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/d/b;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 153
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/data/a/o;->d(Lcom/networkbench/agent/impl/d/b/a;)J

    move-result-wide v1

    .line 154
    iget-wide v3, p0, Lcom/networkbench/agent/impl/data/a/o;->f:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 155
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/o;->f:J

    goto :goto_0

    .line 156
    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "networkExitTimeStamp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/o;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/o;->f:J

    return-wide v0
.end method

.method public d()J
    .locals 4

    .line 38
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/o;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    sub-long/2addr v0, v2

    .line 39
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/o;->e()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/o;->e()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public e()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/o;->i:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/o;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
