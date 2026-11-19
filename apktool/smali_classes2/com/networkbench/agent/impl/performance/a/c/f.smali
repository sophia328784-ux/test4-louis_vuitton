.class public Lcom/networkbench/agent/impl/performance/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cpuMetrics"

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->c:D

    iput-wide p4, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->d:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->f:J

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/performance/a/b;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/performance/a/b;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    new-instance v1, Lcom/networkbench/agent/impl/performance/a/c/c;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/a/c/c;-><init>()V

    const-string v2, "cpu.usage_rate"

    iput-object v2, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->a:Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->b:D

    const-string v2, "thread.name"

    iput-object v2, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->e:Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->f:J

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/a/c/c;->d:J

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/performance/a/b;->a(Lcom/networkbench/agent/impl/performance/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/a/b;)V
    .locals 6

    .line 109
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->c:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const-string v1, "%.4f"

    if-lez v0, :cond_0

    .line 110
    new-instance v0, Lcom/networkbench/agent/impl/performance/a/c/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/c/c;-><init>()V

    .line 111
    const-string v4, "cpu.usage_rate"

    iput-object v4, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->c:Ljava/lang/String;

    .line 112
    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->b:D

    .line 113
    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->f:J

    iput-wide v4, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->d:J

    .line 114
    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->a:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/performance/a/b;->a(Lcom/networkbench/agent/impl/performance/a;)V

    .line 116
    :cond_0
    iget-wide v4, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->d:D

    cmpl-double v0, v4, v2

    if-lez v0, :cond_1

    .line 117
    new-instance v0, Lcom/networkbench/agent/impl/performance/a/c/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/c/c;-><init>()V

    .line 118
    const-string v2, "cpu.usage_speed"

    iput-object v2, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->c:Ljava/lang/String;

    .line 119
    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->b:D

    .line 120
    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->f:J

    iput-wide v1, v0, Lcom/networkbench/agent/impl/performance/a/c/c;->d:J

    .line 121
    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/performance/a/b;->a(Lcom/networkbench/agent/impl/performance/a;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->e:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/performance/a/c/f;->a(Lcom/networkbench/agent/impl/performance/a/b;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/LinkedList;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c/f;->e:Ljava/util/List;

    return-void
.end method
